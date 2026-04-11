.class public Lcom/termux/x11/utils/GLUtility;
.super Ljava/lang/Object;
.source "GLUtility.java"


# static fields
.field private static final SIMPLE_FRAGMENT_EXT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nuniform samplerExternalOES u_Texture;\nvarying vec2 v_TexCoord;\n\nvoid main(void){\n    gl_FragColor = texture2D(u_Texture, v_TexCoord);\n}"

.field private static final SIMPLE_FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nuniform sampler2D u_Texture;\nvarying vec2 v_TexCoord;\n\nvoid main(void){\n    gl_FragColor = texture2D(u_Texture, v_TexCoord);\n}"

.field private static final SIMPLE_VERTEX_SHADER:Ljava/lang/String; = "precision highp float;\nattribute vec3 a_Position;\nattribute vec2 a_TexCoord;\nvarying vec2 v_TexCoord;\n\nvoid main(void)\n{\n    gl_Position = vec4(a_Position, 1.0);\n    v_TexCoord = a_TexCoord;\n}"

.field private static final TAG:Ljava/lang/String; = "GLUtility"

.field private static lastAspect:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attribPointer(ILjava/lang/String;[FI)V
    .locals 7
    .param p0, "program"    # I
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "data"    # [F
    .param p3, "stride"    # I

    .line 98
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    .line 99
    .local v6, "handle":I
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 100
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x4

    .line 106
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 110
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    .line 100
    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, v6

    move v1, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 112
    return-void
.end method

.method private static compileShader(ILjava/lang/String;)I
    .locals 4
    .param p0, "shaderType"    # I
    .param p1, "shaderSource"    # Ljava/lang/String;

    .line 115
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 116
    .local v0, "shader":I
    if-eqz v0, :cond_0

    .line 117
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 118
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 120
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 121
    .local v1, "compileStatus":[I
    const v2, 0x8b81

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 122
    aget v2, v1, v3

    if-nez v2, :cond_0

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error compiling shader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GLUtility"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 125
    const/4 v0, 0x0

    .line 128
    .end local v1    # "compileStatus":[I
    :cond_0
    return v0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "vertexShader"    # Ljava/lang/String;
    .param p1, "fragmentShader"    # Ljava/lang/String;

    .line 55
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 56
    .local v0, "program":I
    const v1, 0x8b31

    invoke-static {v1, p0}, Lcom/termux/x11/utils/GLUtility;->compileShader(ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 57
    const v1, 0x8b30

    invoke-static {v1, p1}, Lcom/termux/x11/utils/GLUtility;->compileShader(ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 58
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 59
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 60
    return v0
.end method

.method public static createProgram(Z)I
    .locals 2
    .param p0, "externalTexture"    # Z

    .line 47
    const-string v0, "precision highp float;\nattribute vec3 a_Position;\nattribute vec2 a_TexCoord;\nvarying vec2 v_TexCoord;\n\nvoid main(void)\n{\n    gl_Position = vec4(a_Position, 1.0);\n    v_TexCoord = a_TexCoord;\n}"

    if-eqz p0, :cond_0

    .line 48
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nuniform samplerExternalOES u_Texture;\nvarying vec2 v_TexCoord;\n\nvoid main(void){\n    gl_FragColor = texture2D(u_Texture, v_TexCoord);\n}"

    invoke-static {v0, v1}, Lcom/termux/x11/utils/GLUtility;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 50
    :cond_0
    const-string v1, "precision highp float;\nuniform sampler2D u_Texture;\nvarying vec2 v_TexCoord;\n\nvoid main(void){\n    gl_FragColor = texture2D(u_Texture, v_TexCoord);\n}"

    invoke-static {v0, v1}, Lcom/termux/x11/utils/GLUtility;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static createTexture(I)I
    .locals 4
    .param p0, "type"    # I

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 65
    .local v0, "texture":[I
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 66
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 67
    aget v1, v0, v2

    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 68
    const/16 v1, 0x2801

    const/16 v3, 0x2601

    invoke-static {p0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 69
    const/16 v1, 0x2800

    invoke-static {p0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 70
    aget v1, v0, v2

    return v1
.end method

.method public static drawTexture(IIIF)V
    .locals 11
    .param p0, "type"    # I
    .param p1, "program"    # I
    .param p2, "texture"    # I
    .param p3, "aspect"    # F

    .line 74
    sget v0, Lcom/termux/x11/utils/GLUtility;->lastAspect:F

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 76
    neg-float v0, p3

    neg-float v1, p3

    neg-float v5, p3

    const/16 v6, 0xc

    new-array v7, v6, [F

    const/high16 v8, -0x40800000    # -1.0f

    aput v8, v7, v3

    const/4 v9, 0x1

    aput p3, v7, v9

    const/4 v9, 0x2

    aput v8, v7, v9

    const/4 v10, 0x3

    aput v0, v7, v10

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v7, v4

    const/4 v10, 0x5

    aput v1, v7, v10

    aput v8, v7, v2

    const/4 v1, 0x7

    aput p3, v7, v1

    const/16 v1, 0x8

    aput v0, v7, v1

    const/16 v1, 0x9

    aput v5, v7, v1

    const/16 v1, 0xa

    aput v0, v7, v1

    const/16 v0, 0xb

    aput p3, v7, v0

    move-object v0, v7

    .line 80
    .local v0, "vertices":[F
    new-array v1, v6, [F

    fill-array-data v1, :array_0

    .line 85
    .local v1, "uvs":[F
    const-string v5, "a_Position"

    invoke-static {p1, v5, v0, v9}, Lcom/termux/x11/utils/GLUtility;->attribPointer(ILjava/lang/String;[FI)V

    .line 86
    const-string v5, "a_TexCoord"

    invoke-static {p1, v5, v1, v9}, Lcom/termux/x11/utils/GLUtility;->attribPointer(ILjava/lang/String;[FI)V

    .line 88
    sput p3, Lcom/termux/x11/utils/GLUtility;->lastAspect:F

    .line 91
    .end local v0    # "vertices":[F
    .end local v1    # "uvs":[F
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 92
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 93
    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 94
    invoke-static {v4, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 95
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

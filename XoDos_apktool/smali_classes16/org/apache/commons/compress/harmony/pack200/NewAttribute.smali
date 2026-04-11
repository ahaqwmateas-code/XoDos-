.class public Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
.super Lorg/objectweb/asm/Attribute;
.source "NewAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/NewAttribute$StripAttribute;,
        Lorg/apache/commons/compress/harmony/pack200/NewAttribute$PassAttribute;,
        Lorg/apache/commons/compress/harmony/pack200/NewAttribute$ErrorAttribute;
    }
.end annotation


# instance fields
.field private buf:[C

.field private classReader:Lorg/objectweb/asm/ClassReader;

.field private codeOff:I

.field private contents:[B

.field private contextClass:Z

.field private contextCode:Z

.field private contextField:Z

.field private contextMethod:Z

.field private labels:[Lorg/objectweb/asm/Label;

.field private final layout:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "layout"    # Ljava/lang/String;
    .param p3, "context"    # I

    .line 110
    invoke-direct {p0, p1}, Lorg/objectweb/asm/Attribute;-><init>(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextClass:Z

    .line 85
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextMethod:Z

    .line 86
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextField:Z

    .line 87
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextCode:Z

    .line 111
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->layout:Ljava/lang/String;

    .line 112
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->addContext(I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/ClassReader;Ljava/lang/String;Ljava/lang/String;[B[CI[Lorg/objectweb/asm/Label;)V
    .locals 1
    .param p1, "classReader"    # Lorg/objectweb/asm/ClassReader;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "layout"    # Ljava/lang/String;
    .param p4, "contents"    # [B
    .param p5, "buf"    # [C
    .param p6, "codeOff"    # I
    .param p7, "labels"    # [Lorg/objectweb/asm/Label;

    .line 100
    invoke-direct {p0, p2}, Lorg/objectweb/asm/Attribute;-><init>(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextClass:Z

    .line 85
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextMethod:Z

    .line 86
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextField:Z

    .line 87
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextCode:Z

    .line 101
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->classReader:Lorg/objectweb/asm/ClassReader;

    .line 102
    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contents:[B

    .line 103
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->layout:Ljava/lang/String;

    .line 104
    iput p6, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->codeOff:I

    .line 105
    iput-object p7, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->labels:[Lorg/objectweb/asm/Label;

    .line 106
    iput-object p5, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->buf:[C

    .line 107
    return-void
.end method


# virtual methods
.method public addContext(I)V
    .locals 1
    .param p1, "context"    # I

    .line 116
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextCode:Z

    goto :goto_0

    .line 121
    :pswitch_1
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextMethod:Z

    .line 122
    goto :goto_0

    .line 124
    :pswitch_2
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextField:Z

    .line 125
    goto :goto_0

    .line 118
    :pswitch_3
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextClass:Z

    .line 119
    nop

    .line 130
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBytes()[B
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contents:[B

    return-object v0
.end method

.method public getLabel(I)Lorg/objectweb/asm/Label;
    .locals 1
    .param p1, "index"    # I

    .line 137
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->labels:[Lorg/objectweb/asm/Label;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLayout()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->layout:Ljava/lang/String;

    return-object v0
.end method

.method public isCodeAttribute()Z
    .locals 2

    .line 146
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->codeOff:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContextClass()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextClass:Z

    return v0
.end method

.method public isContextCode()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextCode:Z

    return v0
.end method

.method public isContextField()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextField:Z

    return v0
.end method

.method public isContextMethod()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextMethod:Z

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public isUnknown(I)Z
    .locals 1
    .param p1, "context"    # I

    .line 171
    packed-switch p1, :pswitch_data_0

    .line 181
    const/4 v0, 0x0

    return v0

    .line 179
    :pswitch_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextCode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 175
    :pswitch_1
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextMethod:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 177
    :pswitch_2
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextField:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 173
    :pswitch_3
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->contextClass:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected read(Lorg/objectweb/asm/ClassReader;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;
    .locals 14
    .param p1, "cr"    # Lorg/objectweb/asm/ClassReader;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "buf"    # [C
    .param p5, "codeOff"    # I
    .param p6, "labels"    # [Lorg/objectweb/asm/Label;

    .line 187
    move-object v0, p0

    move/from16 v1, p3

    new-array v10, v1, [B

    .line 188
    .local v10, "attributeContents":[B
    move-object v11, p1

    iget-object v2, v11, Lorg/objectweb/asm/ClassReader;->b:[B

    const/4 v3, 0x0

    move/from16 v12, p2

    invoke-static {v2, v12, v10, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    new-instance v13, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->layout:Ljava/lang/String;

    move-object v2, v13

    move-object v3, p1

    move-object v6, v10

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;-><init>(Lorg/objectweb/asm/ClassReader;Ljava/lang/String;Ljava/lang/String;[B[CI[Lorg/objectweb/asm/Label;)V

    return-object v13
.end method

.method public readClass(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 193
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->classReader:Lorg/objectweb/asm/ClassReader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->buf:[C

    invoke-virtual {v0, p1, v1}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readConst(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 197
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->classReader:Lorg/objectweb/asm/ClassReader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->buf:[C

    invoke-virtual {v0, p1, v1}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readUTF8(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 201
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->classReader:Lorg/objectweb/asm/ClassReader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->buf:[C

    invoke-virtual {v0, p1, v1}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

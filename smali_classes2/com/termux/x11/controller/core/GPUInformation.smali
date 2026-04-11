.class public abstract Lcom/termux/x11/controller/core/GPUInformation;
.super Ljava/lang/Object;
.source "GPUInformation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRenderer(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "gpu_renderer"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/termux/x11/controller/core/GPUInformation;->loadGPUInformation(Landroid/content/Context;)Landroidx/collection/ArrayMap;

    move-result-object v2

    .line 88
    .local v2, "gpuInfo":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "renderer"

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3
.end method

.method public static getVendor(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 92
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "gpu_vendor"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 96
    :cond_0
    invoke-static {p0}, Lcom/termux/x11/controller/core/GPUInformation;->loadGPUInformation(Landroid/content/Context;)Landroidx/collection/ArrayMap;

    move-result-object v2

    .line 97
    .local v2, "gpuInfo":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "vendor"

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 101
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "gpu_version"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 105
    :cond_0
    invoke-static {p0}, Lcom/termux/x11/controller/core/GPUInformation;->loadGPUInformation(Landroid/content/Context;)Landroidx/collection/ArrayMap;

    move-result-object v2

    .line 106
    .local v2, "gpuInfo":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "version"

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3
.end method

.method public static isAdreno6xx(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 110
    invoke-static {p0}, Lcom/termux/x11/controller/core/GPUInformation;->getRenderer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*adreno[^6]+6[0-9]{2}.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$loadGPUInformation$0(Landroidx/collection/ArrayMap;Landroid/content/Context;Ljava/lang/Thread;)V
    .locals 15
    .param p0, "gpuInfo"    # Landroidx/collection/ArrayMap;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Ljava/lang/Thread;

    .line 28
    move-object v1, p0

    const/16 v0, 0xd

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 37
    .local v4, "attribList":[I
    const/4 v0, 0x1

    new-array v8, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 38
    .local v8, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v9, v0, [I

    .line 40
    .local v9, "configCounts":[I
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljavax/microedition/khronos/egl/EGL10;

    .line 41
    .local v10, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v10, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v11

    .line 43
    .local v11, "eglDisplay":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v0, 0x2

    new-array v12, v0, [I

    .line 44
    .local v12, "version":[I
    invoke-interface {v10, v11, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 45
    const/4 v6, 0x1

    move-object v2, v10

    move-object v3, v11

    move-object v5, v8

    move-object v7, v9

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 47
    const/16 v2, 0x3098

    const/16 v3, 0x3038

    filled-new-array {v2, v0, v3}, [I

    move-result-object v0

    move-object v2, v0

    .line 48
    .end local v4    # "attribList":[I
    .local v2, "attribList":[I
    const/4 v0, 0x0

    aget-object v0, v8, v0

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v10, v11, v0, v3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    .line 50
    .local v3, "eglContext":Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v10, v11, v0, v4, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 52
    invoke-virtual {v3}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljavax/microedition/khronos/opengles/GL10;

    .line 53
    .local v4, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/16 v0, 0x1f01

    invoke-interface {v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-static {v0, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "gpuRenderer":Ljava/lang/String;
    const/16 v0, 0x1f00

    invoke-interface {v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-static {v0, v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, "gpuVendor":Ljava/lang/String;
    const/16 v0, 0x1f02

    invoke-interface {v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    invoke-static {v0, v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "gpuVersion":Ljava/lang/String;
    const-string v0, "renderer"

    invoke-virtual {p0, v0, v5}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "vendor"

    invoke-virtual {p0, v0, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "version"

    invoke-virtual {p0, v0, v7}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static/range {p1 .. p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 62
    .local v13, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v14, "gpu_renderer"

    .line 63
    invoke-interface {v0, v14, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v14, "gpu_vendor"

    .line 64
    invoke-interface {v0, v14, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v14, "gpu_version"

    .line 65
    invoke-interface {v0, v14, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    monitor-enter p2

    .line 69
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->notify()V

    .line 70
    monitor-exit p2

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 4
        0x3033
        0x1
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3038
    .end array-data
.end method

.method private static loadGPUInformation(Landroid/content/Context;)Landroidx/collection/ArrayMap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 22
    .local v0, "thread":Ljava/lang/Thread;
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 23
    .local v1, "gpuInfo":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "renderer"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v2, "vendor"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v2, "version"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/termux/x11/controller/core/GPUInformation$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p0, v0}, Lcom/termux/x11/controller/core/GPUInformation$$ExternalSyntheticLambda0;-><init>(Landroidx/collection/ArrayMap;Landroid/content/Context;Ljava/lang/Thread;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 71
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 73
    monitor-enter v0

    .line 75
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    goto :goto_1

    .line 78
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 77
    :catch_0
    move-exception v2

    goto :goto_0

    .line 78
    :goto_1
    :try_start_1
    monitor-exit v0

    .line 79
    return-object v1

    .line 78
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

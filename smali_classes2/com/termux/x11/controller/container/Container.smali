.class public Lcom/termux/x11/controller/container/Container;
.super Ljava/lang/Object;
.source "Container.java"


# static fields
.field public static final DEFAULT_AUDIO_DRIVER:Ljava/lang/String; = "alsa"

.field public static final DEFAULT_DRIVES:Ljava/lang/String;

.field public static final DEFAULT_DXWRAPPER:Ljava/lang/String; = "wined3d"

.field public static final DEFAULT_ENV_VARS:Ljava/lang/String; = "ZINK_DESCRIPTORS=lazy ZINK_CONTEXT_THREADED=true ZINK_DEBUG=compact MESA_SHADER_CACHE_DISABLE=false MESA_SHADER_CACHE_MAX_SIZE=512MB mesa_glthread=true WINEESYNC=1"

.field public static final DEFAULT_GRAPHICS_DRIVER:Ljava/lang/String; = "turnip"

.field public static final DEFAULT_SCREEN_SIZE:Ljava/lang/String; = "800x600"

.field public static final DEFAULT_WINCOMPONENTS:Ljava/lang/String; = "direct3d=1,directsound=1,directmusic=0,directshow=0,directplay=0,vcrun2010=1"

.field public static final FALLBACK_WINCOMPONENTS:Ljava/lang/String; = "direct3d=0,directsound=0,directmusic=0,directshow=0,directplay=0,vcrun2010=0"

.field public static final MAX_DRIVE_LETTERS:B = 0x8t


# instance fields
.field private audioDriver:Ljava/lang/String;

.field private cpuList:Ljava/lang/String;

.field private desktopTheme:Ljava/lang/String;

.field private drives:Ljava/lang/String;

.field private dxwrapper:Ljava/lang/String;

.field private dxwrapperConfig:Ljava/lang/String;

.field private envVars:Ljava/lang/String;

.field private extraData:Lorg/json/JSONObject;

.field private graphicsDriver:Ljava/lang/String;

.field private graphicsDriverConfig:Ljava/lang/String;

.field public final id:I

.field private name:Ljava/lang/String;

.field private rootDir:Ljava/io/File;

.field private screenSize:Ljava/lang/String;

.field private showFPS:Z

.field private stopServicesOnStartup:Z

.field private wincomponents:Ljava/lang/String;

.field private wineVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "D:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "E:/data/data/com.winlator/storage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/x11/controller/container/Container;->DEFAULT_DRIVES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "800x600"

    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->screenSize:Ljava/lang/String;

    .line 30
    const-string v0, "ZINK_DESCRIPTORS=lazy ZINK_CONTEXT_THREADED=true ZINK_DEBUG=compact MESA_SHADER_CACHE_DISABLE=false MESA_SHADER_CACHE_MAX_SIZE=512MB mesa_glthread=true WINEESYNC=1"

    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->envVars:Ljava/lang/String;

    .line 31
    const-string v0, "turnip"

    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->graphicsDriver:Ljava/lang/String;

    .line 32
    const-string v0, "wined3d"

    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->dxwrapper:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->dxwrapperConfig:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    .line 35
    const-string v0, "direct3d=1,directsound=1,directmusic=0,directshow=0,directplay=0,vcrun2010=1"

    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->wincomponents:Ljava/lang/String;

    .line 36
    const-string v0, "alsa"

    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->audioDriver:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/termux/x11/controller/container/Container;->DEFAULT_DRIVES:Ljava/lang/String;

    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->drives:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/termux/x11/controller/core/WineInfo;->MAIN_WINE_VERSION:Lcom/termux/x11/controller/core/WineInfo;

    invoke-virtual {v0}, Lcom/termux/x11/controller/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->wineVersion:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/x11/controller/container/Container;->stopServicesOnStartup:Z

    .line 42
    sget-object v0, Lcom/termux/x11/controller/core/WineThemeManager;->DEFAULT_DESKTOP_THEME:Ljava/lang/String;

    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->desktopTheme:Ljava/lang/String;

    .line 47
    iput p1, p0, Lcom/termux/x11/controller/container/Container;->id:I

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Container-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static checkObsoleteOrMissingProperties(Lorg/json/JSONObject;)V
    .locals 14
    .param p0, "data"    # Lorg/json/JSONObject;

    .line 344
    const-string v0, ""

    const-string v1, "extraData"

    const-string v2, "envVars"

    const-string v3, "dxcomponents"

    const-string v4, "graphicsDriver"

    const-string v5, "dxwrapper"

    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "wincomponents"

    if-eqz v6, :cond_0

    .line 345
    :try_start_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 349
    :cond_0
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    .line 350
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "dxwrapper":Ljava/lang/String;
    const-string v8, "original-wined3d"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 352
    const-string v8, "wined3d"

    invoke-virtual {p0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 354
    :cond_1
    const-string v8, "d8vk-"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "dxvk-"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 355
    :cond_2
    const-string v8, "-"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    .end local v3    # "dxwrapper":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 360
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "graphicsDriver":Ljava/lang/String;
    const-string v5, "turnip-zink"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 362
    const-string v5, "turnip"

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 364
    :cond_4
    const-string v5, "llvmpipe"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 365
    const-string v5, "virgl"

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    .end local v3    # "graphicsDriver":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 370
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 371
    .local v1, "extraData":Lorg/json/JSONObject;
    const-string v3, "appVersion"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 372
    .local v3, "appVersion":I
    const/16 v4, 0xc

    if-ge v3, v4, :cond_8

    .line 373
    new-instance v4, Lcom/termux/x11/controller/core/EnvVars;

    const-string v5, "ZINK_DESCRIPTORS=lazy ZINK_CONTEXT_THREADED=true ZINK_DEBUG=compact MESA_SHADER_CACHE_DISABLE=false MESA_SHADER_CACHE_MAX_SIZE=512MB mesa_glthread=true WINEESYNC=1"

    invoke-direct {v4, v5}, Lcom/termux/x11/controller/core/EnvVars;-><init>(Ljava/lang/String;)V

    .line 374
    .local v4, "defaultEnvVars":Lcom/termux/x11/controller/core/EnvVars;
    new-instance v5, Lcom/termux/x11/controller/core/EnvVars;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/termux/x11/controller/core/EnvVars;-><init>(Ljava/lang/String;)V

    .line 375
    .local v5, "envVars":Lcom/termux/x11/controller/core/EnvVars;
    invoke-virtual {v4}, Lcom/termux/x11/controller/core/EnvVars;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v5, v9}, Lcom/termux/x11/controller/core/EnvVars;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v4, v9}, Lcom/termux/x11/controller/core/EnvVars;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/termux/x11/controller/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 376
    .end local v9    # "name":Ljava/lang/String;
    :cond_7
    invoke-virtual {v5}, Lcom/termux/x11/controller/core/EnvVars;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    .end local v1    # "extraData":Lorg/json/JSONObject;
    .end local v3    # "appVersion":I
    .end local v4    # "defaultEnvVars":Lcom/termux/x11/controller/core/EnvVars;
    .end local v5    # "envVars":Lcom/termux/x11/controller/core/EnvVars;
    :cond_8
    new-instance v1, Lcom/termux/x11/controller/core/KeyValueSet;

    const-string v2, "direct3d=1,directsound=1,directmusic=0,directshow=0,directplay=0,vcrun2010=1"

    invoke-direct {v1, v2}, Lcom/termux/x11/controller/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    .line 381
    .local v1, "wincomponents1":Lcom/termux/x11/controller/core/KeyValueSet;
    new-instance v2, Lcom/termux/x11/controller/core/KeyValueSet;

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/termux/x11/controller/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    .line 382
    .local v2, "wincomponents2":Lcom/termux/x11/controller/core/KeyValueSet;
    move-object v3, v0

    .line 384
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/termux/x11/controller/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 385
    .local v5, "wincomponent1":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v9, v5, v8

    .line 387
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/termux/x11/controller/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 388
    .local v11, "wincomponent2":[Ljava/lang/String;
    aget-object v12, v5, v6

    aget-object v13, v11, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 389
    aget-object v8, v11, v8

    move-object v9, v8

    .line 390
    goto :goto_5

    .line 392
    .end local v11    # "wincomponent2":[Ljava/lang/String;
    :cond_9
    goto :goto_4

    .line 394
    :cond_a
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, ","

    goto :goto_6

    :cond_b
    move-object v10, v0

    :goto_6
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v10, v5, v6

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 395
    .end local v5    # "wincomponent1":[Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    goto :goto_3

    .line 397
    :cond_c
    invoke-virtual {p0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 399
    nop

    .end local v1    # "wincomponents1":Lcom/termux/x11/controller/core/KeyValueSet;
    .end local v2    # "wincomponents2":Lcom/termux/x11/controller/core/KeyValueSet;
    .end local v3    # "result":Ljava/lang/String;
    goto :goto_7

    :catch_0
    move-exception v0

    .line 400
    :goto_7
    return-void
.end method

.method public static drivesIterator(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 3
    .param p0, "drives"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 230
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    .line 231
    .local v0, "index":[I
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 232
    .local v1, "item":[Ljava/lang/String;
    new-instance v2, Lcom/termux/x11/controller/container/Container$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p0}, Lcom/termux/x11/controller/container/Container$$ExternalSyntheticLambda0;-><init>([I[Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method static synthetic lambda$drivesIterator$0([I[Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p0, "index"    # [I
    .param p1, "item"    # [Ljava/lang/String;
    .param p2, "drives"    # Ljava/lang/String;

    .line 232
    new-instance v0, Lcom/termux/x11/controller/container/Container$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/termux/x11/controller/container/Container$1;-><init>([I[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public drivesIterator()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->drives:Ljava/lang/String;

    invoke-static {v0}, Lcom/termux/x11/controller/container/Container;->drivesIterator(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getAudioDriver()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->audioDriver:Ljava/lang/String;

    return-object v0
.end method

.method public getCPUList()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->cpuList:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigFile()Ljava/io/File;
    .locals 3

    .line 205
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/termux/x11/controller/container/Container;->rootDir:Ljava/io/File;

    const-string v2, ".container"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDXWrapper()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->dxwrapper:Ljava/lang/String;

    return-object v0
.end method

.method public getDXWrapperConfig()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->dxwrapperConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getDesktopTheme()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->desktopTheme:Ljava/lang/String;

    return-object v0
.end method

.method public getDrives()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->drives:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvVars()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->envVars:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 173
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/controller/container/Container;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->extraData:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Lorg/json/JSONException;
    return-object p2
.end method

.method public getGraphicsDriver()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->graphicsDriver:Ljava/lang/String;

    return-object v0
.end method

.method public getGraphicsDriverConfig()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getIconsDir(I)Ljava/io/File;
    .locals 4
    .param p1, "size"    # I

    .line 214
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/termux/x11/controller/container/Container;->rootDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".local/share/icons/hicolor/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/apps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRootDir()Ljava/io/File;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->rootDir:Ljava/io/File;

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->screenSize:Ljava/lang/String;

    return-object v0
.end method

.method public getStartMenuDir()Ljava/io/File;
    .locals 3

    .line 210
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/termux/x11/controller/container/Container;->rootDir:Ljava/io/File;

    const-string v2, ".wine/drive_c/ProgramData/Microsoft/Windows/Start Menu/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWinComponents()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->wincomponents:Ljava/lang/String;

    return-object v0
.end method

.method public getWineVersion()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->wineVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isShowFPS()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/termux/x11/controller/container/Container;->showFPS:Z

    return v0
.end method

.method public isStopServicesOnStartup()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/termux/x11/controller/container/Container;->stopServicesOnStartup:Z

    return v0
.end method

.method public loadData(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 279
    sget-object v0, Lcom/termux/x11/controller/core/WineInfo;->MAIN_WINE_VERSION:Lcom/termux/x11/controller/core/WineInfo;

    invoke-virtual {v0}, Lcom/termux/x11/controller/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->wineVersion:Ljava/lang/String;

    .line 280
    const-string v0, ""

    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->dxwrapperConfig:Ljava/lang/String;

    .line 281
    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    .line 282
    invoke-static {p1}, Lcom/termux/x11/controller/container/Container;->checkObsoleteOrMissingProperties(Lorg/json/JSONObject;)V

    .line 284
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 286
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v2, "showFPS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "dxwrapperConfig"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "graphicsDriverConfig"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "desktopTheme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "cpuList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "audioDriver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_7
    const-string v2, "dxwrapper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_8
    const-string v2, "extraData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto :goto_2

    :sswitch_9
    const-string v2, "screenSize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_a
    const-string v2, "wincomponents"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_b
    const-string v2, "drives"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_2

    :sswitch_c
    const-string v2, "stopServicesOnStartup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_2

    :sswitch_d
    const-string v2, "envVars"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_e
    const-string v2, "graphicsDriver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_f
    const-string v2, "wineVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 336
    :pswitch_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setDesktopTheme(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 333
    :pswitch_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setAudioDriver(Ljava/lang/String;)V

    .line 334
    goto/16 :goto_3

    .line 330
    :pswitch_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setWineVersion(Ljava/lang/String;)V

    .line 331
    goto/16 :goto_3

    .line 324
    :pswitch_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 325
    .local v2, "extraData":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/termux/x11/controller/container/Container;->checkObsoleteOrMissingProperties(Lorg/json/JSONObject;)V

    .line 326
    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setExtraData(Lorg/json/JSONObject;)V

    .line 327
    goto :goto_3

    .line 321
    .end local v2    # "extraData":Lorg/json/JSONObject;
    :pswitch_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setStopServicesOnStartup(Z)V

    .line 322
    goto :goto_3

    .line 318
    :pswitch_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setShowFPS(Z)V

    .line 319
    goto :goto_3

    .line 315
    :pswitch_6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setDrives(Ljava/lang/String;)V

    .line 316
    goto :goto_3

    .line 312
    :pswitch_7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setGraphicsDriverConfig(Ljava/lang/String;)V

    .line 313
    goto :goto_3

    .line 309
    :pswitch_8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setDXWrapperConfig(Ljava/lang/String;)V

    .line 310
    goto :goto_3

    .line 306
    :pswitch_9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setDXWrapper(Ljava/lang/String;)V

    .line 307
    goto :goto_3

    .line 303
    :pswitch_a
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setWinComponents(Ljava/lang/String;)V

    .line 304
    goto :goto_3

    .line 300
    :pswitch_b
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setGraphicsDriver(Ljava/lang/String;)V

    .line 301
    goto :goto_3

    .line 297
    :pswitch_c
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setCPUList(Ljava/lang/String;)V

    .line 298
    goto :goto_3

    .line 294
    :pswitch_d
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setEnvVars(Ljava/lang/String;)V

    .line 295
    goto :goto_3

    .line 291
    :pswitch_e
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setScreenSize(Ljava/lang/String;)V

    .line 292
    goto :goto_3

    .line 288
    :pswitch_f
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/container/Container;->setName(Ljava/lang/String;)V

    .line 289
    nop

    .line 339
    .end local v1    # "key":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 340
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e256771 -> :sswitch_f
        -0x6323256d -> :sswitch_e
        -0x5ece2347 -> :sswitch_d
        -0x51052702 -> :sswitch_c
        -0x4ee367d7 -> :sswitch_b
        -0x19a1d40e -> :sswitch_a
        -0x18e10173 -> :sswitch_9
        -0xf209026 -> :sswitch_8
        -0x49e1681 -> :sswitch_7
        0x337a8b -> :sswitch_6
        0xa4679e -> :sswitch_5
        0x3abc9266 -> :sswitch_4
        0x3b02a70d -> :sswitch_3
        0x6f29cfb5 -> :sswitch_2
        0x716afda1 -> :sswitch_1
        0x7b37f8ac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->extraData:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->extraData:Lorg/json/JSONObject;

    .line 188
    :cond_0
    if-eqz p2, :cond_1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/termux/x11/controller/container/Container;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 194
    return-void
.end method

.method public saveData()V
    .locals 3

    .line 251
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 252
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "id"

    iget v2, p0, Lcom/termux/x11/controller/container/Container;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 253
    const-string v1, "name"

    iget-object v2, p0, Lcom/termux/x11/controller/container/Container;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v1, "screenSize"

    iget-object v2, p0, Lcom/termux/x11/controller/container/Container;->screenSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v1, "envVars"

    iget-object v2, p0, Lcom/termux/x11/controller/container/Container;->envVars:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v1, "cpuList"

    iget-object v2, p0, Lcom/termux/x11/controller/container/Container;->cpuList:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v1, "graphicsDriver"

    iget-object v2, p0, Lcom/termux/x11/controller/container/Container;->graphicsDriver:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v1, "dxwrapper"

    iget-object v2, p0, Lcom/termux/x11/controller/container/Container;->dxwrapper:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    iget-object v1, p0, Lcom/termux/x11/controller/container/Container;->dxwrapperConfig:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dxwrapperConfig"

    iget-object v2, p0, Lcom/termux/x11/controller/container/Container;->dxwrapperConfig:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/controller/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "graphicsDriverConfig"

    iget-object v2, p0, Lcom/termux/x11/controller/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    :cond_1
    const-string v1, "audioDriver"

    iget-object v2, p0, Lcom/termux/x11/controller/container/Container;->audioDriver:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v1, "wincomponents"

    iget-object v2, p0, Lcom/termux/x11/controller/container/Container;->wincomponents:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v1, "drives"

    iget-object v2, p0, Lcom/termux/x11/controller/container/Container;->drives:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v1, "showFPS"

    iget-boolean v2, p0, Lcom/termux/x11/controller/container/Container;->showFPS:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 265
    const-string v1, "stopServicesOnStartup"

    iget-boolean v2, p0, Lcom/termux/x11/controller/container/Container;->stopServicesOnStartup:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 266
    const-string v1, "desktopTheme"

    iget-object v2, p0, Lcom/termux/x11/controller/container/Container;->desktopTheme:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v1, "extraData"

    iget-object v2, p0, Lcom/termux/x11/controller/container/Container;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    iget-object v1, p0, Lcom/termux/x11/controller/container/Container;->wineVersion:Ljava/lang/String;

    sget-object v2, Lcom/termux/x11/controller/core/WineInfo;->MAIN_WINE_VERSION:Lcom/termux/x11/controller/core/WineInfo;

    invoke-virtual {v2}, Lcom/termux/x11/controller/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    const-string v1, "wineVersion"

    iget-object v2, p0, Lcom/termux/x11/controller/container/Container;->wineVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    :cond_2
    invoke-virtual {p0}, Lcom/termux/x11/controller/container/Container;->getConfigFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/x11/controller/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    nop

    .end local v0    # "data":Lorg/json/JSONObject;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 276
    :goto_0
    return-void
.end method

.method public setAudioDriver(Ljava/lang/String;)V
    .locals 0
    .param p1, "audioDriver"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/termux/x11/controller/container/Container;->audioDriver:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setCPUList(Ljava/lang/String;)V
    .locals 1
    .param p1, "cpuList"    # Ljava/lang/String;

    .line 152
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->cpuList:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setDXWrapper(Ljava/lang/String;)V
    .locals 0
    .param p1, "dxwrapper"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/termux/x11/controller/container/Container;->dxwrapper:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setDXWrapperConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "dxwrapperConfig"    # Ljava/lang/String;

    .line 96
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->dxwrapperConfig:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setDesktopTheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "desktopTheme"    # Ljava/lang/String;

    .line 222
    iput-object p1, p0, Lcom/termux/x11/controller/container/Container;->desktopTheme:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setDrives(Ljava/lang/String;)V
    .locals 0
    .param p1, "drives"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/termux/x11/controller/container/Container;->drives:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setEnvVars(Ljava/lang/String;)V
    .locals 1
    .param p1, "envVars"    # Ljava/lang/String;

    .line 72
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->envVars:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setExtraData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "extraData"    # Lorg/json/JSONObject;

    .line 169
    iput-object p1, p0, Lcom/termux/x11/controller/container/Container;->extraData:Lorg/json/JSONObject;

    .line 170
    return-void
.end method

.method public setGraphicsDriver(Ljava/lang/String;)V
    .locals 0
    .param p1, "graphicsDriver"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/termux/x11/controller/container/Container;->graphicsDriver:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setGraphicsDriverConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "graphicsDriverConfig"    # Ljava/lang/String;

    .line 104
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/termux/x11/controller/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/termux/x11/controller/container/Container;->name:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setRootDir(Ljava/io/File;)V
    .locals 0
    .param p1, "rootDir"    # Ljava/io/File;

    .line 165
    iput-object p1, p0, Lcom/termux/x11/controller/container/Container;->rootDir:Ljava/io/File;

    .line 166
    return-void
.end method

.method public setScreenSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenSize"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/termux/x11/controller/container/Container;->screenSize:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setShowFPS(Z)V
    .locals 0
    .param p1, "showFPS"    # Z

    .line 136
    iput-boolean p1, p0, Lcom/termux/x11/controller/container/Container;->showFPS:Z

    .line 137
    return-void
.end method

.method public setStopServicesOnStartup(Z)V
    .locals 0
    .param p1, "stopServicesOnStartup"    # Z

    .line 144
    iput-boolean p1, p0, Lcom/termux/x11/controller/container/Container;->stopServicesOnStartup:Z

    .line 145
    return-void
.end method

.method public setWinComponents(Ljava/lang/String;)V
    .locals 0
    .param p1, "wincomponents"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/termux/x11/controller/container/Container;->wincomponents:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setWineVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "wineVersion"    # Ljava/lang/String;

    .line 201
    iput-object p1, p0, Lcom/termux/x11/controller/container/Container;->wineVersion:Ljava/lang/String;

    .line 202
    return-void
.end method

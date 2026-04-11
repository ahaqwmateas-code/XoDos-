.class public Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;
.super Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;
.source "TermuxShellEnvironment.java"


# static fields
.field public static final ENV_PREFIX:Ljava/lang/String; = "PREFIX"

.field private static final LOG_TAG:Ljava/lang/String; = "TermuxShellEnvironment"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;-><init>()V

    .line 33
    new-instance v0, Lcom/termux/shared/termux/shell/command/environment/TermuxShellCommandShellEnvironment;

    invoke-direct {v0}, Lcom/termux/shared/termux/shell/command/environment/TermuxShellCommandShellEnvironment;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;->shellCommandShellEnvironment:Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;

    .line 34
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 1
    .param p0, "currentPackageContext"    # Landroid/content/Context;

    const-class v0, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;

    monitor-enter v0

    .line 39
    :try_start_0
    invoke-static {p0}, Lcom/termux/shared/termux/shell/command/environment/TermuxAppShellEnvironment;->setTermuxAppEnvironment(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    return-void

    .line 38
    .end local p0    # "currentPackageContext":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized writeEnvironmentToFile(Landroid/content/Context;)V
    .locals 8
    .param p0, "currentPackageContext"    # Landroid/content/Context;

    const-class v0, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;

    monitor-enter v0

    .line 44
    :try_start_0
    new-instance v1, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;

    invoke-direct {v1}, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;->getEnvironment(Landroid/content/Context;Z)Ljava/util/HashMap;

    move-result-object v1

    .line 45
    .local v1, "environmentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->convertEnvironmentToDotEnvFile(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "environmentString":Ljava/lang/String;
    const-string v4, "termux.env.tmp"

    const-string v5, "/data/data/com.termux/files/usr/etc/termux/termux.env.tmp"

    .line 50
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    .line 49
    invoke-static {v4, v5, v6, v3, v2}, Lcom/termux/shared/file/FileUtils;->writeTextToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v2

    .line 51
    .local v2, "error":Lcom/termux/shared/errors/Error;
    if-eqz v2, :cond_0

    .line 52
    const-string v4, "TermuxShellEnvironment"

    invoke-virtual {v2}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v0

    return-void

    .line 56
    :cond_0
    :try_start_1
    const-string v4, "termux.env.tmp"

    const-string v5, "/data/data/com.termux/files/usr/etc/termux/termux.env.tmp"

    const-string v6, "/data/data/com.termux/files/usr/etc/termux/termux.env"

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/termux/shared/file/FileUtils;->moveRegularFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v4

    move-object v2, v4

    .line 57
    if-eqz v2, :cond_1

    .line 58
    const-string v4, "TermuxShellEnvironment"

    invoke-virtual {v2}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :cond_1
    monitor-exit v0

    return-void

    .line 43
    .end local v1    # "environmentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "error":Lcom/termux/shared/errors/Error;
    .end local v3    # "environmentString":Ljava/lang/String;
    .end local p0    # "currentPackageContext":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public getDefaultBinPath()Ljava/lang/String;
    .locals 1

    .line 108
    const-string v0, "/data/data/com.termux/files/usr/bin"

    return-object v0
.end method

.method public getDefaultWorkingDirectoryPath()Ljava/lang/String;
    .locals 1

    .line 102
    const-string v0, "/data/data/com.termux/files/home"

    return-object v0
.end method

.method public getEnvironment(Landroid/content/Context;Z)Ljava/util/HashMap;
    .locals 6
    .param p1, "currentPackageContext"    # Landroid/content/Context;
    .param p2, "isFailSafe"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-super {p0, p1, p2}, Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;->getEnvironment(Landroid/content/Context;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 70
    .local v0, "environment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/termux/shared/termux/shell/command/environment/TermuxAppShellEnvironment;->getEnvironment(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    .line 71
    .local v1, "termuxAppEnvironment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 74
    :cond_0
    invoke-static {p1}, Lcom/termux/shared/termux/shell/command/environment/TermuxAPIShellEnvironment;->getEnvironment(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    .line 75
    .local v2, "termuxApiAppEnvironment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 78
    :cond_1
    const-string v3, "HOME"

    const-string v4, "/data/data/com.termux/files/home"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v3, "PREFIX"

    const-string v4, "/data/data/com.termux/files/usr"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    if-nez p2, :cond_3

    .line 83
    const-string v3, "TMPDIR"

    const-string v4, "/data/data/com.termux/files/usr/tmp"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {}, Lcom/termux/shared/termux/TermuxBootstrap;->isAppPackageVariantAPTAndroid5()Z

    move-result v3

    const-string v4, "LD_LIBRARY_PATH"

    const-string v5, "PATH"

    if-eqz v3, :cond_2

    .line 86
    const-string v3, "/data/data/com.termux/files/usr/bin:/data/data/com.termux/files/usr/bin/applets"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v3, "/data/data/com.termux/files/usr/lib"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_2
    const-string v3, "/data/data/com.termux/files/usr/bin"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_3
    :goto_0
    return-object v0
.end method

.method public setupShellCommandArguments(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "executable"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/String;

    .line 114
    invoke-static {p1, p2}, Lcom/termux/shared/termux/shell/TermuxShellUtils;->setupShellCommandArguments(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

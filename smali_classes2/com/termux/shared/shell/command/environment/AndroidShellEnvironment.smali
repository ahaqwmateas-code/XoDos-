.class public Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;
.super Lcom/termux/shared/shell/command/environment/UnixShellEnvironment;
.source "AndroidShellEnvironment.java"


# instance fields
.field protected shellCommandShellEnvironment:Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/termux/shared/shell/command/environment/UnixShellEnvironment;-><init>()V

    .line 26
    new-instance v0, Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;

    invoke-direct {v0}, Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;->shellCommandShellEnvironment:Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;

    .line 27
    return-void
.end method


# virtual methods
.method public getDefaultBinPath()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "/system/bin"

    return-object v0
.end method

.method public getDefaultWorkingDirectoryPath()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "/"

    return-object v0
.end method

.method public getEnvironment(Landroid/content/Context;Z)Ljava/util/HashMap;
    .locals 3
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

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v0, "environment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "HOME"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "LANG"

    const-string v2, "en_US.UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "PATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "TMPDIR"

    const-string v2, "/data/local/tmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "COLORTERM"

    const-string v2, "truecolor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "TERM"

    const-string v2, "xterm-256color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "ANDROID_ASSETS"

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 44
    const-string v1, "ANDROID_DATA"

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 45
    const-string v1, "ANDROID_ROOT"

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 46
    const-string v1, "ANDROID_STORAGE"

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 51
    const-string v1, "EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 52
    const-string v1, "ASEC_MOUNTPOINT"

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 53
    const-string v1, "LOOP_MOUNTPOINT"

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 55
    const-string v1, "ANDROID_RUNTIME_ROOT"

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 56
    const-string v1, "ANDROID_ART_ROOT"

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 57
    const-string v1, "ANDROID_I18N_ROOT"

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 58
    const-string v1, "ANDROID_TZDATA_ROOT"

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 60
    const-string v1, "BOOTCLASSPATH"

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 61
    const-string v1, "DEX2OATBOOTCLASSPATH"

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 62
    const-string v1, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfInSystemEnv(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 64
    return-object v0
.end method

.method public setupShellCommandEnvironment(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;)Ljava/util/HashMap;
    .locals 4
    .param p1, "currentPackageContext"    # Landroid/content/Context;
    .param p2, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/termux/shared/shell/command/ExecutionCommand;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-boolean v0, p2, Lcom/termux/shared/shell/command/ExecutionCommand;->isFailsafe:Z

    invoke-virtual {p0, p1, v0}, Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;->getEnvironment(Landroid/content/Context;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 88
    .local v0, "environment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 89
    .local v1, "workingDirectory":Ljava/lang/String;
    nop

    .line 90
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;->getDefaultWorkingDirectoryPath()Ljava/lang/String;

    move-result-object v2

    .line 89
    :goto_0
    const-string v3, "PWD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {v0}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->createHomeDir(Ljava/util/HashMap;)V

    .line 94
    iget-boolean v2, p2, Lcom/termux/shared/shell/command/ExecutionCommand;->setShellCommandShellEnvironment:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;->shellCommandShellEnvironment:Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;->shellCommandShellEnvironment:Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;

    invoke-virtual {v2, p1, p2}, Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;->getEnvironment(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 97
    :cond_1
    return-object v0
.end method

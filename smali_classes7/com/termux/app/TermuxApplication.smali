.class public Lcom/termux/app/TermuxApplication;
.super Landroid/app/Application;
.source "TermuxApplication.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxApplication"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static setLogConfig(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 77
    const-string v0, "Termux"

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->setDefaultLogTag(Ljava/lang/String;)V

    .line 80
    invoke-static {p0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    .line 81
    .local v0, "preferences":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->getLogLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->setLogLevel(Landroid/content/Context;I)V

    .line 83
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 8

    .line 25
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 27
    invoke-virtual {p0}, Lcom/termux/app/TermuxApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    .local v0, "context":Landroid/content/Context;
    invoke-static {p0}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->setDefaultCrashHandler(Landroid/content/Context;)V

    .line 33
    invoke-static {v0}, Lcom/termux/app/TermuxApplication;->setLogConfig(Landroid/content/Context;)V

    .line 35
    const-string v1, "Starting Application"

    invoke-static {v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 38
    const-string v1, "apt-android-7"

    invoke-static {v1}, Lcom/termux/shared/termux/TermuxBootstrap;->setTermuxPackageManagerAndVariant(Ljava/lang/String;)V

    .line 41
    invoke-static {v0}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->init(Landroid/content/Context;)Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    move-result-object v1

    .line 44
    .local v1, "properties":Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;
    invoke-static {v0}, Lcom/termux/shared/termux/shell/TermuxShellManager;->init(Landroid/content/Context;)Lcom/termux/shared/termux/shell/TermuxShellManager;

    move-result-object v2

    .line 47
    .local v2, "shellManager":Lcom/termux/shared/termux/shell/TermuxShellManager;
    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getNightMode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/termux/shared/termux/theme/TermuxThemeUtils;->setAppNightMode(Ljava/lang/String;)V

    .line 51
    const/4 v3, 0x1

    invoke-static {p0, v3, v3}, Lcom/termux/shared/termux/file/TermuxFileUtils;->isTermuxFilesDirectoryAccessible(Landroid/content/Context;ZZ)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 52
    .local v4, "error":Lcom/termux/shared/errors/Error;
    if-nez v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 53
    .local v5, "isTermuxFilesDirectoryAccessible":Z
    :goto_0
    const-string v6, "TermuxApplication"

    if-eqz v5, :cond_2

    .line 54
    const-string v7, "Termux files directory is accessible"

    invoke-static {v6, v7}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {v3, v3}, Lcom/termux/shared/termux/file/TermuxFileUtils;->isAppsTermuxAppDirectoryAccessible(ZZ)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create apps/termux-app directory failed\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void

    .line 63
    :cond_1
    invoke-static {v0}, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->setupTermuxAmSocketServer(Landroid/content/Context;)V

    goto :goto_1

    .line 65
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Termux files directory is not accessible\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_1
    invoke-static {p0}, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;->init(Landroid/content/Context;)V

    .line 71
    if-eqz v5, :cond_3

    .line 72
    invoke-static {p0}, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;->writeEnvironmentToFile(Landroid/content/Context;)V

    .line 74
    :cond_3
    return-void
.end method

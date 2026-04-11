.class public Lcom/termux/shared/termux/shell/command/environment/TermuxAppShellEnvironment;
.super Ljava/lang/Object;
.source "TermuxAppShellEnvironment.java"


# static fields
.field public static final ENV_TERMUX_APP__AM_SOCKET_SERVER_ENABLED:Ljava/lang/String; = "TERMUX_APP__AM_SOCKET_SERVER_ENABLED"

.field public static final ENV_TERMUX_APP__APK_PATH:Ljava/lang/String; = "TERMUX_APP__APK_PATH"

.field public static final ENV_TERMUX_APP__APK_RELEASE:Ljava/lang/String; = "TERMUX_APP__APK_RELEASE"

.field public static final ENV_TERMUX_APP__FILES_DIR:Ljava/lang/String; = "TERMUX_APP__FILES_DIR"

.field public static final ENV_TERMUX_APP__IS_DEBUGGABLE_BUILD:Ljava/lang/String; = "TERMUX_APP__IS_DEBUGGABLE_BUILD"

.field public static final ENV_TERMUX_APP__IS_INSTALLED_ON_EXTERNAL_STORAGE:Ljava/lang/String; = "TERMUX_APP__IS_INSTALLED_ON_EXTERNAL_STORAGE"

.field public static final ENV_TERMUX_APP__PACKAGE_MANAGER:Ljava/lang/String; = "TERMUX_APP__PACKAGE_MANAGER"

.field public static final ENV_TERMUX_APP__PACKAGE_NAME:Ljava/lang/String; = "TERMUX_APP__PACKAGE_NAME"

.field public static final ENV_TERMUX_APP__PACKAGE_VARIANT:Ljava/lang/String; = "TERMUX_APP__PACKAGE_VARIANT"

.field public static final ENV_TERMUX_APP__PID:Ljava/lang/String; = "TERMUX_APP__PID"

.field public static final ENV_TERMUX_APP__PROFILE_OWNER:Ljava/lang/String; = "TERMUX_APP__PROFILE_OWNER"

.field public static final ENV_TERMUX_APP__SE_FILE_CONTEXT:Ljava/lang/String; = "TERMUX_APP__SE_FILE_CONTEXT"

.field public static final ENV_TERMUX_APP__SE_INFO:Ljava/lang/String; = "TERMUX_APP__SE_INFO"

.field public static final ENV_TERMUX_APP__SE_PROCESS_CONTEXT:Ljava/lang/String; = "TERMUX_APP__SE_PROCESS_CONTEXT"

.field public static final ENV_TERMUX_APP__TARGET_SDK:Ljava/lang/String; = "TERMUX_APP__TARGET_SDK"

.field public static final ENV_TERMUX_APP__UID:Ljava/lang/String; = "TERMUX_APP__UID"

.field public static final ENV_TERMUX_APP__USER_ID:Ljava/lang/String; = "TERMUX_APP__USER_ID"

.field public static final ENV_TERMUX_APP__VERSION_CODE:Ljava/lang/String; = "TERMUX_APP__VERSION_CODE"

.field public static final ENV_TERMUX_APP__VERSION_NAME:Ljava/lang/String; = "TERMUX_APP__VERSION_NAME"

.field public static final ENV_TERMUX_VERSION:Ljava/lang/String; = "TERMUX_VERSION"

.field public static final TERMUX_APP_ENV_PREFIX:Ljava/lang/String; = "TERMUX_APP__"

.field public static termuxAppEnvironment:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnvironment(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 1
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lcom/termux/shared/termux/shell/command/environment/TermuxAppShellEnvironment;->setTermuxAppEnvironment(Landroid/content/Context;)V

    .line 85
    sget-object v0, Lcom/termux/shared/termux/shell/command/environment/TermuxAppShellEnvironment;->termuxAppEnvironment:Ljava/util/HashMap;

    return-object v0
.end method

.method public static putTermuxAPKSignature(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p1, "environment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "com.termux"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getSigningCertificateSHA256DigestForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "signingCertificateSHA256Digest":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 159
    nop

    .line 160
    invoke-static {v0}, Lcom/termux/shared/termux/TermuxUtils;->getAPKRelease(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^a-zA-Z]"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string v2, "TERMUX_APP__APK_RELEASE"

    invoke-static {p1, v2, v1}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method public static declared-synchronized setTermuxAppEnvironment(Landroid/content/Context;)V
    .locals 12
    .param p0, "currentPackageContext"    # Landroid/content/Context;

    const-class v0, Lcom/termux/shared/termux/shell/command/environment/TermuxAppShellEnvironment;

    monitor-enter v0

    .line 90
    :try_start_0
    const-string v1, "com.termux"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 94
    .local v1, "isTermuxApp":Z
    sget-object v2, Lcom/termux/shared/termux/shell/command/environment/TermuxAppShellEnvironment;->termuxAppEnvironment:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 95
    monitor-exit v0

    return-void

    .line 97
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    sput-object v2, Lcom/termux/shared/termux/shell/command/environment/TermuxAppShellEnvironment;->termuxAppEnvironment:Ljava/util/HashMap;

    .line 99
    const-string v2, "com.termux"

    .line 100
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/termux/shared/android/PackageUtils;->getPackageInfoForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_1

    monitor-exit v0

    return-void

    .line 102
    :cond_1
    :try_start_2
    invoke-static {p0, v2}, Lcom/termux/shared/android/PackageUtils;->getApplicationInfoForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 103
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_8

    iget-boolean v5, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_2

    goto/16 :goto_1

    .line 105
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v5, "environment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "TERMUX_VERSION"

    invoke-static {v3}, Lcom/termux/shared/android/PackageUtils;->getVersionNameForPackage(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v6, "TERMUX_APP__VERSION_NAME"

    invoke-static {v3}, Lcom/termux/shared/android/PackageUtils;->getVersionNameForPackage(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v6, "TERMUX_APP__VERSION_CODE"

    invoke-static {v3}, Lcom/termux/shared/android/PackageUtils;->getVersionCodeForPackage(Landroid/content/pm/PackageInfo;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v6, "TERMUX_APP__PACKAGE_NAME"

    invoke-static {v5, v6, v2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v6, "TERMUX_APP__PID"

    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxAppPID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v6, "TERMUX_APP__UID"

    invoke-static {v4}, Lcom/termux/shared/android/PackageUtils;->getUidForPackage(Landroid/content/pm/ApplicationInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v6, "TERMUX_APP__TARGET_SDK"

    invoke-static {v4}, Lcom/termux/shared/android/PackageUtils;->getTargetSDKForPackage(Landroid/content/pm/ApplicationInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v6, "TERMUX_APP__IS_DEBUGGABLE_BUILD"

    invoke-static {v4}, Lcom/termux/shared/android/PackageUtils;->isAppForPackageADebuggableBuild(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 116
    const-string v6, "TERMUX_APP__APK_PATH"

    invoke-static {v4}, Lcom/termux/shared/android/PackageUtils;->getBaseAPKPathForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v6, "TERMUX_APP__IS_INSTALLED_ON_EXTERNAL_STORAGE"

    invoke-static {v4}, Lcom/termux/shared/android/PackageUtils;->isAppInstalledOnExternalStorage(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 119
    invoke-static {p0, v5}, Lcom/termux/shared/termux/shell/command/environment/TermuxAppShellEnvironment;->putTermuxAPKSignature(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 121
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    .line 122
    .local v6, "termuxPackageContext":Landroid/content/Context;
    if-eqz v6, :cond_7

    .line 126
    sget-object v7, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_MANAGER:Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    if-eqz v7, :cond_3

    .line 127
    const-string v7, "TERMUX_APP__PACKAGE_MANAGER"

    sget-object v8, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_MANAGER:Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    invoke-virtual {v8}, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_3
    sget-object v7, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_VARIANT:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    if-eqz v7, :cond_4

    .line 129
    const-string v7, "TERMUX_APP__PACKAGE_VARIANT"

    sget-object v8, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_VARIANT:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    invoke-virtual {v8}, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_4
    const-string v7, "TERMUX_APP__AM_SOCKET_SERVER_ENABLED"

    .line 133
    invoke-static {p0}, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->getTermuxAppAMSocketServerEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v8

    .line 132
    invoke-static {v5, v7, v8}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "filesDirPath":Ljava/lang/String;
    const-string v8, "TERMUX_APP__FILES_DIR"

    invoke-static {v5, v8, v7}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v8, "TERMUX_APP__SE_PROCESS_CONTEXT"

    invoke-static {}, Lcom/termux/shared/android/SELinuxUtils;->getContext()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v8, "TERMUX_APP__SE_FILE_CONTEXT"

    invoke-static {v7}, Lcom/termux/shared/android/SELinuxUtils;->getFileContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {v4}, Lcom/termux/shared/android/PackageUtils;->getApplicationInfoSeInfoUserForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, "seInfoUser":Ljava/lang/String;
    const-string v9, "TERMUX_APP__SE_INFO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/termux/shared/android/PackageUtils;->getApplicationInfoSeInfoForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 143
    invoke-static {v8}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, ""

    goto :goto_0

    :cond_5
    move-object v11, v8

    :goto_0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 142
    invoke-static {v5, v9, v10}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v9, v10, :cond_6

    .line 146
    const-string v9, "TERMUX_APP__USER_ID"

    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getUserIdForPackage(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v9, v10}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_6
    const-string v9, "TERMUX_APP__PROFILE_OWNER"

    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getProfileOwnerPackageNameForUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v9, v10}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v7    # "filesDirPath":Ljava/lang/String;
    .end local v8    # "seInfoUser":Ljava/lang/String;
    :cond_7
    sput-object v5, Lcom/termux/shared/termux/shell/command/environment/TermuxAppShellEnvironment;->termuxAppEnvironment:Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    monitor-exit v0

    return-void

    .line 103
    .end local v5    # "environment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "termuxPackageContext":Landroid/content/Context;
    :cond_8
    :goto_1
    monitor-exit v0

    return-void

    .line 89
    .end local v1    # "isTermuxApp":Z
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local p0    # "currentPackageContext":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static declared-synchronized updateTermuxAppAMSocketServerEnabled(Landroid/content/Context;)V
    .locals 4
    .param p0, "currentPackageContext"    # Landroid/content/Context;

    const-class v0, Lcom/termux/shared/termux/shell/command/environment/TermuxAppShellEnvironment;

    monitor-enter v0

    .line 166
    :try_start_0
    sget-object v1, Lcom/termux/shared/termux/shell/command/environment/TermuxAppShellEnvironment;->termuxAppEnvironment:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 167
    :cond_0
    :try_start_1
    sget-object v1, Lcom/termux/shared/termux/shell/command/environment/TermuxAppShellEnvironment;->termuxAppEnvironment:Ljava/util/HashMap;

    const-string v2, "TERMUX_APP__AM_SOCKET_SERVER_ENABLED"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lcom/termux/shared/termux/shell/command/environment/TermuxAppShellEnvironment;->termuxAppEnvironment:Ljava/util/HashMap;

    const-string v2, "TERMUX_APP__AM_SOCKET_SERVER_ENABLED"

    .line 169
    invoke-static {p0}, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->getTermuxAppAMSocketServerEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    .line 168
    invoke-static {v1, v2, v3}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    monitor-exit v0

    return-void

    .line 165
    .end local p0    # "currentPackageContext":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

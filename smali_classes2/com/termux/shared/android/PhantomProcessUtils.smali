.class public Lcom/termux/shared/android/PhantomProcessUtils;
.super Ljava/lang/Object;
.source "PhantomProcessUtils.java"


# static fields
.field public static final FEATURE_FLAG_SETTINGS_ENABLE_MONITOR_PHANTOM_PROCS:Ljava/lang/String; = "settings_enable_monitor_phantom_procs"

.field public static final KEY_MAX_PHANTOM_PROCESSES:Ljava/lang/String; = "max_phantom_processes"

.field private static final LOG_TAG:Ljava/lang/String; = "PhantomProcessUtils"

.field public static final SETTINGS_GLOBAL_DEVICE_CONFIG_SYNC_DISABLED:Ljava/lang/String; = "device_config_sync_disabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityManagerMaxPhantomProcesses(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    const-string v0, "android.permission.DUMP"

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, p0

    invoke-static {v7, v0}, Lcom/termux/shared/android/PermissionUtils;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 77
    return-object v8

    .line 81
    :cond_0
    const-string v9, "/system/bin/dumpsys activity settings | /system/bin/grep -iE \'^[\t ]+max_phantom_processes=[0-9]+$\' | /system/bin/cut -d = -f2"

    .line 82
    .local v9, "script":Ljava/lang/String;
    new-instance v0, Lcom/termux/shared/shell/command/ExecutionCommand;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    .line 83
    invoke-virtual {v1}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->getName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    const-string v12, "/system/bin/sh"

    const/4 v13, 0x0

    const-string v15, "/"

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lcom/termux/shared/shell/command/ExecutionCommand;-><init>(Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    .local v10, "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    const-string v0, " ActivityManager max_phantom_processes Command"

    iput-object v0, v10, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    .line 86
    new-instance v4, Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;

    invoke-direct {v4}, Lcom/termux/shared/shell/command/environment/AndroidShellEnvironment;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-static/range {v1 .. v6}, Lcom/termux/shared/shell/command/runner/app/AppShell;->execute(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;Lcom/termux/shared/shell/command/environment/IShellEnvironment;Ljava/util/HashMap;Z)Lcom/termux/shared/shell/command/runner/app/AppShell;

    move-result-object v1

    .line 87
    .local v1, "appShell":Lcom/termux/shared/shell/command/runner/app/AppShell;
    iget-object v0, v10, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v0, v0, Lcom/termux/shared/shell/command/result/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 88
    .local v2, "stderrSet":Z
    const-string v3, "PhantomProcessUtils"

    if-eqz v1, :cond_2

    invoke-virtual {v10}, Lcom/termux/shared/shell/command/ExecutionCommand;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v0, v0, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    :try_start_0
    iget-object v0, v10, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v0, v0, Lcom/termux/shared/shell/command/result/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not return a valid integer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    invoke-virtual {v10}, Lcom/termux/shared/shell/command/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    return-object v8

    .line 89
    :cond_2
    :goto_0
    invoke-virtual {v10}, Lcom/termux/shared/shell/command/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-object v8
.end method

.method public static getFeatureFlagMonitorPhantomProcsValueString(Landroid/content/Context;)Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    const-string v0, "settings_enable_monitor_phantom_procs"

    invoke-static {p0, v0}, Lcom/termux/shared/android/FeatureFlagUtils;->getFeatureFlagValueString(Landroid/content/Context;Ljava/lang/String;)Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingsGlobalDeviceConfigSyncDisabled(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 111
    sget-object v0, Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;->GLOBAL:Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;

    sget-object v1, Lcom/termux/shared/android/SettingsProviderUtils$SettingType;->INT:Lcom/termux/shared/android/SettingsProviderUtils$SettingType;

    const-string v2, "device_config_sync_disabled"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/termux/shared/android/SettingsProviderUtils;->getSettingsValue(Landroid/content/Context;Lcom/termux/shared/android/SettingsProviderUtils$SettingNamespace;Lcom/termux/shared/android/SettingsProviderUtils$SettingType;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

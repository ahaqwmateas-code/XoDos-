.class public final Lcom/termux/app/TermuxService;
.super Landroid/app/Service;
.source "TermuxService.java"

# interfaces
.implements Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;
.implements Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession$TermuxSessionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/TermuxService$LocalBinder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mHandler:Landroid/os/Handler;

.field private mProperties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

.field private mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

.field private mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

.field private final mTermuxTerminalSessionServiceClient:Lcom/termux/app/terminal/TermuxTerminalSessionServiceClient;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWantsToStop:Z

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 75
    new-instance v0, Lcom/termux/app/TermuxService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxService$LocalBinder;-><init>(Lcom/termux/app/TermuxService;)V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mBinder:Landroid/os/IBinder;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Lcom/termux/app/terminal/TermuxTerminalSessionServiceClient;

    invoke-direct {v0, p0}, Lcom/termux/app/terminal/TermuxTerminalSessionServiceClient;-><init>(Lcom/termux/app/TermuxService;)V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionServiceClient:Lcom/termux/app/terminal/TermuxTerminalSessionServiceClient;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    return-void
.end method

.method private actionAcquireWakeLock()V
    .locals 5

    .line 306
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v1, "TermuxService"

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "Ignoring acquiring WakeLocks since they are already held"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void

    .line 311
    :cond_0
    const-string v0, "Acquiring WakeLocks"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 314
    .local v0, "pm":Landroid/os/PowerManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Termux"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":service-wakelock"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 315
    iget-object v2, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 318
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 319
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    const/4 v4, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 320
    iget-object v3, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 322
    invoke-static {p0}, Lcom/termux/shared/android/PermissionUtils;->checkIfBatteryOptimizationsDisabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 323
    invoke-static {p0}, Lcom/termux/shared/android/PermissionUtils;->requestDisableBatteryOptimizations(Landroid/content/Context;)Lcom/termux/shared/errors/Error;

    .line 326
    :cond_1
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    .line 328
    const-string v3, "WakeLocks acquired successfully"

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method private actionReleaseWakeLock(Z)V
    .locals 3
    .param p1, "updateNotification"    # Z

    .line 334
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v1, "TermuxService"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    .line 335
    const-string v0, "Ignoring releasing WakeLocks since none are already held"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void

    .line 339
    :cond_0
    const-string v0, "Releasing WakeLocks"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 343
    iput-object v2, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 348
    iput-object v2, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 351
    :cond_2
    if-eqz p1, :cond_3

    .line 352
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    .line 354
    :cond_3
    const-string v0, "WakeLocks released successfully"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method private actionServiceExecute(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 360
    const-string v0, "TermuxService"

    if-nez p1, :cond_0

    .line 361
    const-string v1, "Ignoring null intent to actionServiceExecute"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void

    .line 365
    :cond_0
    new-instance v1, Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-static {}, Lcom/termux/shared/termux/shell/TermuxShellManager;->getNextShellId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/termux/shared/shell/command/ExecutionCommand;-><init>(Ljava/lang/Integer;)V

    .line 367
    .local v1, "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executableUri:Landroid/net/Uri;

    .line 368
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommand:Z

    .line 371
    nop

    .line 372
    const-string v3, "com.termux.execute.background"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->TERMINAL_SESSION:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    :goto_0
    invoke-virtual {v3}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->getName()Ljava/lang/String;

    move-result-object v3

    .line 371
    const-string v5, "com.termux.execute.runner"

    invoke-static {p1, v5, v3}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    .line 373
    iget-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-static {v3}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->runnerOf(Ljava/lang/String;)Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    move-result-object v3

    if-nez v3, :cond_2

    .line 374
    iget-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    const v3, 0x7f120125

    invoke-virtual {p0, v3, v2}, Lcom/termux/app/TermuxService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "errmsg":Ljava/lang/String;
    sget-object v3, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v3}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 376
    invoke-static {p0, v0, v1, v4}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;Z)V

    .line 377
    return-void

    .line 380
    .end local v2    # "errmsg":Ljava/lang/String;
    :cond_2
    iget-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executableUri:Landroid/net/Uri;

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri: \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executableUri:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\", path: \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executableUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\", fragment: \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executableUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executableUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/termux/shared/net/uri/UriUtils;->getUriFilePathWithFragment(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    .line 385
    const-string v3, "com.termux.execute.arguments"

    invoke-static {p1, v3, v5}, Lcom/termux/shared/data/IntentUtils;->getStringArrayExtraIfSet(Landroid/content/Intent;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->arguments:[Ljava/lang/String;

    .line 386
    iget-object v6, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->arguments:[Ljava/lang/String;

    if-nez v6, :cond_3

    .line 387
    invoke-static {p1, v3, v5}, Lcom/termux/shared/data/IntentUtils;->getStringListExtraIfSet(Landroid/content/Intent;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->arguments:[Ljava/lang/String;

    .line 389
    :cond_3
    sget-object v3, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    iget-object v6, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->equalsRunner(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 390
    const-string v3, "com.termux.execute.stdin"

    invoke-static {p1, v3, v5}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->stdin:Ljava/lang/String;

    .line 391
    :cond_4
    const-string v3, "com.termux.execute.background_custom_log_level"

    invoke-static {p1, v3, v5}, Lcom/termux/shared/data/IntentUtils;->getIntegerExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    .line 394
    :cond_5
    const-string v3, "com.termux.execute.cwd"

    invoke-static {p1, v3, v5}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 395
    const-string v3, "com.termux.app.failsafe_session"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->isFailsafe:Z

    .line 396
    const-string v3, "com.termux.execute.session_action"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->sessionAction:Ljava/lang/String;

    .line 397
    const-string v3, "com.termux.execute.shell_name"

    invoke-static {p1, v3, v5}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    .line 398
    const-string v3, "com.termux.execute.shell_create_mode"

    invoke-static {p1, v3, v5}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellCreateMode:Ljava/lang/String;

    .line 399
    const-string v3, "com.termux.execute.command_label"

    const-string v6, "Execution Intent Command"

    invoke-static {p1, v3, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 400
    const-string v3, "com.termux.execute.command_description"

    invoke-static {p1, v3, v5}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->commandDescription:Ljava/lang/String;

    .line 401
    const-string v3, "com.termux.execute.command_help"

    invoke-static {p1, v3, v5}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->commandHelp:Ljava/lang/String;

    .line 402
    const-string v3, "com.termux.execute.plugin_api_help"

    invoke-static {p1, v3, v5}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->pluginAPIHelp:Ljava/lang/String;

    .line 403
    iget-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    const-string v6, "pendingIntent"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    iput-object v6, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    .line 404
    iget-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    const-string v6, "com.termux.execute.result_directory"

    invoke-static {p1, v6, v5}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    .line 405
    iget-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v3, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 406
    iget-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    const-string v6, "com.termux.execute.result_single_file"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultSingleFile:Z

    .line 407
    iget-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    const-string v6, "com.termux.execute.result_file_basename"

    invoke-static {p1, v6, v5}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileBasename:Ljava/lang/String;

    .line 408
    iget-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    const-string v6, "com.termux.execute.result_file_output_format"

    invoke-static {p1, v6, v5}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileOutputFormat:Ljava/lang/String;

    .line 409
    iget-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    const-string v6, "com.termux.execute.result_file_error_format"

    invoke-static {p1, v6, v5}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileErrorFormat:Ljava/lang/String;

    .line 410
    iget-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    const-string v6, "com.termux.execute.result_files_suffix"

    invoke-static {p1, v6, v5}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    .line 413
    :cond_6
    iget-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellCreateMode:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 414
    sget-object v3, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->ALWAYS:Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    invoke-virtual {v3}, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->getMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellCreateMode:Ljava/lang/String;

    .line 417
    :cond_7
    iget-object v3, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v3, v3, Lcom/termux/shared/termux/shell/TermuxShellManager;->mPendingPluginExecutionCommands:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v3, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    iget-object v5, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->equalsRunner(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 420
    invoke-direct {p0, v1}, Lcom/termux/app/TermuxService;->executeTermuxTaskCommand(Lcom/termux/shared/shell/command/ExecutionCommand;)V

    goto :goto_1

    .line 421
    :cond_8
    sget-object v3, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->TERMINAL_SESSION:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    iget-object v5, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->equalsRunner(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 422
    invoke-direct {p0, v1}, Lcom/termux/app/TermuxService;->executeTermuxSessionCommand(Lcom/termux/shared/shell/command/ExecutionCommand;)V

    goto :goto_1

    .line 424
    :cond_9
    iget-object v3, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    const v3, 0x7f120128

    invoke-virtual {p0, v3, v2}, Lcom/termux/app/TermuxService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 425
    .restart local v2    # "errmsg":Ljava/lang/String;
    sget-object v3, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v3}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 426
    invoke-static {p0, v0, v1, v4}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;Z)V

    .line 428
    .end local v2    # "errmsg":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private actionStopService()V
    .locals 1

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    .line 224
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->killAllTermuxExecutionCommands()V

    .line 225
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->requestStopService()V

    .line 226
    return-void
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 19

    .line 786
    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Lcom/termux/app/TermuxService;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 789
    .local v10, "res":Landroid/content/res/Resources;
    invoke-static/range {p0 .. p0}, Lcom/termux/app/TermuxActivity;->newInstance(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v11

    .line 790
    .local v11, "notificationIntent":Landroid/content/Intent;
    const/4 v12, 0x0

    invoke-static {v9, v12, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 794
    .local v13, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result v14

    .line 795
    .local v14, "sessionCount":I
    iget-object v0, v9, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v0, v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    .line 796
    .local v15, "taskCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    const-string v2, "s"

    const/4 v8, 0x1

    if-ne v14, v8, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "notificationText":Ljava/lang/String;
    if-lez v15, :cond_2

    .line 798
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " task"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v15, v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 801
    :cond_2
    iget-object v1, v9, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    move/from16 v16, v1

    .line 802
    .local v16, "wakeLockHeld":Z
    if-eqz v16, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (wake lock held)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object/from16 v17, v0

    .line 808
    .end local v0    # "notificationText":Ljava/lang/String;
    .local v17, "notificationText":Ljava/lang/String;
    if-eqz v16, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, -0x1

    const/4 v2, -0x1

    .line 812
    .local v2, "priority":I
    :goto_3
    const/4 v7, 0x0

    const/16 v18, 0x1

    const-string v1, "termux_notification_channel"

    const-string v3, "Termux"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, v17

    move-object v6, v13

    move/from16 v8, v18

    invoke-static/range {v0 .. v8}, Lcom/termux/shared/notification/NotificationUtils;->geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 816
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return-object v1

    .line 819
    :cond_6
    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 822
    const v1, 0x7f0800dd

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 825
    const v1, -0x9f8275

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 828
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 832
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/termux/app/TermuxService;

    invoke-direct {v1, v9, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.termux.service_stop"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 833
    .local v1, "exitIntent":Landroid/content/Intent;
    const v4, 0x7f12023e

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v12, v1, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const v6, 0x108001d

    invoke-virtual {v0, v6, v4, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 837
    if-eqz v16, :cond_7

    const-string v4, "com.termux.service_wake_unlock"

    goto :goto_4

    :cond_7
    const-string v4, "com.termux.service_wake_lock"

    .line 838
    .local v4, "newWakeAction":Ljava/lang/String;
    :goto_4
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v9, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 839
    .local v3, "toggleWakeLockIntent":Landroid/content/Intent;
    if-eqz v16, :cond_8

    const v5, 0x7f120240

    goto :goto_5

    :cond_8
    const v5, 0x7f12023f

    :goto_5
    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 840
    .local v5, "actionTitle":Ljava/lang/String;
    if-eqz v16, :cond_9

    const v6, 0x108001f

    goto :goto_6

    :cond_9
    const v6, 0x108002f

    .line 841
    .local v6, "actionIcon":I
    :goto_6
    invoke-static {v9, v12, v3, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v0, v6, v5, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 844
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    return-object v7
.end method

.method private executeTermuxSessionCommand(Lcom/termux/shared/shell/command/ExecutionCommand;)V
    .locals 7
    .param p1, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;

    .line 535
    if-nez p1, :cond_0

    return-void

    .line 537
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing foreground \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" TermuxSession command"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v0}, Lcom/termux/shared/shell/ShellUtils;->getExecutableBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    .line 543
    :cond_1
    const/4 v0, 0x0

    .line 544
    .local v0, "newTermuxSession":Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxService;->processShellCreateMode(Lcom/termux/shared/shell/command/ExecutionCommand;)Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    move-result-object v2

    .line 545
    .local v2, "shellCreateMode":Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;
    if-nez v2, :cond_2

    return-void

    .line 546
    :cond_2
    sget-object v3, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->NO_SHELL_WITH_NAME:Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    invoke-virtual {v3, v2}, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 547
    iget-object v3, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/termux/app/TermuxService;->getTermuxSessionForShellName(Ljava/lang/String;)Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;

    move-result-object v0

    .line 548
    const-string v3, "\""

    const-string v4, "\" shell name found for shell create mode \""

    if-eqz v0, :cond_3

    .line 549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Existing TermuxSession with \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No existing TermuxSession with \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 555
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxService;->createTermuxSession(Lcom/termux/shared/shell/command/ExecutionCommand;)Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;

    move-result-object v0

    .line 556
    :cond_5
    if-nez v0, :cond_6

    return-void

    .line 558
    :cond_6
    iget-object v1, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->sessionAction:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/termux/shared/data/DataUtils;->getIntFromString(Ljava/lang/String;I)I

    move-result v1

    .line 560
    invoke-virtual {v0}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v3

    .line 558
    invoke-direct {p0, v1, v3}, Lcom/termux/app/TermuxService;->handleSessionAction(ILcom/termux/terminal/TerminalSession;)V

    .line 561
    return-void
.end method

.method private executeTermuxTaskCommand(Lcom/termux/shared/shell/command/ExecutionCommand;)V
    .locals 7
    .param p1, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;

    .line 436
    if-nez p1, :cond_0

    return-void

    .line 438
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing background \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" TermuxTask command"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v0}, Lcom/termux/shared/shell/ShellUtils;->getExecutableBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    .line 444
    :cond_1
    const/4 v0, 0x0

    .line 445
    .local v0, "newTermuxTask":Lcom/termux/shared/shell/command/runner/app/AppShell;
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxService;->processShellCreateMode(Lcom/termux/shared/shell/command/ExecutionCommand;)Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    move-result-object v2

    .line 446
    .local v2, "shellCreateMode":Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;
    if-nez v2, :cond_2

    return-void

    .line 447
    :cond_2
    sget-object v3, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->NO_SHELL_WITH_NAME:Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    invoke-virtual {v3, v2}, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 448
    iget-object v3, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/termux/app/TermuxService;->getTermuxTaskForShellName(Ljava/lang/String;)Lcom/termux/shared/shell/command/runner/app/AppShell;

    move-result-object v0

    .line 449
    const-string v3, "\""

    const-string v4, "\" shell name found for shell create mode \""

    if-eqz v0, :cond_3

    .line 450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Existing TermuxTask with \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No existing TermuxTask with \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 456
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxService;->createTermuxTask(Lcom/termux/shared/shell/command/ExecutionCommand;)Lcom/termux/shared/shell/command/runner/app/AppShell;

    move-result-object v0

    .line 457
    :cond_5
    return-void
.end method

.method private handleSessionAction(ILcom/termux/terminal/TerminalSession;)V
    .locals 3
    .param p1, "sessionAction"    # I
    .param p2, "newTerminalSession"    # Lcom/termux/terminal/TerminalSession;

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing sessionAction \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" for session \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sessionAction: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\". Force using default sessionAction."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/termux/app/TermuxService;->handleSessionAction(ILcom/termux/terminal/TerminalSession;)V

    goto :goto_0

    .line 708
    :pswitch_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 709
    invoke-direct {p0, p2}, Lcom/termux/app/TermuxService;->setCurrentStoredTerminalSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_0

    .line 703
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/termux/app/TermuxService;->setCurrentStoredTerminalSession(Lcom/termux/terminal/TerminalSession;)V

    .line 704
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    if-eqz v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v0, p2}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_0

    .line 698
    :pswitch_2
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 699
    invoke-direct {p0, p2}, Lcom/termux/app/TermuxService;->setCurrentStoredTerminalSession(Lcom/termux/terminal/TerminalSession;)V

    .line 700
    :cond_0
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->startTermuxActivity()V

    .line 701
    goto :goto_0

    .line 692
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/termux/app/TermuxService;->setCurrentStoredTerminalSession(Lcom/termux/terminal/TerminalSession;)V

    .line 693
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v0, p2}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    .line 695
    :cond_1
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->startTermuxActivity()V

    .line 696
    nop

    .line 716
    :cond_2
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

.method private declared-synchronized killAllTermuxExecutionCommands()V
    .locals 8

    monitor-enter p0

    .line 266
    :try_start_0
    const-string v0, "TermuxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing TermuxSessions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v2, v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TermuxTasks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v2, v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxTasks:Ljava/util/List;

    .line 267
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PendingPluginExecutionCommands="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v2, v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->mPendingPluginExecutionCommands:Ljava/util/List;

    .line 268
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v1, v1, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 271
    .local v0, "termuxSessions":Ljava/util/List;, "Ljava/util/List<Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v2, v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxTasks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 272
    .local v1, "termuxTasks":Ljava/util/List;, "Ljava/util/List<Lcom/termux/shared/shell/command/runner/app/AppShell;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v3, v3, Lcom/termux/shared/termux/shell/TermuxShellManager;->mPendingPluginExecutionCommands:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 274
    .local v2, "pendingPluginExecutionCommands":Ljava/util/List;, "Ljava/util/List<Lcom/termux/shared/shell/command/ExecutionCommand;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    .line 275
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;

    invoke-virtual {v4}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->getExecutionCommand()Lcom/termux/shared/shell/command/ExecutionCommand;

    move-result-object v4

    .line 276
    .local v4, "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    iget-boolean v6, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    if-nez v6, :cond_1

    invoke-virtual {v4}, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommandWithPendingResult()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 277
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    .local v5, "processResult":Z
    :cond_1
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;

    invoke-virtual {v6, p0, v5}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->killIfExecuting(Landroid/content/Context;Z)V

    .line 278
    if-nez v5, :cond_2

    .line 279
    iget-object v6, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v6, v6, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 274
    .end local v4    # "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    .end local v3    # "i":I
    .end local v5    # "processResult":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 284
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/termux/shared/shell/command/runner/app/AppShell;

    invoke-virtual {v4}, Lcom/termux/shared/shell/command/runner/app/AppShell;->getExecutionCommand()Lcom/termux/shared/shell/command/ExecutionCommand;

    move-result-object v4

    .line 285
    .restart local v4    # "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    invoke-virtual {v4}, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommandWithPendingResult()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 286
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/termux/shared/shell/command/runner/app/AppShell;

    invoke-virtual {v6, p0, v5}, Lcom/termux/shared/shell/command/runner/app/AppShell;->killIfExecuting(Landroid/content/Context;Z)V

    goto :goto_3

    .line 288
    :cond_4
    iget-object v6, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v6, v6, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 283
    .end local v4    # "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 291
    .end local v3    # "i":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 292
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/termux/shared/shell/command/ExecutionCommand;

    .line 293
    .restart local v4    # "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    invoke-virtual {v4}, Lcom/termux/shared/shell/command/ExecutionCommand;->shouldNotProcessResults()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommandWithPendingResult()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 294
    sget-object v5, Lcom/termux/shared/errors/Errno;->ERRNO_CANCELLED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v5}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v5

    const v6, 0x7f120105

    invoke-virtual {p0, v6}, Lcom/termux/app/TermuxService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 295
    const-string v5, "TermuxService"

    invoke-static {p0, v5, v4}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->processPluginExecutionCommandResult(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v4    # "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 299
    .end local v3    # "i":I
    :cond_7
    monitor-exit p0

    return-void

    .line 265
    .end local v0    # "termuxSessions":Ljava/util/List;, "Ljava/util/List<Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;>;"
    .end local v1    # "termuxTasks":Ljava/util/List;, "Ljava/util/List<Lcom/termux/shared/shell/command/runner/app/AppShell;>;"
    .end local v2    # "pendingPluginExecutionCommands":Ljava/util/List;, "Ljava/util/List<Lcom/termux/shared/shell/command/ExecutionCommand;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private processShellCreateMode(Lcom/termux/shared/shell/command/ExecutionCommand;)Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;
    .locals 5
    .param p1, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;

    .line 669
    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->ALWAYS:Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    iget-object v1, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellCreateMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->equalsMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->ALWAYS:Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    return-object v0

    .line 671
    :cond_0
    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->NO_SHELL_WITH_NAME:Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    iget-object v1, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellCreateMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->equalsMode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "TermuxService"

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 672
    iget-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    invoke-static {v0}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellCreateMode:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    .line 674
    const v0, 0x7f120124

    invoke-virtual {p0, v0, v2}, Lcom/termux/app/TermuxService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-static {p0, v3, p1, v4, v0}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->setAndProcessPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;ZLjava/lang/String;)V

    .line 675
    return-object v1

    .line 677
    :cond_1
    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;->NO_SHELL_WITH_NAME:Lcom/termux/shared/shell/command/ExecutionCommand$ShellCreateMode;

    return-object v0

    .line 680
    :cond_2
    iget-object v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellCreateMode:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    .line 681
    const v0, 0x7f120129

    invoke-virtual {p0, v0, v2}, Lcom/termux/app/TermuxService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-static {p0, v3, p1, v4, v0}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->setAndProcessPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;ZLjava/lang/String;)V

    .line 682
    return-object v1
.end method

.method private requestStopService()V
    .locals 2

    .line 216
    const-string v0, "TermuxService"

    const-string v1, "Requesting to stop service"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->runStopForeground()V

    .line 218
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->stopSelf()V

    .line 219
    return-void
.end method

.method private runStartForeground()V
    .locals 2

    .line 205
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->setupNotificationChannel()V

    .line 206
    const/16 v0, 0x539

    invoke-direct {p0}, Lcom/termux/app/TermuxService;->buildNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/TermuxService;->startForeground(ILandroid/app/Notification;)V

    .line 207
    return-void
.end method

.method private runStopForeground()V
    .locals 1

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->stopForeground(Z)V

    .line 212
    return-void
.end method

.method private setCurrentStoredTerminalSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 2
    .param p1, "terminalSession"    # Lcom/termux/terminal/TerminalSession;

    .line 869
    if-nez p1, :cond_0

    return-void

    .line 871
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    .line 872
    .local v0, "preferences":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    if-nez v0, :cond_1

    return-void

    .line 873
    :cond_1
    iget-object v1, p1, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->setCurrentSession(Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method private setupNotificationChannel()V
    .locals 3

    .line 848
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 850
    :cond_0
    const-string v0, "Termux App"

    const/4 v1, 0x2

    const-string v2, "termux_notification_channel"

    invoke-static {p0, v2, v0, v1}, Lcom/termux/shared/notification/NotificationUtils;->setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 852
    return-void
.end method

.method private startTermuxActivity()V
    .locals 3

    .line 723
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/termux/shared/android/PermissionUtils;->validateDisplayOverOtherAppsPermissionForPostAndroid10(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    invoke-static {p0}, Lcom/termux/app/TermuxActivity;->startTermuxActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 726
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v1

    .line 727
    .local v1, "preferences":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    if-nez v1, :cond_1

    return-void

    .line 728
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->arePluginErrorNotificationsEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 729
    const v2, 0x7f1200ff

    invoke-virtual {p0, v2}, Lcom/termux/app/TermuxService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 731
    .end local v1    # "preferences":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized updateNotification()V
    .locals 3

    monitor-enter p0

    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v0, v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v0, v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->requestStopService()V

    goto :goto_0

    .line 860
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/termux/app/TermuxService;->buildNotification()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x539

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    :goto_0
    monitor-exit p0

    return-void

    .line 855
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized createTermuxSession(Lcom/termux/shared/shell/command/ExecutionCommand;)Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    .locals 8
    .param p1, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;

    monitor-enter p0

    .line 579
    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    .line 581
    :cond_0
    :try_start_0
    const-string v1, "TermuxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" TermuxSession"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    sget-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->TERMINAL_SESSION:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    iget-object v2, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->equalsRunner(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 584
    const-string v1, "TermuxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring wrong runner \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" command passed to createTermuxSession()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    monitor-exit p0

    return-object v0

    .line 588
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->setShellCommandShellEnvironment:Z

    .line 589
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mProperties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getTerminalTranscriptRows()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->terminalTranscriptRows:Ljava/lang/Integer;

    .line 591
    invoke-static {}, Lcom/termux/shared/logger/Logger;->getLogLevel()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 592
    const-string v1, "TermuxService"

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logVerboseExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_2
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getTermuxTerminalSessionClient()Lcom/termux/shared/termux/terminal/TermuxTerminalSessionClientBase;

    move-result-object v3

    new-instance v5, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;

    invoke-direct {v5}, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;-><init>()V

    iget-boolean v7, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommand:Z

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->execute(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/terminal/TerminalSessionClient;Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession$TermuxSessionClient;Lcom/termux/shared/shell/command/environment/IShellEnvironment;Ljava/util/HashMap;Z)Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;

    move-result-object v1

    .line 599
    .local v1, "newTermuxSession":Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 600
    const-string v3, "TermuxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to execute new TermuxSession command for:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-boolean v3, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v3, :cond_3

    .line 603
    const-string v3, "TermuxService"

    invoke-static {p0, v3, p1, v2}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;Z)V

    goto :goto_0

    .line 605
    :cond_3
    const-string v2, "TermuxService"

    const-string v3, "Set log level to debug or higher to see error in logs"

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v2, "TermuxService"

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logErrorPrivateExtended(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    :goto_0
    monitor-exit p0

    return-object v0

    .line 611
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v0, v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    iget-boolean v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v0, :cond_5

    .line 616
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v0, v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mPendingPluginExecutionCommands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 620
    :cond_5
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    if-eqz v0, :cond_6

    .line 621
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->termuxSessionListNotifyUpdated()V

    .line 623
    :cond_6
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    .line 626
    invoke-static {p0, v2}, Lcom/termux/app/TermuxActivity;->updateTermuxActivityStyling(Landroid/content/Context;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 628
    monitor-exit p0

    return-object v1

    .line 578
    .end local v1    # "newTermuxSession":Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    .end local p1    # "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public createTermuxSession(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    .locals 9
    .param p1, "executablePath"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/String;
    .param p3, "stdin"    # Ljava/lang/String;
    .param p4, "workingDirectory"    # Ljava/lang/String;
    .param p5, "isFailSafe"    # Z
    .param p6, "sessionName"    # Ljava/lang/String;

    .line 570
    new-instance v8, Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-static {}, Lcom/termux/shared/termux/shell/TermuxShellManager;->getNextShellId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->TERMINAL_SESSION:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    .line 571
    invoke-virtual {v0}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/termux/shared/shell/command/ExecutionCommand;-><init>(Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 572
    .local v0, "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    iput-object p6, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    .line 573
    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxService;->createTermuxSession(Lcom/termux/shared/shell/command/ExecutionCommand;)Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized createTermuxTask(Lcom/termux/shared/shell/command/ExecutionCommand;)Lcom/termux/shared/shell/command/runner/app/AppShell;
    .locals 7
    .param p1, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;

    monitor-enter p0

    .line 469
    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    .line 471
    :cond_0
    :try_start_0
    const-string v1, "TermuxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" TermuxTask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    sget-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    iget-object v2, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->equalsRunner(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 474
    const-string v1, "TermuxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring wrong runner \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" command passed to createTermuxTask()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    monitor-exit p0

    return-object v0

    .line 478
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->setShellCommandShellEnvironment:Z

    .line 480
    invoke-static {}, Lcom/termux/shared/logger/Logger;->getLogLevel()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 481
    const-string v1, "TermuxService"

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logVerboseExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_2
    new-instance v4, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;

    invoke-direct {v4}, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lcom/termux/shared/shell/command/runner/app/AppShell;->execute(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;Lcom/termux/shared/shell/command/environment/IShellEnvironment;Ljava/util/HashMap;Z)Lcom/termux/shared/shell/command/runner/app/AppShell;

    move-result-object v1

    .line 485
    .local v1, "newTermuxTask":Lcom/termux/shared/shell/command/runner/app/AppShell;
    if-nez v1, :cond_4

    .line 486
    const-string v2, "TermuxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute new TermuxTask command for:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-boolean v2, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v2, :cond_3

    .line 489
    const-string v2, "TermuxService"

    const/4 v3, 0x0

    invoke-static {p0, v2, p1, v3}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;Z)V

    goto :goto_0

    .line 491
    :cond_3
    const-string v2, "TermuxService"

    const-string v3, "Set log level to debug or higher to see error in logs"

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v2, "TermuxService"

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logErrorPrivateExtended(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    :goto_0
    monitor-exit p0

    return-object v0

    .line 497
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v0, v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-boolean v0, p1, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v0, :cond_5

    .line 502
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v0, v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mPendingPluginExecutionCommands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 504
    :cond_5
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    monitor-exit p0

    return-object v1

    .line 468
    .end local v1    # "newTermuxTask":Lcom/termux/shared/shell/command/runner/app/AppShell;
    .end local p1    # "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public createTermuxTask(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/shell/command/runner/app/AppShell;
    .locals 9
    .param p1, "executablePath"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/String;
    .param p3, "stdin"    # Ljava/lang/String;
    .param p4, "workingDirectory"    # Ljava/lang/String;

    .line 462
    new-instance v8, Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-static {}, Lcom/termux/shared/termux/shell/TermuxShellManager;->getNextShellId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    .line 463
    invoke-virtual {v0}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/termux/shared/shell/command/ExecutionCommand;-><init>(Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 462
    invoke-virtual {p0, v8}, Lcom/termux/app/TermuxService;->createTermuxTask(Lcom/termux/shared/shell/command/ExecutionCommand;)Lcom/termux/shared/shell/command/runner/app/AppShell;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getIndexOfSession(Lcom/termux/terminal/TerminalSession;)I
    .locals 3
    .param p1, "terminalSession"    # Lcom/termux/terminal/TerminalSession;

    monitor-enter p0

    .line 913
    const/4 v0, -0x1

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    .line 915
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v2, v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 916
    iget-object v2, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v2, v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;

    invoke-virtual {v2}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 917
    monitor-exit p0

    return v1

    .line 915
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 919
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_2
    monitor-exit p0

    return v0

    .line 912
    .end local p1    # "terminalSession":Lcom/termux/terminal/TerminalSession;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getLastTermuxSession()Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    .locals 2

    monitor-enter p0

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v0, v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v0, v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    iget-object v1, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v1, v1, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 909
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getTerminalSessionForHandle(Ljava/lang/String;)Lcom/termux/terminal/TerminalSession;
    .locals 4
    .param p1, "sessionHandle"    # Ljava/lang/String;

    monitor-enter p0

    .line 924
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v1, v1, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 925
    iget-object v2, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v2, v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;

    invoke-virtual {v2}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    .line 926
    .local v2, "terminalSession":Lcom/termux/terminal/TerminalSession;
    iget-object v3, v2, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 927
    monitor-exit p0

    return-object v2

    .line 924
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 929
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "terminalSession":Lcom/termux/terminal/TerminalSession;
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 923
    .end local p1    # "sessionHandle":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getTermuxSession(I)Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    .locals 1
    .param p1, "index"    # I

    monitor-enter p0

    .line 890
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v0, v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v0, v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 889
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 893
    .restart local p1    # "index":I
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getTermuxSessionForShellName(Ljava/lang/String;)Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 945
    :try_start_0
    invoke-static {p1}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 947
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_1
    iget-object v2, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v2, v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 948
    iget-object v3, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v3, v3, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;

    .line 949
    .local v3, "termuxSession":Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    invoke-virtual {v3}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->getExecutionCommand()Lcom/termux/shared/shell/command/ExecutionCommand;

    move-result-object v4

    iget-object v4, v4, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    .line 950
    .local v4, "shellName":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 951
    monitor-exit p0

    return-object v3

    .line 947
    .end local v4    # "shellName":Ljava/lang/String;
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 953
    .end local v0    # "i":I
    .end local v2    # "len":I
    .end local v3    # "termuxSession":Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 944
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized getTermuxSessionForTerminalSession(Lcom/termux/terminal/TerminalSession;)Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    .locals 3
    .param p1, "terminalSession"    # Lcom/termux/terminal/TerminalSession;

    monitor-enter p0

    .line 898
    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    .line 900
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v2, v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 901
    iget-object v2, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v2, v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;

    invoke-virtual {v2}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 902
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v0, v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 900
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 905
    .end local v1    # "i":I
    :cond_2
    monitor-exit p0

    return-object v0

    .line 897
    .end local p1    # "terminalSession":Lcom/termux/terminal/TerminalSession;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getTermuxSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v0, v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 885
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getTermuxSessionsSize()I
    .locals 1

    monitor-enter p0

    .line 881
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v0, v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 881
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getTermuxTaskForShellName(Ljava/lang/String;)Lcom/termux/shared/shell/command/runner/app/AppShell;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 933
    :try_start_0
    invoke-static {p1}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 935
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_1
    iget-object v2, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v2, v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 936
    iget-object v3, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v3, v3, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/termux/shared/shell/command/runner/app/AppShell;

    .line 937
    .local v3, "appShell":Lcom/termux/shared/shell/command/runner/app/AppShell;
    invoke-virtual {v3}, Lcom/termux/shared/shell/command/runner/app/AppShell;->getExecutionCommand()Lcom/termux/shared/shell/command/ExecutionCommand;

    move-result-object v4

    iget-object v4, v4, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    .line 938
    .local v4, "shellName":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 939
    monitor-exit p0

    return-object v3

    .line 935
    .end local v4    # "shellName":Ljava/lang/String;
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 941
    .end local v0    # "i":I
    .end local v2    # "len":I
    .end local v3    # "appShell":Lcom/termux/shared/shell/command/runner/app/AppShell;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 932
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized getTermuxTerminalSessionClient()Lcom/termux/shared/termux/terminal/TermuxTerminalSessionClientBase;
    .locals 1

    monitor-enter p0

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 752
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionServiceClient:Lcom/termux/app/terminal/TermuxTerminalSessionServiceClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 748
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized isTermuxSessionsEmpty()Z
    .locals 1

    monitor-enter p0

    .line 877
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v0, v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 877
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method synthetic lambda$onAppShellExited$0$com-termux-app-TermuxService(Lcom/termux/shared/shell/command/runner/app/AppShell;)V
    .locals 3
    .param p1, "termuxTask"    # Lcom/termux/shared/shell/command/runner/app/AppShell;

    .line 513
    if-eqz p1, :cond_1

    .line 514
    invoke-virtual {p1}, Lcom/termux/shared/shell/command/runner/app/AppShell;->getExecutionCommand()Lcom/termux/shared/shell/command/ExecutionCommand;

    move-result-object v0

    .line 516
    .local v0, "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The onTermuxTaskExited() callback called for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" TermuxTask command"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TermuxService"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v1, :cond_0

    .line 520
    invoke-static {p0, v2, v0}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->processPluginExecutionCommandResult(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v1, v1, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 525
    .end local v0    # "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    :cond_1
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    .line 526
    return-void
.end method

.method public onAppShellExited(Lcom/termux/shared/shell/command/runner/app/AppShell;)V
    .locals 2
    .param p1, "termuxTask"    # Lcom/termux/shared/shell/command/runner/app/AppShell;

    .line 512
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/app/TermuxService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/termux/app/TermuxService$$ExternalSyntheticLambda0;-><init>(Lcom/termux/app/TermuxService;Lcom/termux/shared/shell/command/runner/app/AppShell;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 527
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 187
    const-string v0, "TermuxService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 112
    const-string v0, "TermuxService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getProperties()Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mProperties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    .line 118
    invoke-static {}, Lcom/termux/shared/termux/shell/TermuxShellManager;->getShellManager()Lcom/termux/shared/termux/shell/TermuxShellManager;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    .line 120
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->runStartForeground()V

    .line 122
    invoke-static {p0}, Lcom/termux/app/event/SystemEventReceiver;->registerPackageUpdateEvents(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 170
    const-string v0, "TermuxService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/termux/shared/termux/shell/TermuxShellUtils;->clearTermuxTMPDIR(Z)V

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/termux/app/TermuxService;->actionReleaseWakeLock(Z)V

    .line 175
    iget-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->killAllTermuxExecutionCommands()V

    .line 178
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/termux/shell/TermuxShellManager;->onAppExit(Landroid/content/Context;)V

    .line 180
    invoke-static {p0}, Lcom/termux/app/event/SystemEventReceiver;->unregisterPackageUpdateEvents(Landroid/content/Context;)V

    .line 182
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->runStopForeground()V

    .line 183
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 128
    const-string v0, "onStartCommand"

    const-string v1, "TermuxService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->runStartForeground()V

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "action":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent Received:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/termux/shared/data/IntentUtils;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logVerboseExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_0
    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "com.termux.service_wake_lock"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_1
    const-string v3, "com.termux.service_execute"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_2
    const-string v3, "com.termux.service_wake_unlock"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "com.termux.service_stop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid action: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 154
    :pswitch_0
    const-string v3, "ACTION_SERVICE_EXECUTE intent received"

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxService;->actionServiceExecute(Landroid/content/Intent;)V

    .line 156
    goto :goto_2

    .line 150
    :pswitch_1
    const-string v3, "ACTION_WAKE_UNLOCK intent received"

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0, v4}, Lcom/termux/app/TermuxService;->actionReleaseWakeLock(Z)V

    .line 152
    goto :goto_2

    .line 146
    :pswitch_2
    const-string v3, "ACTION_WAKE_LOCK intent received"

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->actionAcquireWakeLock()V

    .line 148
    goto :goto_2

    .line 142
    :pswitch_3
    const-string v3, "ACTION_STOP_SERVICE intent received"

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->actionStopService()V

    .line 144
    nop

    .line 165
    :cond_2
    :goto_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66decd22 -> :sswitch_3
        -0x67ff01d -> :sswitch_2
        0x98f19 -> :sswitch_1
        0x7b0c918a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTermuxSessionExited(Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;)V
    .locals 3
    .param p1, "termuxSession"    # Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;

    .line 644
    if-eqz p1, :cond_1

    .line 645
    invoke-virtual {p1}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->getExecutionCommand()Lcom/termux/shared/shell/command/ExecutionCommand;

    move-result-object v0

    .line 647
    .local v0, "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The onTermuxSessionExited() callback called for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" TermuxSession command"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TermuxService"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v1, :cond_0

    .line 651
    invoke-static {p0, v2, v0}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->processPluginExecutionCommandResult(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 653
    :cond_0
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v1, v1, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 657
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    if-eqz v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v1}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->termuxSessionListNotifyUpdated()V

    .line 661
    .end local v0    # "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    :cond_1
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    .line 662
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 193
    const-string v0, "TermuxService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->unsetTermuxTerminalSessionClient()V

    .line 200
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized removeTermuxSession(Lcom/termux/terminal/TerminalSession;)I
    .locals 2
    .param p1, "sessionToRemove"    # Lcom/termux/terminal/TerminalSession;

    monitor-enter p0

    .line 633
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxService;->getIndexOfSession(Lcom/termux/terminal/TerminalSession;)I

    move-result v0

    .line 635
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 636
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v1, v1, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;

    invoke-virtual {v1}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_0
    monitor-exit p0

    return v0

    .line 632
    .end local v0    # "index":I
    .end local p1    # "sessionToRemove":Lcom/termux/terminal/TerminalSession;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setTermuxTerminalSessionClient(Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;)V
    .locals 3
    .param p1, "termuxTerminalSessionActivityClient"    # Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    monitor-enter p0

    .line 764
    :try_start_0
    iput-object p1, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    .line 766
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v1, v1, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 767
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v1, v1, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;

    invoke-virtual {v1}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalSession;->updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_0
    monitor-exit p0

    return-void

    .line 763
    .end local p1    # "termuxTerminalSessionActivityClient":Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized unsetTermuxTerminalSessionClient()V
    .locals 3

    monitor-enter p0

    .line 775
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v1, v1, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mShellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    iget-object v1, v1, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;

    invoke-virtual {v1}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionServiceClient:Lcom/termux/app/terminal/TermuxTerminalSessionServiceClient;

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalSession;->updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 778
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/termux/app/TermuxService;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    monitor-exit p0

    return-void

    .line 774
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public wantsToStop()Z
    .locals 1

    .line 959
    iget-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    return v0
.end method

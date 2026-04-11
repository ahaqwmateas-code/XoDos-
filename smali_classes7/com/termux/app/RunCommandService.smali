.class public Lcom/termux/app/RunCommandService;
.super Landroid/app/Service;
.source "RunCommandService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/RunCommandService$LocalBinder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RunCommandService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    new-instance v0, Lcom/termux/app/RunCommandService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/termux/app/RunCommandService$LocalBinder;-><init>(Lcom/termux/app/RunCommandService;)V

    iput-object v0, p0, Lcom/termux/app/RunCommandService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 9

    .line 262
    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v1, "termux_run_command_notification_channel"

    const/4 v2, -0x1

    const-string v3, "Termux RunCommandService"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/termux/shared/notification/NotificationUtils;->geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 266
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 269
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 272
    const v1, 0x7f0800dd

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 275
    const v1, -0x9f8275

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 277
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private runStartForeground()V
    .locals 2

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/termux/app/RunCommandService;->setupNotificationChannel()V

    .line 250
    const/16 v0, 0x53a

    invoke-direct {p0}, Lcom/termux/app/RunCommandService;->buildNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/RunCommandService;->startForeground(ILandroid/app/Notification;)V

    .line 252
    :cond_0
    return-void
.end method

.method private runStopForeground()V
    .locals 2

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 256
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/app/RunCommandService;->stopForeground(Z)V

    .line 258
    :cond_0
    return-void
.end method

.method private setupNotificationChannel()V
    .locals 3

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 283
    :cond_0
    const-string v0, "Termux RunCommandService"

    const/4 v1, 0x2

    const-string v2, "termux_run_command_notification_channel"

    invoke-static {p0, v2, v0, v1}, Lcom/termux/shared/notification/NotificationUtils;->setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 285
    return-void
.end method

.method private stopService()I
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/termux/app/RunCommandService;->runStopForeground()V

    .line 244
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 48
    iget-object v0, p0, Lcom/termux/app/RunCommandService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 53
    const-string v0, "RunCommandService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/termux/app/RunCommandService;->runStartForeground()V

    .line 55
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "onStartCommand"

    const-string v3, "RunCommandService"

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-nez v1, :cond_0

    const/4 v2, 0x2

    return v2

    .line 64
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->runStartForeground()V

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent Received:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/termux/shared/data/IntentUtils;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logVerboseExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v2, Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-direct {v2}, Lcom/termux/shared/shell/command/ExecutionCommand;-><init>()V

    .line 69
    .local v2, "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "https://github.com/termux/termux-app/wiki/RUN_COMMAND-Intent"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f120119

    invoke-virtual {v0, v6, v5}, Lcom/termux/app/RunCommandService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->pluginAPIHelp:Ljava/lang/String;

    .line 75
    const-string v5, "com.termux.RUN_COMMAND"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v7

    const v5, 0x7f12011b

    invoke-virtual {v0, v5, v4}, Lcom/termux/app/RunCommandService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "errmsg":Ljava/lang/String;
    sget-object v5, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v5}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 78
    invoke-static {v0, v3, v2, v7}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;Z)V

    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->stopService()I

    move-result v3

    return v3

    .line 82
    .end local v4    # "errmsg":Ljava/lang/String;
    :cond_1
    const-string v5, "com.termux.RUN_COMMAND_PATH"

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    .line 83
    .local v8, "executableExtra":Ljava/lang/String;
    const-string v9, "com.termux.RUN_COMMAND_ARGUMENTS"

    invoke-static {v1, v9, v6}, Lcom/termux/shared/data/IntentUtils;->getStringArrayExtraIfSet(Landroid/content/Intent;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->arguments:[Ljava/lang/String;

    .line 95
    const-string v9, "com.termux.RUN_COMMAND_REPLACE_COMMA_ALTERNATIVE_CHARS_IN_ARGUMENTS"

    invoke-virtual {v1, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 96
    .local v9, "replaceCommaAlternativeCharsInArguments":Z
    if-eqz v9, :cond_3

    .line 97
    const-string v10, "com.termux.RUN_COMMAND_COMMA_ALTERNATIVE_CHARS_IN_ARGUMENTS"

    invoke-static {v1, v10, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, "commaAlternativeCharsInArguments":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 99
    const-string v10, "\u201a"

    .line 101
    :cond_2
    iget-object v11, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->arguments:[Ljava/lang/String;

    const-string v12, ","

    invoke-static {v11, v10, v12}, Lcom/termux/shared/data/DataUtils;->replaceSubStringsInStringArrayItems([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v10    # "commaAlternativeCharsInArguments":Ljava/lang/String;
    :cond_3
    const-string v10, "com.termux.RUN_COMMAND_STDIN"

    invoke-static {v1, v10, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->stdin:Ljava/lang/String;

    .line 105
    const-string v10, "com.termux.RUN_COMMAND_WORKDIR"

    invoke-static {v1, v10, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 108
    nop

    .line 109
    const-string v10, "com.termux.RUN_COMMAND_BACKGROUND"

    invoke-virtual {v1, v10, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    goto :goto_0

    :cond_4
    sget-object v10, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->TERMINAL_SESSION:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    :goto_0
    invoke-virtual {v10}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->getName()Ljava/lang/String;

    move-result-object v10

    .line 108
    const-string v11, "com.termux.RUN_COMMAND_RUNNER"

    invoke-static {v1, v11, v10}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    .line 110
    iget-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-static {v10}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->runnerOf(Ljava/lang/String;)Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    move-result-object v10

    if-nez v10, :cond_5

    .line 111
    iget-object v5, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v7

    const v5, 0x7f12011a

    invoke-virtual {v0, v5, v4}, Lcom/termux/app/RunCommandService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .restart local v4    # "errmsg":Ljava/lang/String;
    sget-object v5, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v5}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 113
    invoke-static {v0, v3, v2, v7}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;Z)V

    .line 114
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->stopService()I

    move-result v3

    return v3

    .line 117
    .end local v4    # "errmsg":Ljava/lang/String;
    :cond_5
    const-string v10, "com.termux.RUN_COMMAND_BACKGROUND_CUSTOM_LOG_LEVEL"

    invoke-static {v1, v10, v6}, Lcom/termux/shared/data/IntentUtils;->getIntegerExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    .line 118
    const-string v10, "com.termux.RUN_COMMAND_SESSION_ACTION"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->sessionAction:Ljava/lang/String;

    .line 119
    const-string v10, "com.termux.RUN_COMMAND_SHELL_NAME"

    invoke-static {v1, v10, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    .line 120
    const-string v10, "com.termux.RUN_COMMAND_SHELL_CREATE_MODE"

    invoke-static {v1, v10, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->shellCreateMode:Ljava/lang/String;

    .line 121
    const-string v10, "com.termux.RUN_COMMAND_COMMAND_LABEL"

    const-string v11, "RUN_COMMAND Execution Intent Command"

    invoke-static {v1, v10, v11}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 122
    const-string v10, "com.termux.RUN_COMMAND_COMMAND_DESCRIPTION"

    invoke-static {v1, v10, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->commandDescription:Ljava/lang/String;

    .line 123
    const-string v10, "com.termux.RUN_COMMAND_COMMAND_HELP"

    invoke-static {v1, v10, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->commandHelp:Ljava/lang/String;

    .line 124
    iput-boolean v4, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommand:Z

    .line 125
    iget-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    const-string v11, "com.termux.RUN_COMMAND_PENDING_INTENT"

    invoke-virtual {v1, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    iput-object v11, v10, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    .line 126
    iget-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    const-string v11, "com.termux.RUN_COMMAND_RESULT_DIRECTORY"

    invoke-static {v1, v11, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    .line 127
    iget-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v10, v10, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 128
    iget-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    const-string v11, "com.termux.RUN_COMMAND_RESULT_SINGLE_FILE"

    invoke-virtual {v1, v11, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v10, Lcom/termux/shared/shell/command/result/ResultConfig;->resultSingleFile:Z

    .line 129
    iget-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    const-string v11, "com.termux.RUN_COMMAND_RESULT_FILE_BASENAME"

    invoke-static {v1, v11, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileBasename:Ljava/lang/String;

    .line 130
    iget-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    const-string v11, "com.termux.RUN_COMMAND_RESULT_FILE_OUTPUT_FORMAT"

    invoke-static {v1, v11, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileOutputFormat:Ljava/lang/String;

    .line 131
    iget-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    const-string v11, "com.termux.RUN_COMMAND_RESULT_FILE_ERROR_FORMAT"

    invoke-static {v1, v11, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileErrorFormat:Ljava/lang/String;

    .line 132
    iget-object v10, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    const-string v11, "com.termux.RUN_COMMAND_RESULT_FILES_SUFFIX"

    invoke-static {v1, v11, v6}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    .line 140
    :cond_6
    invoke-static {v0, v3}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->checkIfAllowExternalAppsPolicyIsViolated(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 141
    .local v10, "errmsg":Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 142
    sget-object v5, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v5}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v5

    invoke-virtual {v2, v5, v10}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 143
    invoke-static {v0, v3, v2, v4}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;Z)V

    .line 144
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->stopService()I

    move-result v3

    return v3

    .line 150
    :cond_7
    iget-object v11, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    if-eqz v11, :cond_f

    iget-object v11, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    goto/16 :goto_2

    .line 158
    :cond_8
    iget-object v5, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/termux/shared/termux/file/TermuxFileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    .line 162
    iget-object v12, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v11, "executable"

    const/4 v13, 0x0

    const-string v14, "r-x"

    const/4 v15, 0x1

    invoke-static/range {v11 .. v17}, Lcom/termux/shared/file/FileUtils;->validateRegularFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/termux/shared/errors/Error;

    move-result-object v5

    .line 165
    .local v5, "error":Lcom/termux/shared/errors/Error;
    if-eqz v5, :cond_9

    .line 166
    invoke-virtual {v2, v5}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(Lcom/termux/shared/errors/Error;)Z

    .line 167
    invoke-static {v0, v3, v2, v7}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;Z)V

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->stopService()I

    move-result v3

    return v3

    .line 174
    :cond_9
    iget-object v11, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    if-eqz v11, :cond_a

    iget-object v11, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 176
    iget-object v11, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-static {v11, v6, v4}, Lcom/termux/shared/termux/file/TermuxFileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 183
    iget-object v12, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v11, "working"

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v11 .. v17}, Lcom/termux/shared/termux/file/TermuxFileUtils;->validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;ZZZZZ)Lcom/termux/shared/errors/Error;

    move-result-object v5

    .line 186
    if-eqz v5, :cond_a

    .line 187
    invoke-virtual {v2, v5}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(Lcom/termux/shared/errors/Error;)Z

    .line 188
    invoke-static {v0, v3, v2, v7}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;Z)V

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->stopService()I

    move-result v3

    return v3

    .line 197
    :cond_a
    invoke-static {v8}, Lcom/termux/shared/termux/file/TermuxFileUtils;->getExpandedTermuxPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    .end local v8    # "executableExtra":Ljava/lang/String;
    .local v4, "executableExtra":Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v7

    sget-object v8, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v7, v8, :cond_b

    .line 199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The executableExtra path \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" is a symlink so using it instead of the canonical path \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iput-object v4, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    .line 203
    :cond_b
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    const-string v8, "com.termux.file"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    iget-object v8, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->executableUri:Landroid/net/Uri;

    .line 205
    invoke-virtual {v2}, Lcom/termux/shared/shell/command/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/termux/shared/logger/Logger;->logVerboseExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.termux.service_execute"

    iget-object v8, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->executableUri:Landroid/net/Uri;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 209
    .local v3, "execIntent":Landroid/content/Intent;
    const-class v7, Lcom/termux/app/TermuxService;

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 210
    const-string v7, "com.termux.execute.arguments"

    iget-object v8, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->arguments:[Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v7, "com.termux.execute.stdin"

    iget-object v8, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->stdin:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v7, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    if-eqz v7, :cond_c

    iget-object v7, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "com.termux.execute.cwd"

    iget-object v8, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    :cond_c
    const-string v7, "com.termux.execute.runner"

    iget-object v8, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v7, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    invoke-static {v7, v6}, Lcom/termux/shared/data/DataUtils;->getStringFromInteger(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.termux.execute.background_custom_log_level"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v6, "com.termux.execute.session_action"

    iget-object v7, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->sessionAction:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v6, "com.termux.execute.shell_name"

    iget-object v7, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v6, "com.termux.execute.shell_create_mode"

    iget-object v7, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->shellCreateMode:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v6, "com.termux.execute.command_label"

    iget-object v7, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v6, "com.termux.execute.command_description"

    iget-object v7, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->commandDescription:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v6, "com.termux.execute.command_help"

    iget-object v7, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->commandHelp:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v6, "com.termux.execute.plugin_api_help"

    iget-object v7, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->pluginAPIHelp:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v6, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v6, v6, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    const-string v7, "pendingIntent"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    iget-object v6, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v6, v6, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    const-string v7, "com.termux.execute.result_directory"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object v6, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v6, v6, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 225
    iget-object v6, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-boolean v6, v6, Lcom/termux/shared/shell/command/result/ResultConfig;->resultSingleFile:Z

    const-string v7, "com.termux.execute.result_single_file"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    iget-object v6, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v6, v6, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileBasename:Ljava/lang/String;

    const-string v7, "com.termux.execute.result_file_basename"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object v6, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v6, v6, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileOutputFormat:Ljava/lang/String;

    const-string v7, "com.termux.execute.result_file_output_format"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v6, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v6, v6, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileErrorFormat:Ljava/lang/String;

    const-string v7, "com.termux.execute.result_file_error_format"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v6, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v6, v6, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    const-string v7, "com.termux.execute.result_files_suffix"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    :cond_d
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_e

    .line 234
    invoke-virtual {v0, v3}, Lcom/termux/app/RunCommandService;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 236
    :cond_e
    invoke-virtual {v0, v3}, Lcom/termux/app/RunCommandService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 239
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->stopService()I

    move-result v6

    return v6

    .line 151
    .end local v3    # "execIntent":Landroid/content/Intent;
    .end local v4    # "executableExtra":Ljava/lang/String;
    .end local v5    # "error":Lcom/termux/shared/errors/Error;
    .restart local v8    # "executableExtra":Ljava/lang/String;
    :cond_f
    :goto_2
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v7

    const v5, 0x7f12011c

    invoke-virtual {v0, v5, v4}, Lcom/termux/app/RunCommandService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .end local v10    # "errmsg":Ljava/lang/String;
    .local v4, "errmsg":Ljava/lang/String;
    sget-object v5, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v5}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 153
    invoke-static {v0, v3, v2, v7}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;Z)V

    .line 154
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->stopService()I

    move-result v3

    return v3
.end method

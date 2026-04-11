.class public Lcom/termux/shared/termux/plugins/TermuxPluginUtils;
.super Ljava/lang/Object;
.source "TermuxPluginUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxPluginUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfAllowExternalAppsPolicyIsViolated(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiName"    # Ljava/lang/String;

    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, "errmsg":Ljava/lang/String;
    invoke-static {}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getProperties()Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    move-result-object v1

    .line 461
    .local v1, "mProperties":Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->shouldAllowExternalApps()Z

    move-result v2

    if-nez v2, :cond_1

    .line 462
    :cond_0
    sget v2, Lcom/termux/shared/R$string;->error_allow_external_apps_ungranted:I

    .line 463
    const-string v3, "/data/data/com.termux/files/home/.termux/termux.properties"

    invoke-static {v3}, Lcom/termux/shared/termux/file/TermuxFileUtils;->getUnExpandedTermuxPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 462
    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 466
    :cond_1
    return-object v0
.end method

.method public static getPluginCommandErrorsNotificationBuilder(Landroid/content/Context;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;
    .locals 10
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "termuxPackageContext"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "notificationText"    # Ljava/lang/CharSequence;
    .param p4, "notificationBigText"    # Ljava/lang/CharSequence;
    .param p5, "contentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deleteIntent"    # Landroid/app/PendingIntent;
    .param p7, "notificationMode"    # I

    .line 431
    const-string v2, "termux_plugin_command_errors_notification_channel"

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/termux/shared/termux/notification/TermuxNotificationUtils;->getTermuxOrPluginAppNotificationBuilder(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;Z)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;
    .param p3, "forceNotification"    # Z

    .line 157
    move-object/from16 v0, p2

    if-eqz p0, :cond_8

    if-nez v0, :cond_0

    move-object/from16 v2, p1

    goto/16 :goto_3

    .line 159
    :cond_0
    const-string v1, "TermuxPluginUtils"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 161
    .end local p1    # "logTag":Ljava/lang/String;
    .local v11, "logTag":Ljava/lang/String;
    iget-object v12, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    .line 163
    .local v12, "resultData":Lcom/termux/shared/shell/command/result/ResultData;
    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/shell/command/ExecutionCommand;->isStateFailed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Ignoring call to processPluginExecutionCommandError() since the execution command is not in ExecutionState.FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 168
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommandWithPendingResult()Z

    move-result v13

    .line 169
    .local v13, "isPluginExecutionCommandWithPendingResult":Z
    iget-object v1, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/termux/shared/logger/Logger;->shouldEnableLoggingForCustomLogLevel(Ljava/lang/Integer;)Z

    move-result v14

    .line 172
    .local v14, "isExecutionCommandLoggingEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing plugin execution error for:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v1, "Set log level to debug or higher to see error in logs"

    invoke-static {v11, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    xor-int/lit8 v1, v13, 0x1

    const/4 v7, 0x1

    invoke-static {v0, v7, v1, v14}, Lcom/termux/shared/shell/command/ExecutionCommand;->getExecutionOutputLogString(Lcom/termux/shared/shell/command/ExecutionCommand;ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/termux/shared/logger/Logger;->logErrorPrivateExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    if-eqz v13, :cond_6

    .line 180
    iget-object v1, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v1, v1, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 181
    invoke-static/range {p2 .. p2}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->setPluginResultPendingIntentVariables(Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 182
    :cond_2
    iget-object v1, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v1, v1, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 183
    invoke-static/range {p2 .. p2}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->setPluginResultDirectoryVariables(Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 186
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v5, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    move-object/from16 v1, p0

    move-object v2, v11

    move v6, v14

    invoke-static/range {v1 .. v6}, Lcom/termux/shared/shell/command/result/ResultSender;->sendCommandResultData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/shell/command/result/ResultConfig;Lcom/termux/shared/shell/command/result/ResultData;Z)Lcom/termux/shared/errors/Error;

    move-result-object v1

    .line 188
    .local v1, "error":Lcom/termux/shared/errors/Error;
    if-eqz v1, :cond_4

    .line 190
    invoke-virtual {v12, v1}, Lcom/termux/shared/shell/command/result/ResultData;->setStateFailed(Lcom/termux/shared/errors/Error;)Z

    .line 191
    invoke-static {v0, v7, v7, v14}, Lcom/termux/shared/shell/command/ExecutionCommand;->getExecutionOutputLogString(Lcom/termux/shared/shell/command/ExecutionCommand;ZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/termux/shared/logger/Logger;->logErrorPrivateExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v2, 0x1

    .end local p3    # "forceNotification":Z
    .local v2, "forceNotification":Z
    goto :goto_0

    .line 188
    .end local v2    # "forceNotification":Z
    .restart local p3    # "forceNotification":Z
    :cond_4
    move/from16 v2, p3

    .line 196
    .end local p3    # "forceNotification":Z
    .restart local v2    # "forceNotification":Z
    :goto_0
    if-nez v2, :cond_5

    return-void

    :cond_5
    move v15, v2

    goto :goto_1

    .line 178
    .end local v1    # "error":Lcom/termux/shared/errors/Error;
    .end local v2    # "forceNotification":Z
    .restart local p3    # "forceNotification":Z
    :cond_6
    move/from16 v15, p3

    .line 200
    .end local p3    # "forceNotification":Z
    .local v15, "forceNotification":Z
    :goto_1
    nop

    .line 201
    invoke-static {v12}, Lcom/termux/shared/shell/command/result/ResultData;->getErrorsListMinimalString(Lcom/termux/shared/shell/command/result/ResultData;)Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static/range {p2 .. p2}, Lcom/termux/shared/shell/command/ExecutionCommand;->getExecutionCommandMarkdownString(Lcom/termux/shared/shell/command/ExecutionCommand;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->TERMUX_AND_CALLING_PACKAGE:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    .line 204
    iget-object v1, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v1, v1, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v1, v1, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    move-object v10, v1

    .line 200
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move v6, v15

    invoke-static/range {v1 .. v10}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZLcom/termux/shared/termux/TermuxUtils$AppInfoMode;ZLjava/lang/String;)V

    .line 205
    return-void

    .line 157
    .end local v11    # "logTag":Ljava/lang/String;
    .end local v12    # "resultData":Lcom/termux/shared/shell/command/result/ResultData;
    .end local v13    # "isPluginExecutionCommandWithPendingResult":Z
    .end local v14    # "isExecutionCommandLoggingEnabled":Z
    .end local v15    # "forceNotification":Z
    .restart local p1    # "logTag":Ljava/lang/String;
    .restart local p3    # "forceNotification":Z
    :cond_8
    move-object/from16 v2, p1

    :goto_3
    return-void
.end method

.method public static processPluginExecutionCommandResult(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;

    .line 58
    move-object/from16 v0, p2

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    const-string v1, "TermuxPluginUtils"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .end local p1    # "logTag":Ljava/lang/String;
    .local v1, "logTag":Ljava/lang/String;
    const/4 v8, 0x0

    .line 62
    .local v8, "error":Lcom/termux/shared/errors/Error;
    iget-object v12, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    .line 64
    .local v12, "resultData":Lcom/termux/shared/shell/command/result/ResultData;
    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/shell/command/ExecutionCommand;->hasExecuted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Ignoring call to processPluginExecutionCommandResult() since the execution command state is not higher than the ExecutionState.EXECUTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .line 69
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/shell/command/ExecutionCommand;->isPluginExecutionCommandWithPendingResult()Z

    move-result v13

    .line 70
    .local v13, "isPluginExecutionCommandWithPendingResult":Z
    iget-object v2, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    invoke-static {v2}, Lcom/termux/shared/logger/Logger;->shouldEnableLoggingForCustomLogLevel(Ljava/lang/Integer;)Z

    move-result v14

    .line 74
    .local v14, "isExecutionCommandLoggingEnabled":Z
    xor-int/lit8 v2, v13, 0x1

    const/4 v9, 0x1

    invoke-static {v0, v9, v2, v14}, Lcom/termux/shared/shell/command/ExecutionCommand;->getExecutionOutputLogString(Lcom/termux/shared/shell/command/ExecutionCommand;ZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    if-eqz v13, :cond_6

    .line 80
    iget-object v2, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v2, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    .line 81
    invoke-static/range {p2 .. p2}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->setPluginResultPendingIntentVariables(Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 82
    :cond_2
    iget-object v2, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v2, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 83
    invoke-static/range {p2 .. p2}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->setPluginResultDirectoryVariables(Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 86
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v6, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    move-object/from16 v2, p0

    move-object v3, v1

    move v7, v14

    invoke-static/range {v2 .. v7}, Lcom/termux/shared/shell/command/result/ResultSender;->sendCommandResultData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/shell/command/result/ResultConfig;Lcom/termux/shared/shell/command/result/ResultData;Z)Lcom/termux/shared/errors/Error;

    move-result-object v15

    .line 88
    .end local v8    # "error":Lcom/termux/shared/errors/Error;
    .local v15, "error":Lcom/termux/shared/errors/Error;
    if-eqz v15, :cond_5

    .line 90
    invoke-virtual {v12, v15}, Lcom/termux/shared/shell/command/result/ResultData;->setStateFailed(Lcom/termux/shared/errors/Error;)Z

    .line 91
    invoke-static {v0, v9, v9, v14}, Lcom/termux/shared/shell/command/ExecutionCommand;->getExecutionOutputLogString(Lcom/termux/shared/shell/command/ExecutionCommand;ZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    nop

    .line 95
    invoke-static {v12}, Lcom/termux/shared/shell/command/result/ResultData;->getErrorsListMinimalString(Lcom/termux/shared/shell/command/result/ResultData;)Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-static/range {p2 .. p2}, Lcom/termux/shared/shell/command/ExecutionCommand;->getExecutionCommandMarkdownString(Lcom/termux/shared/shell/command/ExecutionCommand;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->TERMUX_AND_CALLING_PACKAGE:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    .line 98
    iget-object v2, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v2, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    iget-object v2, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    move-object v11, v2

    .line 94
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x1

    move-object/from16 v2, p0

    move-object v3, v1

    invoke-static/range {v2 .. v11}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZLcom/termux/shared/termux/TermuxUtils$AppInfoMode;ZLjava/lang/String;)V

    .line 103
    :cond_5
    move-object v8, v15

    .end local v15    # "error":Lcom/termux/shared/errors/Error;
    .restart local v8    # "error":Lcom/termux/shared/errors/Error;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/shell/command/ExecutionCommand;->isStateFailed()Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v8, :cond_7

    .line 104
    sget-object v2, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {v0, v2}, Lcom/termux/shared/shell/command/ExecutionCommand;->setState(Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;)Z

    .line 105
    :cond_7
    return-void
.end method

.method public static sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "notificationTextString"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 269
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 272
    return-void
.end method

.method public static sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZLcom/termux/shared/termux/TermuxUtils$AppInfoMode;ZLjava/lang/String;)V
    .locals 25
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "notificationTextString"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forceNotification"    # Z
    .param p6, "showToast"    # Z
    .param p7, "appInfoMode"    # Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;
    .param p8, "addDeviceInfo"    # Z
    .param p9, "callingPackageName"    # Ljava/lang/String;

    .line 330
    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p7

    if-nez v8, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 333
    .local v11, "currentPackageName":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v12

    .line 334
    .local v12, "termuxPackageContext":Landroid/content/Context;
    const-string v0, "TermuxPluginUtils"

    if-nez v12, :cond_1

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring call to sendPluginCommandErrorNotification() since failed to get \"com.termux\" package context from \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" context"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void

    .line 339
    :cond_1
    invoke-static {v12}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v13

    .line 340
    .local v13, "preferences":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    if-nez v13, :cond_2

    return-void

    .line 343
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->arePluginErrorNotificationsEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p5, :cond_3

    .line 344
    return-void

    .line 346
    :cond_3
    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 348
    .end local p1    # "logTag":Ljava/lang/String;
    .local v14, "logTag":Ljava/lang/String;
    if-eqz p6, :cond_4

    .line 349
    invoke-static {v8, v9, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 353
    :cond_4
    if-eqz p2, :cond_6

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    move-object/from16 v15, p2

    goto :goto_1

    .line 354
    :cond_6
    :goto_0
    const-string v0, "Termux Plugin Execution Command Error"

    move-object v15, v0

    .line 356
    .end local p2    # "title":Ljava/lang/CharSequence;
    .local v15, "title":Ljava/lang/CharSequence;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" notification."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 360
    .local v6, "reportString":Ljava/lang/StringBuilder;
    const-string v0, "\n\n"

    if-eqz v10, :cond_8

    .line 361
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 362
    if-eqz p9, :cond_7

    move-object/from16 v3, p9

    goto :goto_2

    :cond_7
    move-object v3, v11

    .line 361
    :goto_2
    invoke-static {v8, v10, v3}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_8
    if-eqz p8, :cond_9

    .line 365
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8, v1}, Lcom/termux/shared/android/AndroidUtils;->getDeviceInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_9
    sget-object v2, Lcom/termux/shared/termux/models/UserAction;->PLUGIN_EXECUTION_COMMAND:Lcom/termux/shared/termux/models/UserAction;

    invoke-virtual {v2}, Lcom/termux/shared/termux/models/UserAction;->getName()Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, "userActionName":Ljava/lang/String;
    new-instance v2, Lcom/termux/shared/models/ReportInfo;

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v14, v3}, Lcom/termux/shared/models/ReportInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    .line 370
    .local v4, "reportInfo":Lcom/termux/shared/models/ReportInfo;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/termux/shared/models/ReportInfo;->setReportString(Ljava/lang/String;)V

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/termux/shared/termux/TermuxUtils;->getReportIssueMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/termux/shared/models/ReportInfo;->setReportStringSuffix(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v4, v1}, Lcom/termux/shared/models/ReportInfo;->setAddReportInfoHeaderToMarkdown(Z)V

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Termux-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-static {v2, v1, v1}, Lcom/termux/shared/file/FileUtils;->sanitizeFileName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-virtual {v4, v5, v0}, Lcom/termux/shared/models/ReportInfo;->setReportSaveFileLabelAndPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {v12, v4}, Lcom/termux/shared/activities/ReportActivity;->newInstance(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    move-result-object v3

    .line 378
    .local v3, "result":Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
    iget-object v0, v3, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    if-nez v0, :cond_a

    return-void

    .line 381
    :cond_a
    invoke-static {v12}, Lcom/termux/shared/termux/notification/TermuxNotificationUtils;->getNextNotificationId(Landroid/content/Context;)I

    move-result v2

    .line 383
    .local v2, "nextNotificationId":I
    iget-object v0, v3, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-static {v12, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 385
    .local v16, "contentIntent":Landroid/app/PendingIntent;
    const/4 v0, 0x0

    .line 386
    .local v0, "deleteIntent":Landroid/app/PendingIntent;
    iget-object v1, v3, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->deleteIntent:Landroid/content/Intent;

    if-eqz v1, :cond_b

    .line 387
    iget-object v1, v3, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->deleteIntent:Landroid/content/Intent;

    move-object/from16 p2, v0

    const/high16 v0, 0x8000000

    .end local v0    # "deleteIntent":Landroid/app/PendingIntent;
    .local p2, "deleteIntent":Landroid/app/PendingIntent;
    invoke-static {v12, v2, v1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object/from16 v17, v0

    .end local p2    # "deleteIntent":Landroid/app/PendingIntent;
    .restart local v0    # "deleteIntent":Landroid/app/PendingIntent;
    goto :goto_3

    .line 386
    :cond_b
    move-object/from16 p2, v0

    .end local v0    # "deleteIntent":Landroid/app/PendingIntent;
    .restart local p2    # "deleteIntent":Landroid/app/PendingIntent;
    move-object/from16 v17, p2

    .line 390
    .end local p2    # "deleteIntent":Landroid/app/PendingIntent;
    .local v17, "deleteIntent":Landroid/app/PendingIntent;
    :goto_3
    invoke-static {v12}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->setupPluginCommandErrorsNotificationChannel(Landroid/content/Context;)V

    .line 393
    invoke-static {v12, v9}, Lcom/termux/shared/markdown/MarkdownUtils;->getSpannedMarkdownText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    .line 397
    .local v18, "notificationTextCharSequence":Ljava/lang/CharSequence;
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v20, v2

    .end local v2    # "nextNotificationId":I
    .local v20, "nextNotificationId":I
    move-object v2, v15

    move-object/from16 v21, v3

    .end local v3    # "result":Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
    .local v21, "result":Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
    move-object/from16 v3, v18

    move-object/from16 v22, v4

    .end local v4    # "reportInfo":Lcom/termux/shared/models/ReportInfo;
    .local v22, "reportInfo":Lcom/termux/shared/models/ReportInfo;
    move-object/from16 v4, v18

    move-object/from16 v23, v5

    .end local v5    # "userActionName":Ljava/lang/String;
    .local v23, "userActionName":Ljava/lang/String;
    move-object/from16 v5, v16

    move-object/from16 v24, v6

    .end local v6    # "reportString":Ljava/lang/StringBuilder;
    .local v24, "reportString":Ljava/lang/StringBuilder;
    move-object/from16 v6, v17

    move/from16 v7, v19

    invoke-static/range {v0 .. v7}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->getPluginCommandErrorsNotificationBuilder(Landroid/content/Context;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 400
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-nez v0, :cond_c

    return-void

    .line 403
    :cond_c
    invoke-static {v12}, Lcom/termux/shared/notification/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    .line 404
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_d

    .line 405
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    move/from16 v3, v20

    .end local v20    # "nextNotificationId":I
    .local v3, "nextNotificationId":I
    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_4

    .line 404
    .end local v3    # "nextNotificationId":I
    .restart local v20    # "nextNotificationId":I
    :cond_d
    move/from16 v3, v20

    .line 406
    .end local v20    # "nextNotificationId":I
    .restart local v3    # "nextNotificationId":I
    :goto_4
    return-void
.end method

.method public static sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 13
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "notificationTextString"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forceNotification"    # Z
    .param p6, "showToast"    # Z
    .param p7, "addDeviceInfo"    # Z

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v11, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->TERMUX_AND_PLUGIN_PACKAGE:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v10}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZLcom/termux/shared/termux/TermuxUtils$AppInfoMode;ZLjava/lang/String;)V

    .line 298
    return-void
.end method

.method public static sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 10
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .line 250
    nop

    .line 252
    invoke-static {p3, p4}, Lcom/termux/shared/logger/Logger;->getMessageAndStackTraceString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 250
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v9}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 254
    return-void
.end method

.method public static setAndProcessPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;ZLjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;
    .param p3, "forceNotification"    # Z
    .param p4, "errmsg"    # Ljava/lang/String;

    .line 125
    sget-object v0, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v0}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v0

    invoke-virtual {p2, v0, p4}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 126
    invoke-static {p0, p1, p2, p3}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/shell/command/ExecutionCommand;Z)V

    .line 127
    return-void
.end method

.method public static setPluginResultDirectoryVariables(Lcom/termux/shared/shell/command/ExecutionCommand;)V
    .locals 4
    .param p0, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;

    .line 225
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    .line 227
    .local v0, "resultConfig":Lcom/termux/shared/shell/command/result/ResultConfig;
    iget-object v1, v0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/termux/shared/termux/file/TermuxFileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    .line 228
    iget-object v1, v0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/termux/shared/termux/file/TermuxFileUtils;->getMatchedAllowedTermuxWorkingDirectoryParentPathForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryAllowedParentPath:Ljava/lang/String;

    .line 231
    iget-boolean v1, v0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultSingleFile:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileBasename:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v2}, Lcom/termux/shared/shell/ShellUtils;->getExecutableBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/termux/shared/android/AndroidUtils;->getCurrentMilliSecondLocalTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileBasename:Ljava/lang/String;

    .line 233
    :cond_0
    return-void
.end method

.method public static setPluginResultPendingIntentVariables(Lcom/termux/shared/shell/command/ExecutionCommand;)V
    .locals 2
    .param p0, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;

    .line 210
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultConfig:Lcom/termux/shared/shell/command/result/ResultConfig;

    .line 212
    .local v0, "resultConfig":Lcom/termux/shared/shell/command/result/ResultConfig;
    const-string v1, "result"

    iput-object v1, v0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultBundleKey:Ljava/lang/String;

    .line 213
    const-string v1, "stdout"

    iput-object v1, v0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStdoutKey:Ljava/lang/String;

    .line 214
    const-string v1, "stdout_original_length"

    iput-object v1, v0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStdoutOriginalLengthKey:Ljava/lang/String;

    .line 215
    const-string v1, "stderr"

    iput-object v1, v0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStderrKey:Ljava/lang/String;

    .line 216
    const-string v1, "stderr_original_length"

    iput-object v1, v0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStderrOriginalLengthKey:Ljava/lang/String;

    .line 217
    const-string v1, "exitCode"

    iput-object v1, v0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultExitCodeKey:Ljava/lang/String;

    .line 218
    const-string v1, "err"

    iput-object v1, v0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultErrCodeKey:Ljava/lang/String;

    .line 219
    const-string v1, "errmsg"

    iput-object v1, v0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultErrmsgKey:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public static setupPluginCommandErrorsNotificationChannel(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 445
    :cond_0
    const-string v0, "Termux Plugin Commands Errors"

    const/4 v1, 0x4

    const-string v2, "termux_plugin_command_errors_notification_channel"

    invoke-static {p0, v2, v0, v1}, Lcom/termux/shared/notification/NotificationUtils;->setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 447
    return-void
.end method

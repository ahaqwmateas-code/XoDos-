.class public Lcom/termux/shared/shell/command/result/ResultSender;
.super Ljava/lang/Object;
.source "ResultSender.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResultSender"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendCommandResultData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/shell/command/result/ResultConfig;Lcom/termux/shared/shell/command/result/ResultData;Z)Lcom/termux/shared/errors/Error;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "resultConfig"    # Lcom/termux/shared/shell/command/result/ResultConfig;
    .param p4, "resultData"    # Lcom/termux/shared/shell/command/result/ResultData;
    .param p5, "logStdoutAndStderr"    # Z

    .line 39
    const/4 v0, 0x1

    const-string v1, "sendCommandResultData"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p0, :cond_4

    if-eqz p3, :cond_4

    if-nez p4, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v4, p3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_2

    .line 45
    invoke-static/range {p0 .. p5}, Lcom/termux/shared/shell/command/result/ResultSender;->sendCommandResultDataWithPendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/shell/command/result/ResultConfig;Lcom/termux/shared/shell/command/result/ResultData;Z)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 46
    .local v4, "error":Lcom/termux/shared/errors/Error;
    if-nez v4, :cond_1

    iget-object v5, p3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 47
    :cond_1
    return-object v4

    .line 50
    .end local v4    # "error":Lcom/termux/shared/errors/Error;
    :cond_2
    iget-object v4, p3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 51
    invoke-static/range {p0 .. p5}, Lcom/termux/shared/shell/command/result/ResultSender;->sendCommandResultDataToDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/shell/command/result/ResultConfig;Lcom/termux/shared/shell/command/result/ResultData;Z)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 53
    :cond_3
    sget-object v4, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_UNSET_PARAMETERS:Lcom/termux/shared/errors/Errno;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "resultConfig.resultPendingIntent or resultConfig.resultDirectoryPath"

    aput-object v5, v3, v2

    aput-object v1, v3, v0

    invoke-virtual {v4, v3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 40
    :cond_4
    :goto_0
    sget-object v4, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETERS:Lcom/termux/shared/errors/Errno;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "context, resultConfig or resultData"

    aput-object v5, v3, v2

    aput-object v1, v3, v0

    invoke-virtual {v4, v3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static sendCommandResultDataToDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/shell/command/result/ResultConfig;Lcom/termux/shared/shell/command/result/ResultData;Z)Lcom/termux/shared/errors/Error;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "resultConfig"    # Lcom/termux/shared/shell/command/result/ResultConfig;
    .param p4, "resultData"    # Lcom/termux/shared/shell/command/result/ResultData;
    .param p5, "logStdoutAndStderr"    # Z

    .line 161
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_17

    if-eqz v2, :cond_17

    if-eqz v3, :cond_17

    iget-object v6, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v7, p1

    move-object/from16 v14, p2

    goto/16 :goto_5

    .line 164
    :cond_0
    const-string v6, "ResultSender"

    move-object/from16 v7, p1

    invoke-static {v7, v6}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 168
    .end local p1    # "logTag":Ljava/lang/String;
    .local v6, "logTag":Ljava/lang/String;
    iget-object v7, v3, Lcom/termux/shared/shell/command/result/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "resultDataStdout":Ljava/lang/String;
    iget-object v8, v3, Lcom/termux/shared/shell/command/result/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, "resultDataStderr":Ljava/lang/String;
    const-string v9, ""

    .line 172
    .local v9, "resultDataExitCode":Ljava/lang/String;
    iget-object v10, v3, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    if-eqz v10, :cond_1

    .line 173
    iget-object v10, v3, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 175
    :cond_1
    const/4 v10, 0x0

    .line 176
    .local v10, "resultDataErrmsg":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/termux/shared/shell/command/result/ResultData;->isStateFailed()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 177
    invoke-static/range {p4 .. p4}, Lcom/termux/shared/shell/command/result/ResultData;->getErrorsListLogString(Lcom/termux/shared/shell/command/result/ResultData;)Ljava/lang/String;

    move-result-object v10

    .line 179
    :cond_2
    const-string v11, ""

    invoke-static {v10, v11}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v10, v12

    check-cast v10, Ljava/lang/String;

    .line 181
    iget-object v12, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    .line 183
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Writing result for command \""

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v14, p2

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "\":\n"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/termux/shared/shell/command/result/ResultConfig;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "\n"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p4 .. p5}, Lcom/termux/shared/shell/command/result/ResultData;->getResultDataLogString(Lcom/termux/shared/shell/command/result/ResultData;Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/termux/shared/logger/Logger;->logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v12, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    iget-object v13, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryAllowedParentPath:Ljava/lang/String;

    const/16 v23, 0x1

    const/16 v24, 0x1

    const-string v16, "result"

    const/16 v19, 0x1

    const-string v20, "rwx"

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    invoke-static/range {v16 .. v24}, Lcom/termux/shared/file/FileUtils;->validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZ)Lcom/termux/shared/errors/Error;

    move-result-object v12

    .line 194
    .local v12, "error":Lcom/termux/shared/errors/Error;
    if-eqz v12, :cond_3

    .line 195
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v13, Lcom/termux/shared/R$string;->msg_directory_absolute_path:I

    iget-object v15, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v16, "Result"

    aput-object v16, v0, v5

    aput-object v15, v0, v4

    invoke-virtual {v1, v13, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/termux/shared/errors/Error;->appendMessage(Ljava/lang/String;)V

    .line 196
    return-object v12

    .line 199
    :cond_3
    iget-boolean v13, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultSingleFile:Z

    const-string v15, "-"

    const-string v0, "/"

    if-eqz v13, :cond_d

    .line 201
    iget-object v11, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileBasename:Ljava/lang/String;

    invoke-static {v11}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileBasename:Ljava/lang/String;

    .line 202
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    const/4 v13, 0x0

    goto/16 :goto_3

    .line 209
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/termux/shared/shell/command/result/ResultData;->isStateFailed()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 211
    :try_start_0
    iget-object v11, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileErrorFormat:Ljava/lang/String;

    invoke-static {v11}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    const/16 v17, 0x4

    if-eqz v11, :cond_5

    .line 212
    const-string v11, "err=%1$s%n%n%n%nerrmsg=%n%2$s%n%n%n%nstdout=%n%3$s%n%n%n%nstderr=%n%4$s%n%n%n%nexit_code=%5$s%n"

    .line 213
    invoke-virtual/range {p4 .. p4}, Lcom/termux/shared/shell/command/result/ResultData;->getErrCode()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 214
    invoke-static {v10, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 215
    invoke-static {v7, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 216
    invoke-static {v8, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v22

    .line 217
    invoke-static {v9, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v23

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v13, v4, v5

    const/4 v13, 0x1

    aput-object v19, v4, v13

    const/4 v13, 0x2

    aput-object v21, v4, v13

    const/4 v13, 0x3

    aput-object v22, v4, v13

    aput-object v23, v4, v17

    .line 212
    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "error_or_output":Ljava/lang/String;
    goto :goto_0

    .line 219
    .end local v4    # "error_or_output":Ljava/lang/String;
    :cond_5
    iget-object v4, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileErrorFormat:Ljava/lang/String;

    .line 220
    invoke-virtual/range {p4 .. p4}, Lcom/termux/shared/shell/command/result/ResultData;->getErrCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v11, v13, v5

    const/4 v11, 0x1

    aput-object v10, v13, v11

    const/4 v11, 0x2

    aput-object v7, v13, v11

    const/4 v11, 0x3

    aput-object v8, v13, v11

    aput-object v9, v13, v17

    .line 219
    invoke-static {v4, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .restart local v4    # "error_or_output":Ljava/lang/String;
    :goto_0
    goto/16 :goto_2

    .line 222
    .end local v4    # "error_or_output":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/termux/shared/shell/command/result/ResultSenderErrno;->ERROR_FORMAT_RESULT_ERROR_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v11, v13, v5

    invoke-virtual {v4, v13}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 224
    .end local v12    # "error":Lcom/termux/shared/errors/Error;
    .local v4, "error":Lcom/termux/shared/errors/Error;
    return-object v4

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "error":Lcom/termux/shared/errors/Error;
    .restart local v12    # "error":Lcom/termux/shared/errors/Error;
    :cond_6
    :try_start_1
    iget-object v4, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileOutputFormat:Ljava/lang/String;

    invoke-static {v4}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 229
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "0"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 230
    const-string v4, "%1$s%n"

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v7, v13, v5

    invoke-static {v4, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "error_or_output":Ljava/lang/String;
    goto :goto_1

    .line 231
    .end local v4    # "error_or_output":Ljava/lang/String;
    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 232
    const-string v4, "%1$s%n%n%n%nexit_code=%2$s%n"

    .line 234
    invoke-static {v9, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v7, v13, v5

    const/16 v16, 0x1

    aput-object v11, v13, v16

    .line 232
    invoke-static {v4, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "error_or_output":Ljava/lang/String;
    goto :goto_1

    .line 236
    .end local v4    # "error_or_output":Ljava/lang/String;
    :cond_8
    const-string v4, "stdout=%n%1$s%n%n%n%nstderr=%n%2$s%n%n%n%nexit_code=%3$s%n"

    .line 237
    const/4 v11, 0x1

    invoke-static {v7, v11}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 238
    invoke-static {v8, v11}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 239
    invoke-static {v9, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v13, v5, v18

    const/4 v13, 0x1

    aput-object v17, v5, v13

    const/4 v13, 0x2

    aput-object v11, v5, v13

    .line 236
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "error_or_output":Ljava/lang/String;
    goto :goto_1

    .line 241
    .end local v4    # "error_or_output":Ljava/lang/String;
    :cond_9
    iget-object v4, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileOutputFormat:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v5, v11

    const/4 v11, 0x1

    aput-object v8, v5, v11

    const/4 v11, 0x2

    aput-object v9, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 247
    .restart local v4    # "error_or_output":Ljava/lang/String;
    :goto_1
    nop

    .line 252
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileBasename:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/termux/shared/android/AndroidUtils;->getCurrentMilliSecondLocalTimeStamp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "temp_filename":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static {v5, v11, v13, v4, v15}, Lcom/termux/shared/file/FileUtils;->writeTextToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v11

    .line 255
    .end local v12    # "error":Lcom/termux/shared/errors/Error;
    .local v11, "error":Lcom/termux/shared/errors/Error;
    if-eqz v11, :cond_a

    .line 256
    return-object v11

    .line 260
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v13, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileBasename:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "error or output temp file"

    const/4 v15, 0x0

    invoke-static {v13, v12, v0, v15}, Lcom/termux/shared/file/FileUtils;->moveRegularFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v0

    .line 262
    .end local v11    # "error":Lcom/termux/shared/errors/Error;
    .local v0, "error":Lcom/termux/shared/errors/Error;
    if-eqz v0, :cond_b

    .line 263
    return-object v0

    .line 265
    .end local v4    # "error_or_output":Ljava/lang/String;
    .end local v5    # "temp_filename":Ljava/lang/String;
    :cond_b
    goto/16 :goto_4

    .line 244
    .end local v0    # "error":Lcom/termux/shared/errors/Error;
    .restart local v12    # "error":Lcom/termux/shared/errors/Error;
    :catch_1
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/termux/shared/shell/command/result/ResultSenderErrno;->ERROR_FORMAT_RESULT_OUTPUT_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v11, v13

    invoke-virtual {v4, v11}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 246
    .end local v12    # "error":Lcom/termux/shared/errors/Error;
    .local v4, "error":Lcom/termux/shared/errors/Error;
    return-object v4

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "error":Lcom/termux/shared/errors/Error;
    .restart local v12    # "error":Lcom/termux/shared/errors/Error;
    :cond_c
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 203
    :goto_3
    sget-object v0, Lcom/termux/shared/shell/command/result/ResultSenderErrno;->ERROR_RESULT_FILE_BASENAME_NULL_OR_INVALID:Lcom/termux/shared/errors/Errno;

    iget-object v4, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileBasename:Ljava/lang/String;

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v4, v5, v13

    invoke-virtual {v0, v5}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    .line 204
    .end local v12    # "error":Lcom/termux/shared/errors/Error;
    .local v0, "error":Lcom/termux/shared/errors/Error;
    return-object v0

    .line 269
    .end local v0    # "error":Lcom/termux/shared/errors/Error;
    .restart local v12    # "error":Lcom/termux/shared/errors/Error;
    :cond_d
    iget-object v4, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    if-nez v4, :cond_e

    .line 270
    iput-object v11, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    .line 273
    :cond_e
    iget-object v4, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 274
    sget-object v0, Lcom/termux/shared/shell/command/result/ResultSenderErrno;->ERROR_RESULT_FILES_SUFFIX_INVALID:Lcom/termux/shared/errors/Errno;

    iget-object v4, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v5, v11

    invoke-virtual {v0, v5}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    .line 275
    .end local v12    # "error":Lcom/termux/shared/errors/Error;
    .restart local v0    # "error":Lcom/termux/shared/errors/Error;
    return-object v0

    .line 281
    .end local v0    # "error":Lcom/termux/shared/errors/Error;
    .restart local v12    # "error":Lcom/termux/shared/errors/Error;
    :cond_f
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stdout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "filename":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static {v4, v5, v11, v7, v13}, Lcom/termux/shared/file/FileUtils;->writeTextToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v12

    .line 285
    if-eqz v12, :cond_10

    .line 286
    return-object v12

    .line 291
    .end local v4    # "filename":Ljava/lang/String;
    :cond_10
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stderr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 293
    .restart local v4    # "filename":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static {v4, v5, v11, v8, v13}, Lcom/termux/shared/file/FileUtils;->writeTextToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v12

    .line 295
    if-eqz v12, :cond_11

    .line 296
    return-object v12

    .line 301
    .end local v4    # "filename":Ljava/lang/String;
    :cond_11
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exit_code"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 303
    .restart local v4    # "filename":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static {v4, v5, v11, v9, v13}, Lcom/termux/shared/file/FileUtils;->writeTextToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v12

    .line 305
    if-eqz v12, :cond_12

    .line 306
    return-object v12

    .line 311
    .end local v4    # "filename":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {p4 .. p4}, Lcom/termux/shared/shell/command/result/ResultData;->isStateFailed()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errmsg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 313
    .restart local v4    # "filename":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static {v4, v5, v11, v10, v13}, Lcom/termux/shared/file/FileUtils;->writeTextToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v12

    .line 315
    if-eqz v12, :cond_13

    .line 316
    return-object v12

    .line 329
    .end local v4    # "filename":Ljava/lang/String;
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "err-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/termux/shared/android/AndroidUtils;->getCurrentMilliSecondLocalTimeStamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "temp_filename":Ljava/lang/String;
    iget-object v5, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 331
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-virtual/range {p4 .. p4}, Lcom/termux/shared/shell/command/result/ResultData;->getErrCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 331
    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static {v4, v5, v13, v11, v15}, Lcom/termux/shared/file/FileUtils;->writeTextToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v5

    .line 333
    .end local v12    # "error":Lcom/termux/shared/errors/Error;
    .local v5, "error":Lcom/termux/shared/errors/Error;
    if-eqz v5, :cond_15

    .line 334
    return-object v5

    .line 338
    :cond_15
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "err"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 339
    .local v11, "filename":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v2, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "err temp file"

    const/4 v15, 0x0

    invoke-static {v13, v12, v0, v15}, Lcom/termux/shared/file/FileUtils;->moveRegularFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v0

    .line 341
    .end local v5    # "error":Lcom/termux/shared/errors/Error;
    .restart local v0    # "error":Lcom/termux/shared/errors/Error;
    if-eqz v0, :cond_16

    .line 342
    return-object v0

    .line 346
    .end local v4    # "temp_filename":Ljava/lang/String;
    .end local v11    # "filename":Ljava/lang/String;
    :cond_16
    :goto_4
    const/4 v4, 0x0

    return-object v4

    .line 161
    .end local v0    # "error":Lcom/termux/shared/errors/Error;
    .end local v6    # "logTag":Ljava/lang/String;
    .end local v7    # "resultDataStdout":Ljava/lang/String;
    .end local v8    # "resultDataStderr":Ljava/lang/String;
    .end local v9    # "resultDataExitCode":Ljava/lang/String;
    .end local v10    # "resultDataErrmsg":Ljava/lang/String;
    .restart local p1    # "logTag":Ljava/lang/String;
    :cond_17
    move-object/from16 v7, p1

    move-object/from16 v14, p2

    .line 162
    :goto_5
    sget-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "context, resultConfig, resultData or resultConfig.resultDirectoryPath"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "sendCommandResultDataToDirectory"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static sendCommandResultDataWithPendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/shell/command/result/ResultConfig;Lcom/termux/shared/shell/command/result/ResultData;Z)Lcom/termux/shared/errors/Error;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "resultConfig"    # Lcom/termux/shared/shell/command/result/ResultConfig;
    .param p4, "resultData"    # Lcom/termux/shared/shell/command/result/ResultData;
    .param p5, "logStdoutAndStderr"    # Z

    .line 70
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    if-eqz v1, :cond_9

    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    iget-object v6, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_9

    iget-object v6, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultBundleKey:Ljava/lang/String;

    if-nez v6, :cond_0

    move-object/from16 v7, p1

    goto/16 :goto_4

    .line 73
    :cond_0
    const-string v6, "ResultSender"

    move-object/from16 v7, p1

    invoke-static {v7, v6}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 75
    .end local p1    # "logTag":Ljava/lang/String;
    .local v6, "logTag":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending result for command \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\":\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/termux/shared/shell/command/result/ResultConfig;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p4 .. p5}, Lcom/termux/shared/shell/command/result/ResultData;->getResultDataLogString(Lcom/termux/shared/shell/command/result/ResultData;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/termux/shared/logger/Logger;->logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v7, v4, Lcom/termux/shared/shell/command/result/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "resultDataStdout":Ljava/lang/String;
    iget-object v8, v4, Lcom/termux/shared/shell/command/result/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "resultDataStderr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 81
    .local v9, "truncatedStdout":Ljava/lang/String;
    const/4 v10, 0x0

    .line 83
    .local v10, "truncatedStderr":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 84
    .local v11, "stdoutOriginalLength":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 87
    .local v12, "stderrOriginalLength":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    const v14, 0x19000

    if-eqz v13, :cond_1

    .line 88
    invoke-static {v7, v14, v5, v5, v5}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 90
    invoke-static {v8, v14, v5, v5, v5}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 92
    :cond_2
    const v13, 0xc800

    invoke-static {v7, v13, v5, v5, v5}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v9

    .line 93
    invoke-static {v8, v13, v5, v5, v5}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v10

    .line 96
    :goto_0
    const-string v13, " to "

    const-string v14, "The result for command \""

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v15, v0, :cond_3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "\" stdout length truncated from "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    move-object v7, v9

    .line 101
    :cond_3
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v0, v15, :cond_4

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "\" stderr length truncated from "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    move-object v8, v10

    .line 106
    :cond_4
    const/4 v0, 0x0

    .line 107
    .local v0, "resultDataErrmsg":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/termux/shared/shell/command/result/ResultData;->isStateFailed()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 108
    invoke-static/range {p4 .. p4}, Lcom/termux/shared/shell/command/result/ResultData;->getErrorsListLogString(Lcom/termux/shared/shell/command/result/ResultData;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v0, 0x0

    .line 112
    :cond_5
    if-nez v0, :cond_6

    const/16 v16, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    :goto_1
    move-object/from16 p1, v16

    .line 116
    .local p1, "errmsgOriginalLength":Ljava/lang/String;
    const/16 v15, 0x6400

    move-object/from16 v17, v9

    const/4 v9, 0x1

    .end local v9    # "truncatedStdout":Ljava/lang/String;
    .local v17, "truncatedStdout":Ljava/lang/String;
    invoke-static {v0, v15, v9, v5, v5}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "truncatedErrmsg":Ljava/lang/String;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v9, v15, :cond_7

    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, "\" error length truncated from "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v14, p1

    .end local p1    # "errmsgOriginalLength":Ljava/lang/String;
    .local v14, "errmsgOriginalLength":Ljava/lang/String;
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    move-object v0, v5

    move-object v9, v0

    goto :goto_2

    .line 117
    .end local v14    # "errmsgOriginalLength":Ljava/lang/String;
    .restart local p1    # "errmsgOriginalLength":Ljava/lang/String;
    :cond_7
    move-object/from16 v14, p1

    .line 123
    .end local p1    # "errmsgOriginalLength":Ljava/lang/String;
    .restart local v14    # "errmsgOriginalLength":Ljava/lang/String;
    move-object v9, v0

    .end local v0    # "resultDataErrmsg":Ljava/lang/String;
    .local v9, "resultDataErrmsg":Ljava/lang/String;
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v13, v0

    .line 124
    .local v13, "resultBundle":Landroid/os/Bundle;
    iget-object v0, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStdoutKey:Ljava/lang/String;

    invoke-virtual {v13, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStdoutOriginalLengthKey:Ljava/lang/String;

    invoke-virtual {v13, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStderrKey:Ljava/lang/String;

    invoke-virtual {v13, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStderrOriginalLengthKey:Ljava/lang/String;

    invoke-virtual {v13, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, v4, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 129
    iget-object v0, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultExitCodeKey:Ljava/lang/String;

    iget-object v15, v4, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v13, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    :cond_8
    iget-object v0, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultErrCodeKey:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lcom/termux/shared/shell/command/result/ResultData;->getErrCode()I

    move-result v15

    invoke-virtual {v13, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    iget-object v0, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultErrmsgKey:Ljava/lang/String;

    invoke-virtual {v13, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v15, v0

    .line 134
    .local v15, "resultIntent":Landroid/content/Intent;
    iget-object v0, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultBundleKey:Ljava/lang/String;

    invoke-virtual {v15, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 137
    :try_start_0
    iget-object v0, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4, v15}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_3

    .line 138
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v0

    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .local p1, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v0, "The command \""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\" creator "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v3, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " does not want the results anymore"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local p1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_3
    const/4 v4, 0x0

    return-object v4

    .line 70
    .end local v5    # "truncatedErrmsg":Ljava/lang/String;
    .end local v6    # "logTag":Ljava/lang/String;
    .end local v7    # "resultDataStdout":Ljava/lang/String;
    .end local v8    # "resultDataStderr":Ljava/lang/String;
    .end local v9    # "resultDataErrmsg":Ljava/lang/String;
    .end local v10    # "truncatedStderr":Ljava/lang/String;
    .end local v11    # "stdoutOriginalLength":Ljava/lang/String;
    .end local v12    # "stderrOriginalLength":Ljava/lang/String;
    .end local v13    # "resultBundle":Landroid/os/Bundle;
    .end local v14    # "errmsgOriginalLength":Ljava/lang/String;
    .end local v15    # "resultIntent":Landroid/content/Intent;
    .end local v17    # "truncatedStdout":Ljava/lang/String;
    .local p1, "logTag":Ljava/lang/String;
    :cond_9
    move-object/from16 v7, p1

    .line 71
    :goto_4
    sget-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "context, resultConfig, resultData, resultConfig.resultPendingIntent or resultConfig.resultBundleKey"

    aput-object v6, v4, v5

    const-string v5, "sendCommandResultDataWithPendingIntent"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

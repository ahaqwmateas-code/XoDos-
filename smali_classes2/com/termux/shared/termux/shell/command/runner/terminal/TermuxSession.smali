.class public Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
.super Ljava/lang/Object;
.source "TermuxSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession$TermuxSessionClient;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxSession"


# instance fields
.field private final mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

.field private final mSetStdoutOnExit:Z

.field private final mTerminalSession:Lcom/termux/terminal/TerminalSession;

.field private final mTermuxSessionClient:Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession$TermuxSessionClient;


# direct methods
.method private constructor <init>(Lcom/termux/terminal/TerminalSession;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession$TermuxSessionClient;Z)V
    .locals 0
    .param p1, "terminalSession"    # Lcom/termux/terminal/TerminalSession;
    .param p2, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;
    .param p3, "termuxSessionClient"    # Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession$TermuxSessionClient;
    .param p4, "setStdoutOnExit"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    .line 44
    iput-object p2, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    .line 45
    iput-object p3, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mTermuxSessionClient:Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession$TermuxSessionClient;

    .line 46
    iput-boolean p4, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mSetStdoutOnExit:Z

    .line 47
    return-void
.end method

.method public static execute(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/terminal/TerminalSessionClient;Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession$TermuxSessionClient;Lcom/termux/shared/shell/command/environment/IShellEnvironment;Ljava/util/HashMap;Z)Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    .locals 22
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;
    .param p2, "terminalSessionClient"    # Lcom/termux/terminal/TerminalSessionClient;
    .param p3, "termuxSessionClient"    # Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession$TermuxSessionClient;
    .param p4, "shellEnvironmentClient"    # Lcom/termux/shared/shell/command/environment/IShellEnvironment;
    .param p6, "setStdoutOnExit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/termux/shared/shell/command/ExecutionCommand;",
            "Lcom/termux/terminal/TerminalSessionClient;",
            "Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession$TermuxSessionClient;",
            "Lcom/termux/shared/shell/command/environment/IShellEnvironment;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;"
        }
    .end annotation

    .line 82
    .local p5, "additionalEnvironment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    iget-object v4, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    iput-object v5, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    .line 84
    :cond_0
    iget-object v4, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    :cond_1
    invoke-interface/range {p4 .. p4}, Lcom/termux/shared/shell/command/environment/IShellEnvironment;->getDefaultWorkingDirectoryPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 86
    :cond_2
    iget-object v4, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    const-string v4, "/"

    iput-object v4, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 89
    :cond_3
    invoke-interface/range {p4 .. p4}, Lcom/termux/shared/shell/command/environment/IShellEnvironment;->getDefaultBinPath()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "defaultBinPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 91
    const-string v4, "/system/bin"

    .line 93
    :cond_4
    const/4 v6, 0x0

    .line 94
    .local v6, "isLoginShell":Z
    iget-object v7, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    const/4 v8, 0x0

    if-nez v7, :cond_8

    .line 95
    iget-boolean v7, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->isFailsafe:Z

    if-nez v7, :cond_6

    .line 96
    sget-object v7, Lcom/termux/shared/shell/command/environment/UnixShellEnvironment;->LOGIN_SHELL_BINARIES:[Ljava/lang/String;

    array-length v9, v7

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_6

    aget-object v11, v7, v10

    .line 97
    .local v11, "shellBinary":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v12, "shellFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->canExecute()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 99
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    .line 100
    goto :goto_1

    .line 96
    .end local v11    # "shellBinary":Ljava/lang/String;
    .end local v12    # "shellFile":Ljava/io/File;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 105
    :cond_6
    :goto_1
    iget-object v7, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    if-nez v7, :cond_7

    .line 114
    const-string v7, "/system/bin/sh"

    iput-object v7, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    goto :goto_2

    .line 116
    :cond_7
    const/4 v6, 0x1

    .line 122
    :cond_8
    :goto_2
    iget-object v7, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    iget-object v9, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->arguments:[Ljava/lang/String;

    invoke-interface {v2, v7, v9}, Lcom/termux/shared/shell/command/environment/IShellEnvironment;->setupShellCommandArguments(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "commandArgs":[Ljava/lang/String;
    aget-object v9, v7, v8

    iput-object v9, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_9

    const-string v10, "-"

    goto :goto_3

    :cond_9
    const-string v10, ""

    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v10}, Lcom/termux/shared/shell/ShellUtils;->getExecutableBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 127
    .local v9, "processName":Ljava/lang/String;
    array-length v10, v7

    new-array v10, v10, [Ljava/lang/String;

    .line 128
    .local v10, "arguments":[Ljava/lang/String;
    aput-object v9, v10, v8

    .line 129
    array-length v11, v7

    const/4 v12, 0x1

    if-le v11, v12, :cond_a

    array-length v11, v7

    sub-int/2addr v11, v12

    invoke-static {v7, v12, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    :cond_a
    iput-object v10, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->arguments:[Ljava/lang/String;

    .line 133
    iget-object v11, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    if-nez v11, :cond_b

    .line 134
    iput-object v9, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 137
    :cond_b
    invoke-interface {v2, v0, v1}, Lcom/termux/shared/shell/command/environment/IShellEnvironment;->setupShellCommandEnvironment(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;)Ljava/util/HashMap;

    move-result-object v11

    .line 139
    .local v11, "environment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_c

    .line 140
    invoke-virtual {v11, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 141
    :cond_c
    invoke-static {v11}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->convertEnvironmentToEnviron(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v13

    .line 142
    .local v13, "environmentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 143
    new-array v14, v8, [Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    .line 145
    .local v14, "environmentArray":[Ljava/lang/String;
    sget-object v15, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->EXECUTING:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {v1, v15}, Lcom/termux/shared/shell/command/ExecutionCommand;->setState(Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 146
    sget-object v15, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v15}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v15

    sget v5, Lcom/termux/shared/R$string;->error_failed_to_execute_termux_session_command:I

    invoke-virtual/range {p1 .. p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v17

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v17, v12, v8

    invoke-virtual {v0, v5, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v15, v5}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 147
    const/4 v5, 0x0

    invoke-static {v5, v1}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->processTermuxSessionResult(Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 148
    return-object v5

    .line 151
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "TermuxSession"

    invoke-static {v8, v5}, Lcom/termux/shared/logger/Logger;->logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "\" TermuxSession Environment:\n"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 153
    const-string v12, "\n"

    invoke-static {v12}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v12

    invoke-virtual {v12, v14}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-static {v8, v5}, Lcom/termux/shared/logger/Logger;->logVerboseExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Running \""

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "\" TermuxSession"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v5, Lcom/termux/terminal/TerminalSession;

    iget-object v8, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    iget-object v12, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    iget-object v15, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->arguments:[Ljava/lang/String;

    iget-object v0, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->terminalTranscriptRows:Ljava/lang/Integer;

    move-object/from16 v18, v15

    move-object v15, v5

    move-object/from16 v16, v8

    move-object/from16 v17, v12

    move-object/from16 v19, v14

    move-object/from16 v20, v0

    move-object/from16 v21, p2

    invoke-direct/range {v15 .. v21}, Lcom/termux/terminal/TerminalSession;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Lcom/termux/terminal/TerminalSessionClient;)V

    move-object v0, v5

    .line 160
    .local v0, "terminalSession":Lcom/termux/terminal/TerminalSession;
    iget-object v5, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 161
    iget-object v5, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    iput-object v5, v0, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 164
    :cond_e
    new-instance v5, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;

    move-object/from16 v8, p3

    move/from16 v12, p6

    invoke-direct {v5, v0, v1, v8, v12}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;-><init>(Lcom/termux/terminal/TerminalSession;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession$TermuxSessionClient;Z)V

    return-object v5
.end method

.method private static processTermuxSessionResult(Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;Lcom/termux/shared/shell/command/ExecutionCommand;)V
    .locals 4
    .param p0, "termuxSession"    # Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;
    .param p1, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;

    .line 253
    if-eqz p0, :cond_0

    .line 254
    iget-object p1, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    .line 256
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 258
    :cond_1
    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->shouldNotProcessResults()Z

    move-result v0

    const-string v1, "\" TermuxSession result"

    const-string v2, "TermuxSession"

    if-eqz v0, :cond_2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring duplicate call to process \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void

    .line 263
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mTermuxSessionClient:Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession$TermuxSessionClient;

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mTermuxSessionClient:Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession$TermuxSessionClient;

    invoke-interface {v0, p0}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession$TermuxSessionClient;->onTermuxSessionExited(Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;)V

    goto :goto_0

    .line 270
    :cond_3
    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->isStateFailed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 271
    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {p1, v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->setState(Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;)Z

    .line 273
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getExitStatus()I

    move-result v0

    .line 182
    .local v0, "exitCode":I
    const-string v1, "The \""

    const-string v2, "TermuxSession"

    if-nez v0, :cond_1

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v3}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" TermuxSession exited normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v3}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" TermuxSession exited with code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v1}, Lcom/termux/shared/shell/command/ExecutionCommand;->isStateFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring setting \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v3}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" TermuxSession state to ExecutionState.EXECUTED and processing results since it has already failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v1, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    .line 195
    iget-boolean v1, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mSetStdoutOnExit:Z

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v1, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v1, v1, Lcom/termux/shared/shell/command/result/ResultData;->stdout:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/termux/shared/shell/ShellUtils;->getTerminalSessionTranscriptText(Lcom/termux/terminal/TerminalSession;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_3
    iget-object v1, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    sget-object v2, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->EXECUTED:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {v1, v2}, Lcom/termux/shared/shell/command/ExecutionCommand;->setState(Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 199
    return-void

    .line 201
    :cond_4
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->processTermuxSessionResult(Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 202
    return-void
.end method

.method public getExecutionCommand()Lcom/termux/shared/shell/command/ExecutionCommand;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    return-object v0
.end method

.method public getTerminalSession()Lcom/termux/terminal/TerminalSession;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    return-object v0
.end method

.method public killIfExecuting(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "processResult"    # Z

    .line 214
    iget-object v0, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->hasExecuted()Z

    move-result v0

    const-string v1, "TermuxSession"

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring sending SIGKILL to \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v2}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" TermuxSession since it has already finished executing"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send SIGKILL to \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v2}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" TermuxSession"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    sget-object v1, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v1}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v1

    sget v2, Lcom/termux/shared/R$string;->error_sending_sigkill_to_process:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    if-eqz p2, :cond_2

    .line 222
    iget-object v0, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v0, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    .line 225
    iget-boolean v0, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mSetStdoutOnExit:Z

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v0, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v0, v0, Lcom/termux/shared/shell/command/result/ResultData;->stdout:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/termux/shared/shell/ShellUtils;->getTerminalSessionTranscriptText(Lcom/termux/terminal/TerminalSession;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->processTermuxSessionResult(Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    .line 234
    return-void
.end method

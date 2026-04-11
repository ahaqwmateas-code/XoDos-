.class public final Lcom/termux/shared/shell/command/runner/app/AppShell;
.super Ljava/lang/Object;
.source "AppShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppShell"


# instance fields
.field private final mAppShellClient:Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;

.field private final mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

.field private final mProcess:Ljava/lang/Process;


# direct methods
.method private constructor <init>(Ljava/lang/Process;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;)V
    .locals 0
    .param p1, "process"    # Ljava/lang/Process;
    .param p2, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;
    .param p3, "appShellClient"    # Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    .line 48
    iput-object p2, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    .line 49
    iput-object p3, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mAppShellClient:Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/termux/shared/shell/command/runner/app/AppShell;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/shared/shell/command/runner/app/AppShell;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/termux/shared/shell/command/runner/app/AppShell;->executeInner(Landroid/content/Context;)V

    return-void
.end method

.method public static execute(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;Lcom/termux/shared/shell/command/environment/IShellEnvironment;Ljava/util/HashMap;Z)Lcom/termux/shared/shell/command/runner/app/AppShell;
    .locals 17
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;
    .param p2, "appShellClient"    # Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;
    .param p3, "shellEnvironmentClient"    # Lcom/termux/shared/shell/command/environment/IShellEnvironment;
    .param p5, "isSynchronous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/termux/shared/shell/command/ExecutionCommand;",
            "Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;",
            "Lcom/termux/shared/shell/command/environment/IShellEnvironment;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/termux/shared/shell/command/runner/app/AppShell;"
        }
    .end annotation

    .line 83
    .local p4, "additionalEnvironment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v0, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_9

    iget-object v0, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v13, p2

    goto/16 :goto_2

    .line 90
    :cond_0
    iget-object v0, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    :cond_1
    invoke-interface/range {p3 .. p3}, Lcom/termux/shared/shell/command/environment/IShellEnvironment;->getDefaultWorkingDirectoryPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 92
    :cond_2
    iget-object v0, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    const-string v0, "/"

    iput-object v0, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 96
    :cond_3
    iget-object v0, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v0}, Lcom/termux/shared/shell/ShellUtils;->getExecutableBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "executableBasename":Ljava/lang/String;
    iget-object v0, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 99
    iput-object v8, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    .line 101
    :cond_4
    iget-object v0, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 102
    iput-object v8, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 105
    :cond_5
    iget-object v0, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->executable:Ljava/lang/String;

    iget-object v9, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->arguments:[Ljava/lang/String;

    invoke-interface {v3, v0, v9}, Lcom/termux/shared/shell/command/environment/IShellEnvironment;->setupShellCommandArguments(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, "commandArray":[Ljava/lang/String;
    invoke-interface {v3, v1, v2}, Lcom/termux/shared/shell/command/environment/IShellEnvironment;->setupShellCommandEnvironment(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;)Ljava/util/HashMap;

    move-result-object v10

    .line 110
    .local v10, "environment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_6

    .line 111
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 112
    :cond_6
    invoke-static {v10}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->convertEnvironmentToEnviron(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v11

    .line 113
    .local v11, "environmentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 114
    new-array v0, v5, [Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Ljava/lang/String;

    .line 116
    .local v12, "environmentArray":[Ljava/lang/String;
    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->EXECUTING:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {v2, v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->setState(Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 117
    sget-object v0, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v0}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v0

    sget v13, Lcom/termux/shared/R$string;->error_failed_to_execute_app_shell_command:I

    invoke-virtual/range {p1 .. p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v14

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v14, v6, v5

    invoke-virtual {v1, v13, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 118
    invoke-static {v7, v2}, Lcom/termux/shared/shell/command/runner/app/AppShell;->processAppShellResult(Lcom/termux/shared/shell/command/runner/app/AppShell;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 119
    return-object v7

    .line 123
    :cond_7
    iget-object v0, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    .line 124
    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->shouldEnableLoggingForCustomLogLevel(Ljava/lang/Integer;)Z

    move-result v0

    .line 123
    invoke-static {v2, v6, v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->getExecutionInputLogString(Lcom/termux/shared/shell/command/ExecutionCommand;ZZ)Ljava/lang/String;

    move-result-object v0

    const-string v13, "AppShell"

    invoke-static {v13, v0}, Lcom/termux/shared/logger/Logger;->logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\""

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "\" AppShell Environment:\n"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    const-string v14, "\n"

    invoke-static {v14}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v13, v0}, Lcom/termux/shared/logger/Logger;->logVerboseExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v13, Ljava/io/File;

    iget-object v14, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v12, v13}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v0

    .line 136
    .local v5, "process":Ljava/lang/Process;
    nop

    .line 138
    new-instance v0, Lcom/termux/shared/shell/command/runner/app/AppShell;

    move-object/from16 v13, p2

    invoke-direct {v0, v5, v2, v13}, Lcom/termux/shared/shell/command/runner/app/AppShell;-><init>(Ljava/lang/Process;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;)V

    move-object v6, v0

    .line 139
    .local v6, "appShell":Lcom/termux/shared/shell/command/runner/app/AppShell;
    if-eqz p5, :cond_8

    .line 141
    :try_start_1
    invoke-direct {v6, v1}, Lcom/termux/shared/shell/command/runner/app/AppShell;->executeInner(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :goto_0
    goto :goto_1

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 146
    :cond_8
    new-instance v0, Lcom/termux/shared/shell/command/runner/app/AppShell$1;

    invoke-direct {v0, v6, v1}, Lcom/termux/shared/shell/command/runner/app/AppShell$1;-><init>(Lcom/termux/shared/shell/command/runner/app/AppShell;Landroid/content/Context;)V

    .line 155
    invoke-virtual {v0}, Lcom/termux/shared/shell/command/runner/app/AppShell$1;->start()V

    .line 158
    :goto_1
    return-object v6

    .line 132
    .end local v5    # "process":Ljava/lang/Process;
    .end local v6    # "appShell":Lcom/termux/shared/shell/command/runner/app/AppShell;
    :catch_2
    move-exception v0

    move-object/from16 v13, p2

    .line 133
    .local v0, "e":Ljava/io/IOException;
    sget-object v14, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v14}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v14

    sget v15, Lcom/termux/shared/R$string;->error_failed_to_execute_app_shell_command:I

    invoke-virtual/range {p1 .. p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v16

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v16, v6, v5

    invoke-virtual {v1, v15, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v14, v5, v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    .line 134
    invoke-static {v7, v2}, Lcom/termux/shared/shell/command/runner/app/AppShell;->processAppShellResult(Lcom/termux/shared/shell/command/runner/app/AppShell;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 135
    return-object v7

    .line 83
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "executableBasename":Ljava/lang/String;
    .end local v9    # "commandArray":[Ljava/lang/String;
    .end local v10    # "environment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "environmentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "environmentArray":[Ljava/lang/String;
    :cond_9
    move-object/from16 v13, p2

    .line 84
    :goto_2
    sget-object v0, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v0}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v0

    sget v8, Lcom/termux/shared/R$string;->error_executable_unset:I

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v9, v6, v5

    invoke-virtual {v1, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v2, v0, v5}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    .line 86
    invoke-static {v7, v2}, Lcom/termux/shared/shell/command/runner/app/AppShell;->processAppShellResult(Lcom/termux/shared/shell/command/runner/app/AppShell;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 87
    return-object v7
.end method

.method private executeInner(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    invoke-static {v1}, Lcom/termux/shared/shell/ShellUtils;->getPid(Ljava/lang/Process;)I

    move-result v1

    iput v1, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Running \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v1}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" AppShell with pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget v2, v2, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppShell"

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v0, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    .line 178
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v4, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 179
    .local v0, "STDIN":Ljava/io/DataOutputStream;
    new-instance v4, Lcom/termux/shared/shell/StreamGobbler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget v6, v6, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-stdout"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iget-object v7, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v7, v7, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v7, v7, Lcom/termux/shared/shell/command/result/ResultData;->stdout:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v8, v8, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/termux/shared/shell/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 180
    .local v4, "STDOUT":Lcom/termux/shared/shell/StreamGobbler;
    new-instance v5, Lcom/termux/shared/shell/StreamGobbler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget v7, v7, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-stderr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    iget-object v8, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v8, v8, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v8, v8, Lcom/termux/shared/shell/command/result/ResultData;->stderr:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v9, v9, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/termux/shared/shell/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 183
    .local v5, "STDERR":Lcom/termux/shared/shell/StreamGobbler;
    invoke-virtual {v4}, Lcom/termux/shared/shell/StreamGobbler;->start()V

    .line 184
    invoke-virtual {v5}, Lcom/termux/shared/shell/StreamGobbler;->start()V

    .line 186
    iget-object v6, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v6, v6, Lcom/termux/shared/shell/command/ExecutionCommand;->stdin:Ljava/lang/String;

    invoke-static {v6}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 188
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v7, v7, Lcom/termux/shared/shell/command/ExecutionCommand;->stdin:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 189
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 190
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    goto :goto_0

    .line 193
    :catch_0
    move-exception v6

    .line 194
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EPIPE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Stream closed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    goto :goto_0

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    sget-object v2, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v2}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v2

    sget v7, Lcom/termux/shared/R$string;->error_exception_received_while_executing_app_shell_command:I

    iget-object v8, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v8}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const/4 v8, 0x1

    aput-object v9, v10, v8

    invoke-virtual {p1, v7, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7, v6}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    .line 203
    iget-object v1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v1, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    .line 204
    invoke-static {p0, v3}, Lcom/termux/shared/shell/command/runner/app/AppShell;->processAppShellResult(Lcom/termux/shared/shell/command/runner/app/AppShell;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 205
    invoke-virtual {p0}, Lcom/termux/shared/shell/command/runner/app/AppShell;->kill()V

    .line 206
    return-void

    .line 212
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v6

    .line 220
    .local v6, "exitCode":I
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    goto :goto_1

    .line 221
    :catch_1
    move-exception v7

    .line 224
    :goto_1
    invoke-virtual {v4}, Lcom/termux/shared/shell/StreamGobbler;->join()V

    .line 225
    invoke-virtual {v5}, Lcom/termux/shared/shell/StreamGobbler;->join()V

    .line 226
    iget-object v7, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    .line 229
    const-string v7, "The \""

    if-nez v6, :cond_3

    .line 230
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v8}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget v7, v7, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " exited normally"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 232
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v8}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget v7, v7, Lcom/termux/shared/shell/command/ExecutionCommand;->mPid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " exited with code: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_2
    iget-object v1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v1}, Lcom/termux/shared/shell/command/ExecutionCommand;->isStateFailed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring setting \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v3}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" AppShell state to ExecutionState.EXECUTED and processing results since it has already failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void

    .line 240
    :cond_4
    iget-object v1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v1, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    .line 242
    iget-object v1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    sget-object v2, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->EXECUTED:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {v1, v2}, Lcom/termux/shared/shell/command/ExecutionCommand;->setState(Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 243
    return-void

    .line 245
    :cond_5
    invoke-static {p0, v3}, Lcom/termux/shared/shell/command/runner/app/AppShell;->processAppShellResult(Lcom/termux/shared/shell/command/runner/app/AppShell;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 246
    return-void
.end method

.method private static processAppShellResult(Lcom/termux/shared/shell/command/runner/app/AppShell;Lcom/termux/shared/shell/command/ExecutionCommand;)V
    .locals 4
    .param p0, "appShell"    # Lcom/termux/shared/shell/command/runner/app/AppShell;
    .param p1, "executionCommand"    # Lcom/termux/shared/shell/command/ExecutionCommand;

    .line 306
    if-eqz p0, :cond_0

    .line 307
    iget-object p1, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    .line 309
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 311
    :cond_1
    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->shouldNotProcessResults()Z

    move-result v0

    const-string v1, "\" AppShell result"

    const-string v2, "AppShell"

    if-eqz v0, :cond_2

    .line 312
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

    .line 313
    return-void

    .line 316
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

    .line 318
    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mAppShellClient:Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mAppShellClient:Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;

    invoke-interface {v0, p0}, Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;->onAppShellExited(Lcom/termux/shared/shell/command/runner/app/AppShell;)V

    goto :goto_0

    .line 323
    :cond_3
    invoke-virtual {p1}, Lcom/termux/shared/shell/command/ExecutionCommand;->isStateFailed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 324
    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;

    invoke-virtual {p1, v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->setState(Lcom/termux/shared/shell/command/ExecutionCommand$ExecutionState;)Z

    .line 326
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getExecutionCommand()Lcom/termux/shared/shell/command/ExecutionCommand;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    return-object v0
.end method

.method public getProcess()Ljava/lang/Process;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    return-object v0
.end method

.method public kill()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mProcess:Ljava/lang/Process;

    invoke-static {v0}, Lcom/termux/shared/shell/ShellUtils;->getPid(Ljava/lang/Process;)I

    move-result v0

    .line 284
    .local v0, "pid":I
    :try_start_0
    sget v1, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {v0, v1}, Landroid/system/Os;->kill(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    goto :goto_0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SIGKILL to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v3}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AppShell with pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppShell"

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .end local v1    # "e":Landroid/system/ErrnoException;
    :goto_0
    return-void
.end method

.method public killIfExecuting(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "processResult"    # Z

    .line 258
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->hasExecuted()Z

    move-result v0

    const-string v1, "AppShell"

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring sending SIGKILL to \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v2}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" AppShell since it has already finished executing"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send SIGKILL to \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v2}, Lcom/termux/shared/shell/command/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" AppShell"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    sget-object v1, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v1}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v1

    sget v2, Lcom/termux/shared/R$string;->error_sending_sigkill_to_process:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/termux/shared/shell/command/ExecutionCommand;->setStateFailed(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    if-eqz p2, :cond_1

    .line 267
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    iget-object v0, v0, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    .line 268
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/shared/shell/command/runner/app/AppShell;->processAppShellResult(Lcom/termux/shared/shell/command/runner/app/AppShell;Lcom/termux/shared/shell/command/ExecutionCommand;)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/termux/shared/shell/command/runner/app/AppShell;->mExecutionCommand:Lcom/termux/shared/shell/command/ExecutionCommand;

    invoke-virtual {v0}, Lcom/termux/shared/shell/command/ExecutionCommand;->isExecuting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/termux/shared/shell/command/runner/app/AppShell;->kill()V

    .line 275
    :cond_2
    return-void
.end method

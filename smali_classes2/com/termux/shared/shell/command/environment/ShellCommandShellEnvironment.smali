.class public Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;
.super Ljava/lang/Object;
.source "ShellCommandShellEnvironment.java"


# static fields
.field public static final ENV_SHELL_CMD__APP_SHELL_NUMBER_SINCE_APP_START:Ljava/lang/String; = "SHELL_CMD__APP_SHELL_NUMBER_SINCE_APP_START"

.field public static final ENV_SHELL_CMD__APP_SHELL_NUMBER_SINCE_BOOT:Ljava/lang/String; = "SHELL_CMD__APP_SHELL_NUMBER_SINCE_BOOT"

.field public static final ENV_SHELL_CMD__PACKAGE_NAME:Ljava/lang/String; = "SHELL_CMD__PACKAGE_NAME"

.field public static final ENV_SHELL_CMD__RUNNER_NAME:Ljava/lang/String; = "SHELL_CMD__RUNNER_NAME"

.field public static final ENV_SHELL_CMD__SHELL_ID:Ljava/lang/String; = "SHELL_CMD__SHELL_ID"

.field public static final ENV_SHELL_CMD__SHELL_NAME:Ljava/lang/String; = "SHELL_CMD__SHELL_NAME"

.field public static final ENV_SHELL_CMD__TERMINAL_SESSION_NUMBER_SINCE_APP_START:Ljava/lang/String; = "SHELL_CMD__TERMINAL_SESSION_NUMBER_SINCE_APP_START"

.field public static final ENV_SHELL_CMD__TERMINAL_SESSION_NUMBER_SINCE_BOOT:Ljava/lang/String; = "SHELL_CMD__TERMINAL_SESSION_NUMBER_SINCE_BOOT"

.field public static final SHELL_CMD_ENV_PREFIX:Ljava/lang/String; = "SHELL_CMD__"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnvironment(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;)Ljava/util/HashMap;
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

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v0, "environment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p2, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-static {v1}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->runnerOf(Ljava/lang/String;)Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    move-result-object v1

    .line 52
    .local v1, "runner":Lcom/termux/shared/shell/command/ExecutionCommand$Runner;
    if-nez v1, :cond_0

    return-object v0

    .line 54
    :cond_0
    const-string v2, "SHELL_CMD__RUNNER_NAME"

    invoke-virtual {v1}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "SHELL_CMD__PACKAGE_NAME"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v2, p2, Lcom/termux/shared/shell/command/ExecutionCommand;->id:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHELL_CMD__SHELL_ID"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "SHELL_CMD__SHELL_NAME"

    iget-object v3, p2, Lcom/termux/shared/shell/command/ExecutionCommand;->shellName:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-object v0
.end method

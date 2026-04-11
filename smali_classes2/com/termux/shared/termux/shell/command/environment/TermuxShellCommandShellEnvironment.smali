.class public Lcom/termux/shared/termux/shell/command/environment/TermuxShellCommandShellEnvironment;
.super Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;
.source "TermuxShellCommandShellEnvironment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;-><init>()V

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

    .line 25
    invoke-super {p0, p1, p2}, Lcom/termux/shared/shell/command/environment/ShellCommandShellEnvironment;->getEnvironment(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;)Ljava/util/HashMap;

    move-result-object v0

    .line 27
    .local v0, "environment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v1

    .line 28
    .local v1, "preferences":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    if-nez v1, :cond_0

    return-object v0

    .line 30
    :cond_0
    sget-object v2, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    iget-object v3, p2, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->equalsRunner(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    nop

    .line 32
    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->getAndIncrementAppShellNumberSinceBoot()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 31
    const-string v3, "SHELL_CMD__APP_SHELL_NUMBER_SINCE_BOOT"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    nop

    .line 34
    invoke-static {}, Lcom/termux/shared/termux/shell/TermuxShellManager;->getAndIncrementAppShellNumberSinceAppStart()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 33
    const-string v3, "SHELL_CMD__APP_SHELL_NUMBER_SINCE_APP_START"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_1
    sget-object v2, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->TERMINAL_SESSION:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    iget-object v3, p2, Lcom/termux/shared/shell/command/ExecutionCommand;->runner:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->equalsRunner(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    nop

    .line 38
    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->getAndIncrementTerminalSessionNumberSinceBoot()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 37
    const-string v3, "SHELL_CMD__TERMINAL_SESSION_NUMBER_SINCE_BOOT"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    nop

    .line 40
    invoke-static {}, Lcom/termux/shared/termux/shell/TermuxShellManager;->getAndIncrementTerminalSessionNumberSinceAppStart()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 39
    const-string v3, "SHELL_CMD__TERMINAL_SESSION_NUMBER_SINCE_APP_START"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_0
    return-object v0

    .line 42
    :cond_2
    return-object v0
.end method

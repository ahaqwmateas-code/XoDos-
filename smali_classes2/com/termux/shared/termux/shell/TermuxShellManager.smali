.class public Lcom/termux/shared/termux/shell/TermuxShellManager;
.super Ljava/lang/Object;
.source "TermuxShellManager.java"


# static fields
.field public static APP_SHELL_NUMBER_SINCE_APP_START:I

.field private static SHELL_ID:I

.field public static TERMINAL_SESSION_NUMBER_SINCE_APP_START:I

.field private static shellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field public final mPendingPluginExecutionCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/shared/shell/command/ExecutionCommand;",
            ">;"
        }
    .end annotation
.end field

.field public final mTermuxSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/shared/termux/shell/command/runner/terminal/TermuxSession;",
            ">;"
        }
    .end annotation
.end field

.field public final mTermuxTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/shared/shell/command/runner/app/AppShell;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->SHELL_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxSessions:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mTermuxTasks:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mPendingPluginExecutionCommands:Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/termux/shell/TermuxShellManager;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public static declared-synchronized getAndIncrementAppShellNumberSinceAppStart()I
    .locals 3

    const-class v0, Lcom/termux/shared/termux/shell/TermuxShellManager;

    monitor-enter v0

    .line 105
    :try_start_0
    sget v1, Lcom/termux/shared/termux/shell/TermuxShellManager;->APP_SHELL_NUMBER_SINCE_APP_START:I

    .line 106
    .local v1, "curValue":I
    if-gez v1, :cond_0

    const v1, 0x7fffffff

    .line 108
    :cond_0
    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->APP_SHELL_NUMBER_SINCE_APP_START:I

    .line 109
    sget v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->APP_SHELL_NUMBER_SINCE_APP_START:I

    if-gez v2, :cond_1

    const v2, 0x7fffffff

    sput v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->APP_SHELL_NUMBER_SINCE_APP_START:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_1
    monitor-exit v0

    return v1

    .line 104
    .end local v1    # "curValue":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getAndIncrementTerminalSessionNumberSinceAppStart()I
    .locals 3

    const-class v0, Lcom/termux/shared/termux/shell/TermuxShellManager;

    monitor-enter v0

    .line 115
    :try_start_0
    sget v1, Lcom/termux/shared/termux/shell/TermuxShellManager;->TERMINAL_SESSION_NUMBER_SINCE_APP_START:I

    .line 116
    .local v1, "curValue":I
    if-gez v1, :cond_0

    const v1, 0x7fffffff

    .line 118
    :cond_0
    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->TERMINAL_SESSION_NUMBER_SINCE_APP_START:I

    .line 119
    sget v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->TERMINAL_SESSION_NUMBER_SINCE_APP_START:I

    if-gez v2, :cond_1

    const v2, 0x7fffffff

    sput v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->TERMINAL_SESSION_NUMBER_SINCE_APP_START:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_1
    monitor-exit v0

    return v1

    .line 114
    .end local v1    # "curValue":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getNextShellId()I
    .locals 3

    const-class v0, Lcom/termux/shared/termux/shell/TermuxShellManager;

    monitor-enter v0

    .line 100
    :try_start_0
    sget v1, Lcom/termux/shared/termux/shell/TermuxShellManager;->SHELL_ID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/termux/shared/termux/shell/TermuxShellManager;->SHELL_ID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 100
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getShellManager()Lcom/termux/shared/termux/shell/TermuxShellManager;
    .locals 1

    .line 78
    sget-object v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->shellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/termux/shared/termux/shell/TermuxShellManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->shellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/termux/shared/termux/shell/TermuxShellManager;

    invoke-direct {v0, p0}, Lcom/termux/shared/termux/shell/TermuxShellManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->shellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    .line 69
    :cond_0
    sget-object v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->shellManager:Lcom/termux/shared/termux/shell/TermuxShellManager;

    return-object v0
.end method

.method public static declared-synchronized onActionBootCompleted(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    const-class v0, Lcom/termux/shared/termux/shell/TermuxShellManager;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-static {p0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .local v1, "preferences":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 88
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->resetAppShellNumberSinceBoot()V

    .line 89
    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->resetTerminalSessionNumberSinceBoot()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    monitor-exit v0

    return-void

    .line 82
    .end local v1    # "preferences":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static onAppExit(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->APP_SHELL_NUMBER_SINCE_APP_START:I

    .line 96
    sput v0, Lcom/termux/shared/termux/shell/TermuxShellManager;->TERMINAL_SESSION_NUMBER_SINCE_APP_START:I

    .line 97
    return-void
.end method

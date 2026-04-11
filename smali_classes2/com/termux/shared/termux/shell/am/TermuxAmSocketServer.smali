.class public Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;
.super Ljava/lang/Object;
.source "TermuxAmSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer$TermuxAmSocketServerClient;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "TermuxAmSocketServer"

.field protected static TERMUX_APP_AM_SOCKET_SERVER_ENABLED:Ljava/lang/Boolean; = null

.field public static final TITLE:Ljava/lang/String; = "TermuxAm"

.field private static termuxAmSocketServer:Lcom/termux/shared/net/socket/local/LocalSocketManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getTermuxAmSocketServer()Lcom/termux/shared/net/socket/local/LocalSocketManager;
    .locals 2

    const-class v0, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;

    monitor-enter v0

    .line 147
    :try_start_0
    sget-object v1, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->termuxAmSocketServer:Lcom/termux/shared/net/socket/local/LocalSocketManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 147
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getTermuxAppAMSocketServerEnabled(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "currentPackageContext"    # Landroid/content/Context;

    .line 171
    const-string v0, "com.termux"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 172
    .local v0, "isTermuxApp":Z
    if-eqz v0, :cond_0

    .line 173
    sget-object v1, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->TERMUX_APP_AM_SOCKET_SERVER_ENABLED:Ljava/lang/Boolean;

    return-object v1

    .line 178
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static setupTermuxAmSocketServer(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "enabled":Z
    invoke-static {}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getProperties()Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->shouldRunTermuxAmSocketServer()Z

    move-result v1

    const-string v2, "TermuxAmSocketServer"

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "Starting TermuxAm socket server since its enabled"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->start(Landroid/content/Context;)V

    .line 84
    sget-object v1, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->termuxAmSocketServer:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->termuxAmSocketServer:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    const/4 v0, 0x1

    .line 86
    const-string v1, "TermuxAm socket server successfully started"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    const-string v1, "Not starting TermuxAm socket server since its not enabled"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->TERMUX_APP_AM_SOCKET_SERVER_ENABLED:Ljava/lang/Boolean;

    .line 96
    invoke-static {p0}, Lcom/termux/shared/termux/shell/command/environment/TermuxAppShellEnvironment;->updateTermuxAppAMSocketServerEnabled(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method public static declared-synchronized showErrorNotification(Landroid/content/Context;Lcom/termux/shared/errors/Error;Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;Lcom/termux/shared/net/socket/local/LocalClientSocket;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "error"    # Lcom/termux/shared/errors/Error;
    .param p2, "localSocketRunConfig"    # Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;
    .param p3, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;

    const-class v0, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;

    monitor-enter v0

    .line 163
    :try_start_0
    const-string v1, "TermuxAmSocketServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-virtual {p2}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Socket Server Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/termux/shared/errors/Error;->getMinimalErrorString()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-static {p1, p2, p3}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getErrorMarkdownString(Lcom/termux/shared/errors/Error;Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;Lcom/termux/shared/net/socket/local/LocalClientSocket;)Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-static {p0, v1, v2, v3, v4}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit v0

    return-void

    .line 162
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "error":Lcom/termux/shared/errors/Error;
    .end local p2    # "localSocketRunConfig":Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;
    .end local p3    # "clientSocket":Lcom/termux/shared/net/socket/local/LocalClientSocket;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized start(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-static {}, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->stop()V

    .line 105
    new-instance v1, Lcom/termux/shared/shell/am/AmSocketServerRunConfig;

    const-string v2, "TermuxAm"

    const-string v3, "/data/data/com.termux/files/apps/com.termux/termux-am/am.sock"

    new-instance v4, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer$TermuxAmSocketServerClient;

    invoke-direct {v4}, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer$TermuxAmSocketServerClient;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/termux/shared/shell/am/AmSocketServerRunConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/net/socket/local/ILocalSocketManager;)V

    .line 108
    .local v1, "amSocketServerRunConfig":Lcom/termux/shared/shell/am/AmSocketServerRunConfig;
    invoke-static {p0, v1}, Lcom/termux/shared/shell/am/AmSocketServer;->start(Landroid/content/Context;Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;)Lcom/termux/shared/net/socket/local/LocalSocketManager;

    move-result-object v2

    sput-object v2, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->termuxAmSocketServer:Lcom/termux/shared/net/socket/local/LocalSocketManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit v0

    return-void

    .line 102
    .end local v1    # "amSocketServerRunConfig":Lcom/termux/shared/shell/am/AmSocketServerRunConfig;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized stop()V
    .locals 3

    const-class v0, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->termuxAmSocketServer:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    if-eqz v1, :cond_1

    .line 116
    sget-object v1, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->termuxAmSocketServer:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->stop()Lcom/termux/shared/errors/Error;

    move-result-object v1

    .line 117
    .local v1, "error":Lcom/termux/shared/errors/Error;
    if-eqz v1, :cond_0

    .line 118
    sget-object v2, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->termuxAmSocketServer:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    invoke-virtual {v2, v1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->onError(Lcom/termux/shared/errors/Error;)V

    .line 120
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->termuxAmSocketServer:Lcom/termux/shared/net/socket/local/LocalSocketManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v1    # "error":Lcom/termux/shared/errors/Error;
    :cond_1
    monitor-exit v0

    return-void

    .line 114
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized updateState(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;

    monitor-enter v0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getProperties()Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    move-result-object v1

    .line 130
    .local v1, "properties":Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;
    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->shouldRunTermuxAmSocketServer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    sget-object v2, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->termuxAmSocketServer:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    if-nez v2, :cond_1

    .line 132
    const-string v2, "TermuxAmSocketServer"

    const-string v3, "updateState: Starting TermuxAm socket server"

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p0}, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 136
    :cond_0
    sget-object v2, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->termuxAmSocketServer:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    if-eqz v2, :cond_1

    .line 137
    const-string v2, "TermuxAmSocketServer"

    const-string v3, "updateState: Disabling TermuxAm socket server"

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 128
    .end local v1    # "properties":Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

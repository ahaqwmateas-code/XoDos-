.class public abstract Lcom/termux/shared/net/socket/local/LocalSocketManagerClientBase;
.super Ljava/lang/Object;
.source "LocalSocketManagerClientBase.java"

# interfaces
.implements Lcom/termux/shared/net/socket/local/ILocalSocketManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalSocketManagerClientThreadUEH(Lcom/termux/shared/net/socket/local/LocalSocketManager;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p1, "localSocketManager"    # Lcom/termux/shared/net/socket/local/LocalSocketManager;

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method public onClientAccepted(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;)V
    .locals 1
    .param p1, "localSocketManager"    # Lcom/termux/shared/net/socket/local/LocalSocketManager;
    .param p2, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->closeClientSocket(Z)Lcom/termux/shared/errors/Error;

    .line 41
    return-void
.end method

.method public onDisallowedClientConnected(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V
    .locals 2
    .param p1, "localSocketManager"    # Lcom/termux/shared/net/socket/local/LocalSocketManager;
    .param p2, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;
    .param p3, "error"    # Lcom/termux/shared/errors/Error;

    .line 31
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketManagerClientBase;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDisallowedClientConnected"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketManagerClientBase;->getLogTag()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getLocalSocketRunConfig()Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    move-result-object v1

    .line 32
    invoke-static {p3, v1, p2}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getErrorLogString(Lcom/termux/shared/errors/Error;Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;Lcom/termux/shared/net/socket/local/LocalClientSocket;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logWarnExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public onError(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V
    .locals 2
    .param p1, "localSocketManager"    # Lcom/termux/shared/net/socket/local/LocalSocketManager;
    .param p2, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;
    .param p3, "error"    # Lcom/termux/shared/errors/Error;

    .line 23
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketManagerClientBase;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logErrorPrivate(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketManagerClientBase;->getLogTag()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getLocalSocketRunConfig()Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    move-result-object v1

    .line 24
    invoke-static {p3, v1, p2}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getErrorLogString(Lcom/termux/shared/errors/Error;Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;Lcom/termux/shared/net/socket/local/LocalClientSocket;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logErrorPrivateExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

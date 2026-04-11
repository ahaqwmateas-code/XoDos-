.class public Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer$TermuxAmSocketServerClient;
.super Lcom/termux/shared/shell/am/AmSocketServer$AmSocketServerClient;
.source "TermuxAmSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TermuxAmSocketServerClient"
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "TermuxAmSocketServerClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/termux/shared/shell/am/AmSocketServer$AmSocketServerClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalSocketManagerClientThreadUEH(Lcom/termux/shared/net/socket/local/LocalSocketManager;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p1, "localSocketManager"    # Lcom/termux/shared/net/socket/local/LocalSocketManager;

    .line 197
    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->getCrashHandler(Landroid/content/Context;)Lcom/termux/shared/crash/CrashHandler;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 227
    const-string v0, "TermuxAmSocketServerClient"

    return-object v0
.end method

.method public onDisallowedClientConnected(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V
    .locals 2
    .param p1, "localSocketManager"    # Lcom/termux/shared/net/socket/local/LocalSocketManager;
    .param p2, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;
    .param p3, "error"    # Lcom/termux/shared/errors/Error;

    .line 218
    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 219
    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getLocalSocketRunConfig()Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    move-result-object v1

    .line 218
    invoke-static {v0, p3, v1, p2}, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->showErrorNotification(Landroid/content/Context;Lcom/termux/shared/errors/Error;Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;Lcom/termux/shared/net/socket/local/LocalClientSocket;)V

    .line 220
    invoke-super {p0, p1, p2, p3}, Lcom/termux/shared/shell/am/AmSocketServer$AmSocketServerClient;->onDisallowedClientConnected(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V

    .line 221
    return-void
.end method

.method public onError(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V
    .locals 2
    .param p1, "localSocketManager"    # Lcom/termux/shared/net/socket/local/LocalSocketManager;
    .param p2, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;
    .param p3, "error"    # Lcom/termux/shared/errors/Error;

    .line 205
    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getLocalSocketRunConfig()Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    move-result-object v1

    .line 206
    invoke-static {v0, p3, v1, p2}, Lcom/termux/shared/termux/shell/am/TermuxAmSocketServer;->showErrorNotification(Landroid/content/Context;Lcom/termux/shared/errors/Error;Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;Lcom/termux/shared/net/socket/local/LocalClientSocket;)V

    .line 211
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/termux/shared/shell/am/AmSocketServer$AmSocketServerClient;->onError(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V

    .line 212
    return-void
.end method

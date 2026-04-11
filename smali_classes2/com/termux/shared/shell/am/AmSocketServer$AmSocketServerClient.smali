.class public abstract Lcom/termux/shared/shell/am/AmSocketServer$AmSocketServerClient;
.super Lcom/termux/shared/net/socket/local/LocalSocketManagerClientBase;
.source "AmSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/shell/am/AmSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AmSocketServerClient"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/termux/shared/net/socket/local/LocalSocketManagerClientBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientAccepted(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;)V
    .locals 0
    .param p1, "localSocketManager"    # Lcom/termux/shared/net/socket/local/LocalSocketManager;
    .param p2, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;

    .line 252
    invoke-static {p1, p2}, Lcom/termux/shared/shell/am/AmSocketServer;->processAmClient(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;)V

    .line 253
    invoke-super {p0, p1, p2}, Lcom/termux/shared/net/socket/local/LocalSocketManagerClientBase;->onClientAccepted(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;)V

    .line 254
    return-void
.end method

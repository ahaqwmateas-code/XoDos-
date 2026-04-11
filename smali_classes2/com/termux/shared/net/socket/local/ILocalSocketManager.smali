.class public interface abstract Lcom/termux/shared/net/socket/local/ILocalSocketManager;
.super Ljava/lang/Object;
.source "ILocalSocketManager.java"


# virtual methods
.method public abstract getLocalSocketManagerClientThreadUEH(Lcom/termux/shared/net/socket/local/LocalSocketManager;)Ljava/lang/Thread$UncaughtExceptionHandler;
.end method

.method public abstract onClientAccepted(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;)V
.end method

.method public abstract onDisallowedClientConnected(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V
.end method

.method public abstract onError(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V
.end method

.class public Lcom/termux/shared/net/socket/local/LocalServerSocket$ClientSocketListener;
.super Ljava/lang/Object;
.source "LocalServerSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/net/socket/local/LocalServerSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ClientSocketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/shared/net/socket/local/LocalServerSocket;


# direct methods
.method protected constructor <init>(Lcom/termux/shared/net/socket/local/LocalServerSocket;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/shared/net/socket/local/LocalServerSocket;

    .line 249
    iput-object p1, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket$ClientSocketListener;->this$0:Lcom/termux/shared/net/socket/local/LocalServerSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 254
    const-string v0, "LocalServerSocket"

    :try_start_0
    const-string v1, "ClientSocketListener start"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_4

    .line 257
    const/4 v1, 0x0

    .line 260
    .local v1, "clientSocket":Lcom/termux/shared/net/socket/local/LocalClientSocket;
    const/4 v1, 0x0

    .line 261
    const/4 v2, 0x1

    :try_start_1
    iget-object v3, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket$ClientSocketListener;->this$0:Lcom/termux/shared/net/socket/local/LocalServerSocket;

    invoke-virtual {v3}, Lcom/termux/shared/net/socket/local/LocalServerSocket;->accept()Lcom/termux/shared/net/socket/local/LocalClientSocket;

    move-result-object v3

    move-object v1, v3

    .line 263
    if-nez v1, :cond_0

    .line 264
    goto :goto_2

    .line 268
    :cond_0
    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->setReadTimeout()Lcom/termux/shared/errors/Error;

    move-result-object v3

    .line 269
    .local v3, "error":Lcom/termux/shared/errors/Error;
    if-eqz v3, :cond_1

    .line 270
    iget-object v4, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket$ClientSocketListener;->this$0:Lcom/termux/shared/net/socket/local/LocalServerSocket;

    iget-object v4, v4, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    invoke-virtual {v4, v1, v3}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->onError(Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V

    .line 271
    invoke-virtual {v1, v2}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->closeClientSocket(Z)Lcom/termux/shared/errors/Error;

    .line 272
    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->setWriteTimeout()Lcom/termux/shared/errors/Error;

    move-result-object v4

    move-object v3, v4

    .line 276
    if-eqz v3, :cond_2

    .line 277
    iget-object v4, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket$ClientSocketListener;->this$0:Lcom/termux/shared/net/socket/local/LocalServerSocket;

    iget-object v4, v4, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    invoke-virtual {v4, v1, v3}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->onError(Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V

    .line 278
    invoke-virtual {v1, v2}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->closeClientSocket(Z)Lcom/termux/shared/errors/Error;

    .line 279
    goto :goto_0

    .line 283
    :cond_2
    iget-object v4, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket$ClientSocketListener;->this$0:Lcom/termux/shared/net/socket/local/LocalServerSocket;

    iget-object v4, v4, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    invoke-virtual {v4, v1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->onClientAccepted(Lcom/termux/shared/net/socket/local/LocalClientSocket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    .end local v3    # "error":Lcom/termux/shared/errors/Error;
    goto :goto_1

    .line 284
    :catchall_0
    move-exception v3

    .line 285
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v4, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket$ClientSocketListener;->this$0:Lcom/termux/shared/net/socket/local/LocalServerSocket;

    iget-object v4, v4, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    sget-object v5, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CLIENT_SOCKET_LISTENER_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    iget-object v6, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket$ClientSocketListener;->this$0:Lcom/termux/shared/net/socket/local/LocalServerSocket;

    iget-object v6, v6, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 286
    invoke-virtual {v6}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    aput-object v7, v8, v2

    invoke-virtual {v5, v3, v8}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v5

    .line 285
    invoke-virtual {v4, v1, v5}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->onError(Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V

    .line 287
    if-eqz v1, :cond_3

    .line 288
    invoke-virtual {v1, v2}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->closeClientSocket(Z)Lcom/termux/shared/errors/Error;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 290
    .end local v1    # "clientSocket":Lcom/termux/shared/net/socket/local/LocalClientSocket;
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    goto :goto_0

    .line 294
    :cond_4
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket$ClientSocketListener;->this$0:Lcom/termux/shared/net/socket/local/LocalServerSocket;

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/LocalServerSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 293
    :catchall_1
    move-exception v0

    .line 294
    :try_start_4
    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket$ClientSocketListener;->this$0:Lcom/termux/shared/net/socket/local/LocalServerSocket;

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/LocalServerSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 295
    :catch_0
    move-exception v1

    :goto_3
    nop

    .line 296
    throw v0

    .line 291
    :catch_1
    move-exception v1

    .line 294
    :try_start_5
    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket$ClientSocketListener;->this$0:Lcom/termux/shared/net/socket/local/LocalServerSocket;

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/LocalServerSocket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 295
    :goto_4
    goto :goto_5

    :catch_2
    move-exception v1

    .line 296
    nop

    .line 298
    :goto_5
    const-string v1, "ClientSocketListener end"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.class public Lcom/termux/shared/net/socket/local/LocalClientSocket;
.super Ljava/lang/Object;
.source "LocalClientSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketOutputStream;,
        Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketInputStream;,
        Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LocalClientSocket"


# instance fields
.field protected final mCreationTime:J

.field protected mFD:I

.field protected final mInputStream:Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketInputStream;

.field protected final mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

.field protected final mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

.field protected final mOutputStream:Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketOutputStream;

.field protected final mPeerCred:Lcom/termux/shared/net/socket/local/PeerCred;


# direct methods
.method constructor <init>(Lcom/termux/shared/net/socket/local/LocalSocketManager;ILcom/termux/shared/net/socket/local/PeerCred;)V
    .locals 2
    .param p1, "localSocketManager"    # Lcom/termux/shared/net/socket/local/LocalSocketManager;
    .param p2, "fd"    # I
    .param p3, "peerCred"    # Lcom/termux/shared/net/socket/local/PeerCred;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    .line 57
    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getLocalSocketRunConfig()Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mCreationTime:J

    .line 59
    new-instance v0, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketOutputStream;

    invoke-direct {v0, p0}, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketOutputStream;-><init>(Lcom/termux/shared/net/socket/local/LocalClientSocket;)V

    iput-object v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mOutputStream:Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketOutputStream;

    .line 60
    new-instance v0, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketInputStream;

    invoke-direct {v0, p0}, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketInputStream;-><init>(Lcom/termux/shared/net/socket/local/LocalClientSocket;)V

    iput-object v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mInputStream:Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketInputStream;

    .line 61
    iput-object p3, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mPeerCred:Lcom/termux/shared/net/socket/local/PeerCred;

    .line 63
    invoke-direct {p0, p2}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->setFD(I)V

    .line 64
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mPeerCred:Lcom/termux/shared/net/socket/local/PeerCred;

    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/shared/net/socket/local/PeerCred;->fillPeerCred(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public static closeClientSocket(Lcom/termux/shared/net/socket/local/LocalSocketManager;I)V
    .locals 2
    .param p0, "localSocketManager"    # Lcom/termux/shared/net/socket/local/LocalSocketManager;
    .param p1, "fd"    # I

    .line 84
    new-instance v0, Lcom/termux/shared/net/socket/local/LocalClientSocket;

    new-instance v1, Lcom/termux/shared/net/socket/local/PeerCred;

    invoke-direct {v1}, Lcom/termux/shared/net/socket/local/PeerCred;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lcom/termux/shared/net/socket/local/LocalClientSocket;-><init>(Lcom/termux/shared/net/socket/local/LocalSocketManager;ILcom/termux/shared/net/socket/local/PeerCred;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->closeClientSocket(Z)Lcom/termux/shared/errors/Error;

    .line 85
    return-void
.end method

.method private setFD(I)V
    .locals 1
    .param p1, "fd"    # I

    .line 324
    if-ltz p1, :cond_0

    .line 325
    iput p1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    goto :goto_0

    .line 327
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    .line 328
    :goto_0
    return-void
.end method


# virtual methods
.method public available(Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;)Lcom/termux/shared/errors/Error;
    .locals 1
    .param p1, "available"    # Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;

    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->available(Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;Z)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public available(Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;Z)Lcom/termux/shared/errors/Error;
    .locals 10
    .param p1, "available"    # Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;
    .param p2, "checkDeadline"    # Z

    .line 266
    const/4 v0, 0x0

    iput v0, p1, Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;->value:I

    .line 268
    iget v1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-gez v1, :cond_0

    .line 269
    sget-object v1, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_USING_CLIENT_SOCKET_WITH_INVALID_FD:Lcom/termux/shared/errors/Errno;

    iget v4, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 270
    invoke-virtual {v5}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    aput-object v5, v3, v2

    .line 269
    invoke-virtual {v1, v3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 273
    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v4}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getDeadline()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mCreationTime:J

    iget-object v8, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v8}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getDeadline()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 274
    return-object v1

    .line 277
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v5}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLogTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (client)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v5}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getFD()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->available(Ljava/lang/String;I)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v4

    .line 278
    .local v4, "result":Lcom/termux/shared/jni/models/JniResult;
    if-eqz v4, :cond_3

    iget v5, v4, Lcom/termux/shared/jni/models/JniResult;->retval:I

    if-eqz v5, :cond_2

    goto :goto_0

    .line 283
    :cond_2
    iget v0, v4, Lcom/termux/shared/jni/models/JniResult;->intData:I

    iput v0, p1, Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;->value:I

    .line 284
    return-object v1

    .line 279
    :cond_3
    :goto_0
    sget-object v1, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CHECK_AVAILABLE_DATA_ON_CLIENT_SOCKET_FAILED:Lcom/termux/shared/errors/Errno;

    iget-object v5, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 280
    invoke-virtual {v5}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/termux/shared/jni/models/JniResult;->getErrorString(Lcom/termux/shared/jni/models/JniResult;)Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v0

    aput-object v6, v3, v2

    .line 279
    invoke-virtual {v1, v3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    if-ltz v0, :cond_1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client socket close for \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->getPeerCred()Lcom/termux/shared/net/socket/local/PeerCred;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/PeerCred;->getMinimalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalClientSocket"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLogTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (client)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    invoke-static {v0, v1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->closeSocket(Ljava/lang/String;I)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v0

    .line 93
    .local v0, "result":Lcom/termux/shared/jni/models/JniResult;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/termux/shared/jni/models/JniResult;->retval:I

    if-nez v1, :cond_0

    .line 97
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->setFD(I)V

    goto :goto_0

    .line 94
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-static {v0}, Lcom/termux/shared/jni/models/JniResult;->getErrorString(Lcom/termux/shared/jni/models/JniResult;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    .end local v0    # "result":Lcom/termux/shared/jni/models/JniResult;
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized closeClientSocket(Z)Lcom/termux/shared/errors/Error;
    .locals 6
    .param p1, "logErrorMessage"    # Z

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    nop

    .line 79
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 70
    .end local p0    # "this":Lcom/termux/shared/net/socket/local/LocalClientSocket;
    .end local p1    # "logErrorMessage":Z
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 72
    .restart local p1    # "logErrorMessage":Z
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CLOSE_CLIENT_SOCKET_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    iget-object v2, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v2}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-virtual {v1, v0, v4}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v1

    .line 74
    .local v1, "error":Lcom/termux/shared/errors/Error;
    if-eqz p1, :cond_0

    .line 75
    const-string v2, "LocalClientSocket"

    invoke-virtual {v1}, Lcom/termux/shared/errors/Error;->getErrorLogString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-object v1

    .line 70
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "error":Lcom/termux/shared/errors/Error;
    .end local p1    # "logErrorMessage":Z
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getCreationTime()J
    .locals 2

    .line 337
    iget-wide v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mCreationTime:J

    return-wide v0
.end method

.method public getFD()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mInputStream:Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketInputStream;

    return-object v0
.end method

.method public getInputStreamReader()Ljava/io/InputStreamReader;
    .locals 2

    .line 359
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getLogString()Ljava/lang/String;
    .locals 6

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v0, "logString":Ljava/lang/StringBuilder;
    const-string v1, "Client Socket:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FD"

    const-string v5, "-"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mCreationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Creation Time"

    invoke-static {v3, v2, v5}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v1, "\n\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mPeerCred:Lcom/termux/shared/net/socket/local/PeerCred;

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/PeerCred;->getLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMarkdownString()Ljava/lang/String;
    .locals 6

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    const-string v1, "## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Client Socket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FD"

    const-string v5, "-"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mCreationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Creation Time"

    invoke-static {v3, v2, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v1, "\n\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mPeerCred:Lcom/termux/shared/net/socket/local/PeerCred;

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/PeerCred;->getMarkdownString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mOutputStream:Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketOutputStream;

    return-object v0
.end method

.method public getOutputStreamWriter()Ljava/io/OutputStreamWriter;
    .locals 2

    .line 348
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getPeerCred()Lcom/termux/shared/net/socket/local/PeerCred;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mPeerCred:Lcom/termux/shared/net/socket/local/PeerCred;

    return-object v0
.end method

.method public read([BLcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;)Lcom/termux/shared/errors/Error;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "bytesRead"    # Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;

    .line 124
    const/4 v0, 0x0

    iput v0, p2, Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;->value:I

    .line 126
    iget v1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-gez v1, :cond_0

    .line 127
    sget-object v1, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_USING_CLIENT_SOCKET_WITH_INVALID_FD:Lcom/termux/shared/errors/Errno;

    iget v4, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 128
    invoke-virtual {v5}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    aput-object v5, v3, v2

    .line 127
    invoke-virtual {v1, v3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v4}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLogTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (client)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    .line 133
    iget-object v5, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v5}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getDeadline()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    iget-wide v5, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mCreationTime:J

    iget-object v7, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v7}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getDeadline()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 131
    :cond_1
    invoke-static {v1, v4, p1, v7, v8}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->read(Ljava/lang/String;I[BJ)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v1

    .line 134
    .local v1, "result":Lcom/termux/shared/jni/models/JniResult;
    if-eqz v1, :cond_3

    iget v4, v1, Lcom/termux/shared/jni/models/JniResult;->retval:I

    if-eqz v4, :cond_2

    goto :goto_0

    .line 139
    :cond_2
    iget v0, v1, Lcom/termux/shared/jni/models/JniResult;->intData:I

    iput v0, p2, Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;->value:I

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_3
    :goto_0
    sget-object v4, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_READ_DATA_FROM_CLIENT_SOCKET_FAILED:Lcom/termux/shared/errors/Errno;

    iget-object v5, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 136
    invoke-virtual {v5}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/termux/shared/jni/models/JniResult;->getErrorString(Lcom/termux/shared/jni/models/JniResult;)Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v0

    aput-object v6, v3, v2

    .line 135
    invoke-virtual {v4, v3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public readDataOnInputStream(Ljava/lang/StringBuilder;Z)Lcom/termux/shared/errors/Error;
    .locals 8
    .param p1, "data"    # Ljava/lang/StringBuilder;
    .param p2, "closeStreamOnFinish"    # Z

    .line 189
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->getInputStreamReader()Ljava/io/InputStreamReader;

    move-result-object v0

    .line 191
    .local v0, "inputStreamReader":Ljava/io/InputStreamReader;
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result v4

    move v5, v4

    .local v5, "c":I
    if-lez v4, :cond_0

    .line 192
    int-to-char v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 204
    :cond_0
    if-eqz p2, :cond_1

    .line 205
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    :goto_1
    goto :goto_2

    .line 206
    :catch_0
    move-exception v1

    goto :goto_1

    .line 212
    :cond_1
    :goto_2
    const/4 v1, 0x0

    return-object v1

    .line 204
    .end local v5    # "c":I
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 200
    :catch_1
    move-exception v4

    .line 201
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_READ_DATA_FROM_INPUT_STREAM_OF_CLIENT_SOCKET_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    iget-object v6, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 202
    invoke-virtual {v6}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v1

    aput-object v7, v2, v3

    .line 201
    invoke-virtual {v5, v4, v2}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    if-eqz p2, :cond_2

    .line 205
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 208
    goto :goto_3

    .line 206
    :catch_2
    move-exception v2

    .line 201
    :cond_2
    :goto_3
    return-object v1

    .line 194
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 198
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v5, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_READ_DATA_FROM_INPUT_STREAM_OF_CLIENT_SOCKET_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    iget-object v6, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 199
    invoke-virtual {v6}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/termux/shared/data/DataUtils;->getSpaceIndentedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v1

    aput-object v7, v2, v3

    .line 198
    invoke-virtual {v5, v2}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    if-eqz p2, :cond_3

    .line 205
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 208
    goto :goto_4

    .line 206
    :catch_4
    move-exception v2

    .line 198
    :cond_3
    :goto_4
    return-object v1

    .line 204
    .end local v4    # "e":Ljava/io/IOException;
    :goto_5
    if-eqz p2, :cond_4

    .line 205
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 208
    goto :goto_6

    .line 206
    :catch_5
    move-exception v2

    .line 210
    :cond_4
    :goto_6
    throw v1
.end method

.method public send([B)Lcom/termux/shared/errors/Error;
    .locals 10
    .param p1, "data"    # [B

    .line 159
    iget v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-gez v0, :cond_0

    .line 160
    sget-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_USING_CLIENT_SOCKET_WITH_INVALID_FD:Lcom/termux/shared/errors/Errno;

    iget v4, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 161
    invoke-virtual {v5}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    aput-object v5, v3, v1

    .line 160
    invoke-virtual {v0, v3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v4}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLogTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " (client)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    .line 166
    iget-object v5, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v5}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getDeadline()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    iget-wide v5, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mCreationTime:J

    iget-object v7, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v7}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getDeadline()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 164
    :cond_1
    invoke-static {v0, v4, p1, v7, v8}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->send(Ljava/lang/String;I[BJ)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v0

    .line 167
    .local v0, "result":Lcom/termux/shared/jni/models/JniResult;
    if-eqz v0, :cond_3

    iget v4, v0, Lcom/termux/shared/jni/models/JniResult;->retval:I

    if-eqz v4, :cond_2

    goto :goto_0

    .line 172
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 168
    :cond_3
    :goto_0
    sget-object v4, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SEND_DATA_TO_CLIENT_SOCKET_FAILED:Lcom/termux/shared/errors/Errno;

    iget-object v5, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 169
    invoke-virtual {v5}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/termux/shared/jni/models/JniResult;->getErrorString(Lcom/termux/shared/jni/models/JniResult;)Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    aput-object v6, v3, v1

    .line 168
    invoke-virtual {v4, v3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v1

    return-object v1
.end method

.method public sendDataToOutputStream(Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 8
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "closeStreamOnFinish"    # Z

    .line 228
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->getOutputStreamWriter()Ljava/io/OutputStreamWriter;

    move-result-object v0

    .line 230
    .local v0, "outputStreamWriter":Ljava/io/OutputStreamWriter;
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    invoke-direct {v4, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 231
    .local v4, "byteStreamWriter":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 243
    .end local v4    # "byteStreamWriter":Ljava/io/BufferedWriter;
    if-eqz p2, :cond_0

    .line 245
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 248
    :goto_0
    goto :goto_1

    .line 246
    :catch_0
    move-exception v1

    goto :goto_0

    .line 252
    :cond_0
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 230
    .restart local v4    # "byteStreamWriter":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_5
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    .end local p1    # "data":Ljava/lang/String;
    .end local p2    # "closeStreamOnFinish":Z
    :goto_2
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 243
    .end local v4    # "byteStreamWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local p1    # "data":Ljava/lang/String;
    .restart local p2    # "closeStreamOnFinish":Z
    :catchall_2
    move-exception v1

    goto :goto_5

    .line 239
    :catch_1
    move-exception v4

    .line 240
    .local v4, "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v5, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SEND_DATA_TO_OUTPUT_STREAM_OF_CLIENT_SOCKET_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    iget-object v6, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 241
    invoke-virtual {v6}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v1

    aput-object v7, v2, v3

    .line 240
    invoke-virtual {v5, v4, v2}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 243
    if-eqz p2, :cond_1

    .line 245
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 248
    goto :goto_3

    .line 246
    :catch_2
    move-exception v2

    .line 240
    :cond_1
    :goto_3
    return-object v1

    .line 233
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 237
    .local v4, "e":Ljava/io/IOException;
    :try_start_8
    sget-object v5, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SEND_DATA_TO_OUTPUT_STREAM_OF_CLIENT_SOCKET_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    iget-object v6, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 238
    invoke-virtual {v6}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/termux/shared/data/DataUtils;->getSpaceIndentedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v1

    aput-object v7, v2, v3

    .line 237
    invoke-virtual {v5, v2}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 243
    if-eqz p2, :cond_2

    .line 245
    :try_start_9
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 248
    goto :goto_4

    .line 246
    :catch_4
    move-exception v2

    .line 237
    :cond_2
    :goto_4
    return-object v1

    .line 243
    .end local v4    # "e":Ljava/io/IOException;
    :goto_5
    if-eqz p2, :cond_3

    .line 245
    :try_start_a
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 248
    goto :goto_6

    .line 246
    :catch_5
    move-exception v2

    .line 250
    :cond_3
    :goto_6
    throw v1
.end method

.method public setReadTimeout()Lcom/termux/shared/errors/Error;
    .locals 7

    .line 291
    iget v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    if-ltz v0, :cond_1

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLogTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (client)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    iget-object v2, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 293
    invoke-virtual {v2}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getReceiveTimeout()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 292
    invoke-static {v0, v1, v2}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->setSocketReadTimeout(Ljava/lang/String;II)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v0

    .line 294
    .local v0, "result":Lcom/termux/shared/jni/models/JniResult;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/termux/shared/jni/models/JniResult;->retval:I

    if-eqz v1, :cond_1

    .line 295
    :cond_0
    sget-object v1, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SET_CLIENT_SOCKET_READ_TIMEOUT_FAILED:Lcom/termux/shared/errors/Errno;

    iget-object v2, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 296
    invoke-virtual {v2}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v3}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getReceiveTimeout()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Lcom/termux/shared/jni/models/JniResult;->getErrorString(Lcom/termux/shared/jni/models/JniResult;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v2, 0x2

    aput-object v4, v5, v2

    .line 295
    invoke-virtual {v1, v5}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v1

    return-object v1

    .line 299
    .end local v0    # "result":Lcom/termux/shared/jni/models/JniResult;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setWriteTimeout()Lcom/termux/shared/errors/Error;
    .locals 7

    .line 304
    iget v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    if-ltz v0, :cond_1

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLogTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (client)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mFD:I

    iget-object v2, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 306
    invoke-virtual {v2}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getSendTimeout()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 305
    invoke-static {v0, v1, v2}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->setSocketSendTimeout(Ljava/lang/String;II)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v0

    .line 307
    .local v0, "result":Lcom/termux/shared/jni/models/JniResult;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/termux/shared/jni/models/JniResult;->retval:I

    if-eqz v1, :cond_1

    .line 308
    :cond_0
    sget-object v1, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SET_CLIENT_SOCKET_SEND_TIMEOUT_FAILED:Lcom/termux/shared/errors/Errno;

    iget-object v2, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 309
    invoke-virtual {v2}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v3}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getSendTimeout()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Lcom/termux/shared/jni/models/JniResult;->getErrorString(Lcom/termux/shared/jni/models/JniResult;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v2, 0x2

    aput-object v4, v5, v2

    .line 308
    invoke-virtual {v1, v5}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v1

    return-object v1

    .line 312
    .end local v0    # "result":Lcom/termux/shared/jni/models/JniResult;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

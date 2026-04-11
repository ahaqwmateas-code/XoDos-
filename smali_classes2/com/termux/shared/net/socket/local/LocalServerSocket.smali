.class public Lcom/termux/shared/net/socket/local/LocalServerSocket;
.super Ljava/lang/Object;
.source "LocalServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/net/socket/local/LocalServerSocket$ClientSocketListener;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LocalServerSocket"

.field public static final SERVER_SOCKET_PARENT_DIRECTORY_PERMISSIONS:Ljava/lang/String; = "rwx"


# instance fields
.field protected final mClientSocketListener:Ljava/lang/Thread;

.field protected final mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

.field protected final mLocalSocketManagerClient:Lcom/termux/shared/net/socket/local/ILocalSocketManager;

.field protected final mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;


# direct methods
.method protected constructor <init>(Lcom/termux/shared/net/socket/local/LocalSocketManager;)V
    .locals 2
    .param p1, "localSocketManager"    # Lcom/termux/shared/net/socket/local/LocalSocketManager;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    .line 46
    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getLocalSocketRunConfig()Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 47
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLocalSocketManagerClient()Lcom/termux/shared/net/socket/local/ILocalSocketManager;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManagerClient:Lcom/termux/shared/net/socket/local/ILocalSocketManager;

    .line 48
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/shared/net/socket/local/LocalServerSocket$ClientSocketListener;

    invoke-direct {v1, p0}, Lcom/termux/shared/net/socket/local/LocalServerSocket$ClientSocketListener;-><init>(Lcom/termux/shared/net/socket/local/LocalServerSocket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mClientSocketListener:Ljava/lang/Thread;

    .line 49
    return-void
.end method

.method private deleteServerSocketFile()Lcom/termux/shared/errors/Error;
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->isAbstractNamespaceSocket()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " server socket file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/file/FileUtils;->deleteSocketFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public accept()Lcom/termux/shared/net/socket/local/LocalClientSocket;
    .locals 14

    .line 188
    const-string v0, "accept"

    const-string v1, "LocalServerSocket"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getFD()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 194
    .local v0, "fd":I
    if-gez v0, :cond_0

    .line 195
    const/4 v1, 0x0

    return-object v1

    .line 198
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v3}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLogTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (client)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->accept(Ljava/lang/String;I)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v2

    .line 199
    .local v2, "result":Lcom/termux/shared/jni/models/JniResult;
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_7

    iget v7, v2, Lcom/termux/shared/jni/models/JniResult;->retval:I

    if-eqz v7, :cond_1

    goto/16 :goto_2

    .line 205
    :cond_1
    iget v7, v2, Lcom/termux/shared/jni/models/JniResult;->intData:I

    .line 206
    .local v7, "clientFD":I
    if-gez v7, :cond_2

    .line 207
    iget-object v3, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    sget-object v8, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CLIENT_SOCKET_FD_INVALID:Lcom/termux/shared/errors/Errno;

    .line 208
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v10}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v10

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v9, v5, v4

    aput-object v10, v5, v6

    invoke-virtual {v8, v5}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 207
    invoke-virtual {v3, v4}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->onError(Lcom/termux/shared/errors/Error;)V

    .line 209
    goto :goto_0

    .line 212
    :cond_2
    new-instance v8, Lcom/termux/shared/net/socket/local/PeerCred;

    invoke-direct {v8}, Lcom/termux/shared/net/socket/local/PeerCred;-><init>()V

    .line 213
    .local v8, "peerCred":Lcom/termux/shared/net/socket/local/PeerCred;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v10}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLogTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7, v8}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getPeerCred(Ljava/lang/String;ILcom/termux/shared/net/socket/local/PeerCred;)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v2

    .line 214
    if-eqz v2, :cond_6

    iget v3, v2, Lcom/termux/shared/jni/models/JniResult;->retval:I

    if-eqz v3, :cond_3

    goto/16 :goto_1

    .line 221
    :cond_3
    iget v3, v8, Lcom/termux/shared/net/socket/local/PeerCred;->uid:I

    .line 222
    .local v3, "peerUid":I
    if-gez v3, :cond_4

    .line 223
    iget-object v9, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    sget-object v10, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CLIENT_SOCKET_PEER_UID_INVALID:Lcom/termux/shared/errors/Errno;

    .line 224
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v12}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v12

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v11, v5, v4

    aput-object v12, v5, v6

    invoke-virtual {v10, v5}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 223
    invoke-virtual {v9, v4}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->onError(Lcom/termux/shared/errors/Error;)V

    .line 225
    iget-object v4, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    invoke-static {v4, v7}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->closeClientSocket(Lcom/termux/shared/net/socket/local/LocalSocketManager;I)V

    .line 226
    goto/16 :goto_0

    .line 229
    :cond_4
    new-instance v9, Lcom/termux/shared/net/socket/local/LocalClientSocket;

    iget-object v10, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    invoke-direct {v9, v10, v7, v8}, Lcom/termux/shared/net/socket/local/LocalClientSocket;-><init>(Lcom/termux/shared/net/socket/local/LocalSocketManager;ILcom/termux/shared/net/socket/local/PeerCred;)V

    .line 230
    .local v9, "clientSocket":Lcom/termux/shared/net/socket/local/LocalClientSocket;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Client socket accept for \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v11}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" server\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->getLogString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v10, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    invoke-virtual {v10}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v10, :cond_5

    if-eqz v3, :cond_5

    .line 234
    iget-object v10, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    sget-object v11, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CLIENT_SOCKET_PEER_UID_DISALLOWED:Lcom/termux/shared/errors/Errno;

    .line 235
    invoke-virtual {v9}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->getPeerCred()Lcom/termux/shared/net/socket/local/PeerCred;

    move-result-object v12

    invoke-virtual {v12}, Lcom/termux/shared/net/socket/local/PeerCred;->getMinimalString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    .line 236
    invoke-virtual {v13}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getLocalSocketRunConfig()Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v13

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v12, v5, v4

    aput-object v13, v5, v6

    .line 235
    invoke-virtual {v11, v5}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 234
    invoke-virtual {v10, v9, v4}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->onDisallowedClientConnected(Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V

    .line 237
    invoke-virtual {v9, v6}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->closeClientSocket(Z)Lcom/termux/shared/errors/Error;

    .line 238
    goto/16 :goto_0

    .line 241
    :cond_5
    return-object v9

    .line 215
    .end local v3    # "peerUid":I
    .end local v9    # "clientSocket":Lcom/termux/shared/net/socket/local/LocalClientSocket;
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    sget-object v9, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_GET_CLIENT_SOCKET_PEER_UID_FAILED:Lcom/termux/shared/errors/Errno;

    iget-object v10, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 216
    invoke-virtual {v10}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2}, Lcom/termux/shared/jni/models/JniResult;->getErrorString(Lcom/termux/shared/jni/models/JniResult;)Ljava/lang/String;

    move-result-object v11

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v10, v5, v4

    aput-object v11, v5, v6

    invoke-virtual {v9, v5}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 215
    invoke-virtual {v3, v4}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->onError(Lcom/termux/shared/errors/Error;)V

    .line 217
    iget-object v3, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    invoke-static {v3, v7}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->closeClientSocket(Lcom/termux/shared/net/socket/local/LocalSocketManager;I)V

    .line 218
    goto/16 :goto_0

    .line 200
    .end local v7    # "clientFD":I
    .end local v8    # "peerCred":Lcom/termux/shared/net/socket/local/PeerCred;
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    sget-object v7, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_ACCEPT_CLIENT_SOCKET_FAILED:Lcom/termux/shared/errors/Errno;

    iget-object v8, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 201
    invoke-virtual {v8}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lcom/termux/shared/jni/models/JniResult;->getErrorString(Lcom/termux/shared/jni/models/JniResult;)Ljava/lang/String;

    move-result-object v9

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v4

    aput-object v9, v5, v6

    invoke-virtual {v7, v5}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 200
    invoke-virtual {v3, v4}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->onError(Lcom/termux/shared/errors/Error;)V

    .line 202
    goto/16 :goto_0
.end method

.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 161
    :try_start_0
    const-string v0, "LocalServerSocket"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getFD()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 165
    .local v0, "fd":I
    if-ltz v0, :cond_1

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v2}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLogTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (server)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->closeSocket(Ljava/lang/String;I)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v1

    .line 167
    .local v1, "result":Lcom/termux/shared/jni/models/JniResult;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/termux/shared/jni/models/JniResult;->retval:I

    if-nez v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->setFD(I)V

    goto :goto_0

    .line 168
    .end local p0    # "this":Lcom/termux/shared/net/socket/local/LocalServerSocket;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-static {v1}, Lcom/termux/shared/jni/models/JniResult;->getErrorString(Lcom/termux/shared/jni/models/JniResult;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v1    # "result":Lcom/termux/shared/jni/models/JniResult;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    .end local v0    # "fd":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized closeServerSocket(Z)Lcom/termux/shared/errors/Error;
    .locals 6
    .param p1, "logErrorMessage"    # Z

    monitor-enter p0

    .line 144
    :try_start_0
    const-string v0, "LocalServerSocket"

    const-string v1, "closeServerSocket"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :try_start_1
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    nop

    .line 155
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 148
    .end local p0    # "this":Lcom/termux/shared/net/socket/local/LocalServerSocket;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v1, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CLOSE_SERVER_SOCKET_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    iget-object v2, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

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

    .line 150
    .local v1, "error":Lcom/termux/shared/errors/Error;
    if-eqz p1, :cond_0

    .line 151
    const-string v2, "LocalServerSocket"

    invoke-virtual {v1}, Lcom/termux/shared/errors/Error;->getErrorLogString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    :cond_0
    monitor-exit p0

    return-object v1

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "error":Lcom/termux/shared/errors/Error;
    .end local p1    # "logErrorMessage":Z
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized start()Lcom/termux/shared/errors/Error;
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    .line 53
    :try_start_0
    const-string v0, "LocalServerSocket"

    const-string v2, "start"

    invoke-static {v0, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "path":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 59
    :cond_0
    iget-object v4, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v4}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->isAbstractNamespaceSocket()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 60
    invoke-static {v0, v5}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 59
    .end local p0    # "this":Lcom/termux/shared/net/socket/local/LocalServerSocket;
    :cond_1
    move-object v4, v0

    .line 66
    .end local v0    # "path":Ljava/lang/String;
    .local v4, "path":Ljava/lang/String;
    :goto_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v6, 0x6c

    const/4 v7, 0x2

    if-le v0, v6, :cond_2

    .line 67
    sget-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SERVER_SOCKET_PATH_TOO_LONG:Lcom/termux/shared/errors/Errno;

    iget-object v5, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v5}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v5, v6, v2

    aput-object v4, v6, v3

    invoke-virtual {v0, v6}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 70
    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getBacklog()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    .line 71
    .local v6, "backlog":I
    if-gtz v6, :cond_3

    .line 72
    sget-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SERVER_SOCKET_BACKLOG_INVALID:Lcom/termux/shared/errors/Errno;

    iget-object v5, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v5}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    aput-object v8, v7, v3

    invoke-virtual {v0, v7}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 78
    :cond_3
    :try_start_2
    iget-object v0, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->isAbstractNamespaceSocket()Z

    move-result v0

    if-nez v0, :cond_6

    .line 79
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 80
    sget-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SERVER_SOCKET_PATH_NOT_ABSOLUTE:Lcom/termux/shared/errors/Errno;

    iget-object v5, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v5}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    aput-object v4, v7, v3

    invoke-virtual {v0, v7}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 83
    :cond_4
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    .line 84
    .local v9, "socketParentPath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v8}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " server socket file parent"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "rwx"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static/range {v8 .. v16}, Lcom/termux/shared/file/FileUtils;->validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .local v0, "error":Lcom/termux/shared/errors/Error;
    if-eqz v0, :cond_5

    .line 90
    monitor-exit p0

    return-object v0

    .line 94
    :cond_5
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/termux/shared/net/socket/local/LocalServerSocket;->deleteServerSocketFile()Lcom/termux/shared/errors/Error;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v8

    .line 95
    if-eqz v0, :cond_6

    .line 96
    monitor-exit p0

    return-object v0

    .line 100
    .end local v0    # "error":Lcom/termux/shared/errors/Error;
    .end local v9    # "socketParentPath":Ljava/lang/String;
    :cond_6
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v8}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLogTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " (server)"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 101
    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 100
    invoke-static {v0, v8, v6}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->createServerSocket(Ljava/lang/String;[BI)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v0

    move-object v8, v0

    .line 102
    .local v8, "result":Lcom/termux/shared/jni/models/JniResult;
    if-eqz v8, :cond_9

    iget v0, v8, Lcom/termux/shared/jni/models/JniResult;->retval:I

    if-eqz v0, :cond_7

    goto :goto_2

    .line 106
    :cond_7
    iget v0, v8, Lcom/termux/shared/jni/models/JniResult;->intData:I

    move v9, v0

    .line 107
    .local v9, "fd":I
    if-gez v9, :cond_8

    .line 108
    sget-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SERVER_SOCKET_FD_INVALID:Lcom/termux/shared/errors/Errno;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v10, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v10}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v10

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    aput-object v10, v7, v3

    invoke-virtual {v0, v7}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 112
    :cond_8
    :try_start_6
    iget-object v0, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v0, v9}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->setFD(I)V

    .line 114
    iget-object v0, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mClientSocketListener:Ljava/lang/Thread;

    iget-object v2, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketManager:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    invoke-virtual {v2}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getLocalSocketManagerClientThreadUEH()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 118
    :try_start_7
    iget-object v0, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mClientSocketListener:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 121
    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v2, "LocalServerSocket"

    const-string v3, "mClientSocketListener start failed"

    invoke-static {v2, v3, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-object v5

    .line 103
    .end local v9    # "fd":I
    :cond_9
    :goto_2
    :try_start_9
    sget-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CREATE_SERVER_SOCKET_FAILED:Lcom/termux/shared/errors/Errno;

    iget-object v5, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v5}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Lcom/termux/shared/jni/models/JniResult;->getErrorString(Lcom/termux/shared/jni/models/JniResult;)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    aput-object v9, v7, v3

    invoke-virtual {v0, v7}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object v0

    .line 57
    .end local v4    # "path":Ljava/lang/String;
    .end local v6    # "backlog":I
    .end local v8    # "result":Lcom/termux/shared/jni/models/JniResult;
    .local v0, "path":Ljava/lang/String;
    :cond_a
    :goto_3
    :try_start_a
    sget-object v4, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SERVER_SOCKET_PATH_NULL_OR_EMPTY:Lcom/termux/shared/errors/Errno;

    iget-object v5, v1, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v5}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-virtual {v4, v3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v2

    .line 52
    .end local v0    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method

.method public declared-synchronized stop()Lcom/termux/shared/errors/Error;
    .locals 2

    monitor-enter p0

    .line 128
    :try_start_0
    const-string v0, "LocalServerSocket"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalServerSocket;->mClientSocketListener:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    goto :goto_0

    .end local p0    # "this":Lcom/termux/shared/net/socket/local/LocalServerSocket;
    :catch_0
    move-exception v0

    .line 135
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/termux/shared/net/socket/local/LocalServerSocket;->closeServerSocket(Z)Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .local v0, "error":Lcom/termux/shared/errors/Error;
    if-eqz v0, :cond_0

    .line 137
    monitor-exit p0

    return-object v0

    .line 139
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/termux/shared/net/socket/local/LocalServerSocket;->deleteServerSocketFile()Lcom/termux/shared/errors/Error;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    .line 127
    .end local v0    # "error":Lcom/termux/shared/errors/Error;
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

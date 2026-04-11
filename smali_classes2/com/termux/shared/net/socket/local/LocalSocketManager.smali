.class public Lcom/termux/shared/net/socket/local/LocalSocketManager;
.super Ljava/lang/Object;
.source "LocalSocketManager.java"


# static fields
.field protected static LOCAL_SOCKET_LIBRARY:Ljava/lang/String; = null

.field public static final LOG_TAG:Ljava/lang/String; = "LocalSocketManager"

.field protected static localSocketLibraryLoaded:Z


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mIsRunning:Z

.field protected final mLocalSocketManagerClient:Lcom/termux/shared/net/socket/local/ILocalSocketManager;

.field protected final mLocalSocketManagerClientThreadUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

.field protected final mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

.field protected final mServerSocket:Lcom/termux/shared/net/socket/local/LocalServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "local-socket"

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->LOCAL_SOCKET_LIBRARY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localSocketRunConfig"    # Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 61
    new-instance v0, Lcom/termux/shared/net/socket/local/LocalServerSocket;

    invoke-direct {v0, p0}, Lcom/termux/shared/net/socket/local/LocalServerSocket;-><init>(Lcom/termux/shared/net/socket/local/LocalSocketManager;)V

    iput-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mServerSocket:Lcom/termux/shared/net/socket/local/LocalServerSocket;

    .line 62
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLocalSocketManagerClient()Lcom/termux/shared/net/socket/local/ILocalSocketManager;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mLocalSocketManagerClient:Lcom/termux/shared/net/socket/local/ILocalSocketManager;

    .line 63
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getLocalSocketManagerClientThreadUEHOrDefault()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mLocalSocketManagerClientThreadUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mIsRunning:Z

    .line 65
    return-void
.end method

.method public static accept(Ljava/lang/String;I)Lcom/termux/shared/jni/models/JniResult;
    .locals 3
    .param p0, "serverTitle"    # Ljava/lang/String;
    .param p1, "fd"    # I

    .line 166
    :try_start_0
    invoke-static {p0, p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->acceptNative(Ljava/lang/String;I)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    .line 168
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Exception in acceptNative()"

    .line 169
    .local v1, "message":Ljava/lang/String;
    const-string v2, "LocalSocketManager"

    invoke-static {v2, v1, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    new-instance v2, Lcom/termux/shared/jni/models/JniResult;

    invoke-direct {v2, v1, v0}, Lcom/termux/shared/jni/models/JniResult;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static native acceptNative(Ljava/lang/String;I)Lcom/termux/shared/jni/models/JniResult;
.end method

.method public static available(Ljava/lang/String;I)Lcom/termux/shared/jni/models/JniResult;
    .locals 3
    .param p0, "serverTitle"    # Ljava/lang/String;
    .param p1, "fd"    # I

    .line 237
    :try_start_0
    invoke-static {p0, p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->availableNative(Ljava/lang/String;I)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Exception in availableNative()"

    .line 240
    .local v1, "message":Ljava/lang/String;
    const-string v2, "LocalSocketManager"

    invoke-static {v2, v1, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    new-instance v2, Lcom/termux/shared/jni/models/JniResult;

    invoke-direct {v2, v1, v0}, Lcom/termux/shared/jni/models/JniResult;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static native availableNative(Ljava/lang/String;I)Lcom/termux/shared/jni/models/JniResult;
.end method

.method public static closeSocket(Ljava/lang/String;I)Lcom/termux/shared/jni/models/JniResult;
    .locals 3
    .param p0, "serverTitle"    # Ljava/lang/String;
    .param p1, "fd"    # I

    .line 146
    :try_start_0
    invoke-static {p0, p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->closeSocketNative(Ljava/lang/String;I)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Exception in closeSocketNative()"

    .line 149
    .local v1, "message":Ljava/lang/String;
    const-string v2, "LocalSocketManager"

    invoke-static {v2, v1, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    new-instance v2, Lcom/termux/shared/jni/models/JniResult;

    invoke-direct {v2, v1, v0}, Lcom/termux/shared/jni/models/JniResult;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static native closeSocketNative(Ljava/lang/String;I)Lcom/termux/shared/jni/models/JniResult;
.end method

.method public static createServerSocket(Ljava/lang/String;[BI)Lcom/termux/shared/jni/models/JniResult;
    .locals 3
    .param p0, "serverTitle"    # Ljava/lang/String;
    .param p1, "path"    # [B
    .param p2, "backlog"    # I

    .line 127
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->createServerSocketNative(Ljava/lang/String;[BI)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Exception in createServerSocketNative()"

    .line 130
    .local v1, "message":Ljava/lang/String;
    const-string v2, "LocalSocketManager"

    invoke-static {v2, v1, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    new-instance v2, Lcom/termux/shared/jni/models/JniResult;

    invoke-direct {v2, v1, v0}, Lcom/termux/shared/jni/models/JniResult;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static native createServerSocketNative(Ljava/lang/String;[BI)Lcom/termux/shared/jni/models/JniResult;
.end method

.method public static getErrorLogString(Lcom/termux/shared/errors/Error;Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;Lcom/termux/shared/net/socket/local/LocalClientSocket;)Ljava/lang/String;
    .locals 3
    .param p0, "error"    # Lcom/termux/shared/errors/Error;
    .param p1, "localSocketRunConfig"    # Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;
    .param p2, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v0, "logString":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Socket Server Error:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getErrorLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v1, "\n\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    if-eqz p2, :cond_0

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {p2}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->getLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getErrorMarkdownString(Lcom/termux/shared/errors/Error;Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;Lcom/termux/shared/net/socket/local/LocalClientSocket;)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # Lcom/termux/shared/errors/Error;
    .param p1, "localSocketRunConfig"    # Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;
    .param p2, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getErrorMarkdownString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v1, "\n##\n\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getMarkdownString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    if-eqz p2, :cond_0

    .line 421
    const-string v1, "\n\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p2}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->getMarkdownString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPeerCred(Ljava/lang/String;ILcom/termux/shared/net/socket/local/PeerCred;)Lcom/termux/shared/jni/models/JniResult;
    .locals 3
    .param p0, "serverTitle"    # Ljava/lang/String;
    .param p1, "fd"    # I
    .param p2, "peerCred"    # Lcom/termux/shared/net/socket/local/PeerCred;

    .line 297
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getPeerCredNative(Ljava/lang/String;ILcom/termux/shared/net/socket/local/PeerCred;)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 298
    :catchall_0
    move-exception v0

    .line 299
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Exception in getPeerCredNative()"

    .line 300
    .local v1, "message":Ljava/lang/String;
    const-string v2, "LocalSocketManager"

    invoke-static {v2, v1, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    new-instance v2, Lcom/termux/shared/jni/models/JniResult;

    invoke-direct {v2, v1, v0}, Lcom/termux/shared/jni/models/JniResult;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static native getPeerCredNative(Ljava/lang/String;ILcom/termux/shared/net/socket/local/PeerCred;)Lcom/termux/shared/jni/models/JniResult;
.end method

.method public static read(Ljava/lang/String;I[BJ)Lcom/termux/shared/jni/models/JniResult;
    .locals 3
    .param p0, "serverTitle"    # Ljava/lang/String;
    .param p1, "fd"    # I
    .param p2, "data"    # [B
    .param p3, "deadline"    # J

    .line 194
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->readNative(Ljava/lang/String;I[BJ)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 195
    :catchall_0
    move-exception v0

    .line 196
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Exception in readNative()"

    .line 197
    .local v1, "message":Ljava/lang/String;
    const-string v2, "LocalSocketManager"

    invoke-static {v2, v1, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    new-instance v2, Lcom/termux/shared/jni/models/JniResult;

    invoke-direct {v2, v1, v0}, Lcom/termux/shared/jni/models/JniResult;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static native readNative(Ljava/lang/String;I[BJ)Lcom/termux/shared/jni/models/JniResult;
.end method

.method public static send(Ljava/lang/String;I[BJ)Lcom/termux/shared/jni/models/JniResult;
    .locals 3
    .param p0, "serverTitle"    # Ljava/lang/String;
    .param p1, "fd"    # I
    .param p2, "data"    # [B
    .param p3, "deadline"    # J

    .line 218
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->sendNative(Ljava/lang/String;I[BJ)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 219
    :catchall_0
    move-exception v0

    .line 220
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Exception in sendNative()"

    .line 221
    .local v1, "message":Ljava/lang/String;
    const-string v2, "LocalSocketManager"

    invoke-static {v2, v1, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    new-instance v2, Lcom/termux/shared/jni/models/JniResult;

    invoke-direct {v2, v1, v0}, Lcom/termux/shared/jni/models/JniResult;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static native sendNative(Ljava/lang/String;I[BJ)Lcom/termux/shared/jni/models/JniResult;
.end method

.method public static setSocketReadTimeout(Ljava/lang/String;II)Lcom/termux/shared/jni/models/JniResult;
    .locals 3
    .param p0, "serverTitle"    # Ljava/lang/String;
    .param p1, "fd"    # I
    .param p2, "timeout"    # I

    .line 257
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->setSocketReadTimeoutNative(Ljava/lang/String;II)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 258
    :catchall_0
    move-exception v0

    .line 259
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Exception in setSocketReadTimeoutNative()"

    .line 260
    .local v1, "message":Ljava/lang/String;
    const-string v2, "LocalSocketManager"

    invoke-static {v2, v1, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    new-instance v2, Lcom/termux/shared/jni/models/JniResult;

    invoke-direct {v2, v1, v0}, Lcom/termux/shared/jni/models/JniResult;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static native setSocketReadTimeoutNative(Ljava/lang/String;II)Lcom/termux/shared/jni/models/JniResult;
.end method

.method public static setSocketSendTimeout(Ljava/lang/String;II)Lcom/termux/shared/jni/models/JniResult;
    .locals 3
    .param p0, "serverTitle"    # Ljava/lang/String;
    .param p1, "fd"    # I
    .param p2, "timeout"    # I

    .line 277
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->setSocketSendTimeoutNative(Ljava/lang/String;II)Lcom/termux/shared/jni/models/JniResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 278
    :catchall_0
    move-exception v0

    .line 279
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Exception in setSocketSendTimeoutNative()"

    .line 280
    .local v1, "message":Ljava/lang/String;
    const-string v2, "LocalSocketManager"

    invoke-static {v2, v1, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    new-instance v2, Lcom/termux/shared/jni/models/JniResult;

    invoke-direct {v2, v1, v0}, Lcom/termux/shared/jni/models/JniResult;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static native setSocketSendTimeoutNative(Ljava/lang/String;II)Lcom/termux/shared/jni/models/JniResult;
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLocalSocketManagerClient()Lcom/termux/shared/net/socket/local/ILocalSocketManager;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mLocalSocketManagerClient:Lcom/termux/shared/net/socket/local/ILocalSocketManager;

    return-object v0
.end method

.method public getLocalSocketManagerClientThreadUEH()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mLocalSocketManagerClientThreadUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method protected getLocalSocketManagerClientThreadUEHOrDefault()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mLocalSocketManagerClient:Lcom/termux/shared/net/socket/local/ILocalSocketManager;

    .line 375
    invoke-interface {v0, p0}, Lcom/termux/shared/net/socket/local/ILocalSocketManager;->getLocalSocketManagerClientThreadUEH(Lcom/termux/shared/net/socket/local/LocalSocketManager;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 376
    .local v0, "uncaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-nez v0, :cond_0

    .line 377
    new-instance v1, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda2;-><init>(Lcom/termux/shared/net/socket/local/LocalSocketManager;)V

    move-object v0, v1

    .line 379
    :cond_0
    return-object v0
.end method

.method public getLocalSocketRunConfig()Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    return-object v0
.end method

.method public getServerSocket()Lcom/termux/shared/net/socket/local/LocalServerSocket;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mServerSocket:Lcom/termux/shared/net/socket/local/LocalServerSocket;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mIsRunning:Z

    return v0
.end method

.method synthetic lambda$getLocalSocketManagerClientThreadUEHOrDefault$3$com-termux-shared-net-socket-local-LocalSocketManager(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uncaught exception for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalSocketManager"

    invoke-static {v1, v0, p2}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$onClientAccepted$2$com-termux-shared-net-socket-local-LocalSocketManager(Lcom/termux/shared/net/socket/local/LocalClientSocket;)V
    .locals 1
    .param p1, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;

    .line 327
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mLocalSocketManagerClient:Lcom/termux/shared/net/socket/local/ILocalSocketManager;

    invoke-interface {v0, p0, p1}, Lcom/termux/shared/net/socket/local/ILocalSocketManager;->onClientAccepted(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;)V

    return-void
.end method

.method synthetic lambda$onDisallowedClientConnected$1$com-termux-shared-net-socket-local-LocalSocketManager(Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V
    .locals 1
    .param p1, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;
    .param p2, "error"    # Lcom/termux/shared/errors/Error;

    .line 321
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mLocalSocketManagerClient:Lcom/termux/shared/net/socket/local/ILocalSocketManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/termux/shared/net/socket/local/ILocalSocketManager;->onDisallowedClientConnected(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V

    return-void
.end method

.method synthetic lambda$onError$0$com-termux-shared-net-socket-local-LocalSocketManager(Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V
    .locals 1
    .param p1, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;
    .param p2, "error"    # Lcom/termux/shared/errors/Error;

    .line 315
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mLocalSocketManagerClient:Lcom/termux/shared/net/socket/local/ILocalSocketManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/termux/shared/net/socket/local/ILocalSocketManager;->onError(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V

    return-void
.end method

.method public onClientAccepted(Lcom/termux/shared/net/socket/local/LocalClientSocket;)V
    .locals 1
    .param p1, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;

    .line 326
    new-instance v0, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda1;-><init>(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;)V

    invoke-virtual {p0, v0}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->startLocalSocketManagerClientThread(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method

.method public onDisallowedClientConnected(Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V
    .locals 1
    .param p1, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;
    .param p2, "error"    # Lcom/termux/shared/errors/Error;

    .line 320
    new-instance v0, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda0;-><init>(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V

    invoke-virtual {p0, v0}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->startLocalSocketManagerClientThread(Ljava/lang/Runnable;)V

    .line 322
    return-void
.end method

.method public onError(Lcom/termux/shared/errors/Error;)V
    .locals 1
    .param p1, "error"    # Lcom/termux/shared/errors/Error;

    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->onError(Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V

    .line 310
    return-void
.end method

.method public onError(Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V
    .locals 1
    .param p1, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;
    .param p2, "error"    # Lcom/termux/shared/errors/Error;

    .line 314
    new-instance v0, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda3;-><init>(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V

    invoke-virtual {p0, v0}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->startLocalSocketManagerClientThread(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method public declared-synchronized start()Lcom/termux/shared/errors/Error;
    .locals 7

    monitor-enter p0

    .line 71
    :try_start_0
    const-string v0, "LocalSocketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-boolean v0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->localSocketLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 75
    :try_start_1
    const-string v0, "LocalSocketManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/termux/shared/net/socket/local/LocalSocketManager;->LOCAL_SOCKET_LIBRARY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" library"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->LOCAL_SOCKET_LIBRARY:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 77
    sput-boolean v1, Lcom/termux/shared/net/socket/local/LocalSocketManager;->localSocketLibraryLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v2, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_START_LOCAL_SOCKET_LIB_LOAD_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/termux/shared/net/socket/local/LocalSocketManager;->LOCAL_SOCKET_LIBRARY:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object v3, v4, v1

    invoke-virtual {v2, v0, v4}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v1

    .line 80
    .local v1, "error":Lcom/termux/shared/errors/Error;
    const-string v2, "LocalSocketManager"

    invoke-virtual {v1}, Lcom/termux/shared/errors/Error;->getErrorLogString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    monitor-exit p0

    return-object v1

    .line 85
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "error":Lcom/termux/shared/errors/Error;
    .end local p0    # "this":Lcom/termux/shared/net/socket/local/LocalSocketManager;
    :cond_0
    :goto_0
    :try_start_3
    iput-boolean v1, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mIsRunning:Z

    .line 86
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mServerSocket:Lcom/termux/shared/net/socket/local/LocalServerSocket;

    invoke-virtual {v0}, Lcom/termux/shared/net/socket/local/LocalServerSocket;->start()Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    .line 70
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public startLocalSocketManagerClientThread(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 332
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 333
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getLocalSocketManagerClientThreadUEH()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 335
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    goto :goto_0

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LocalSocketManager"

    const-string v3, "LocalSocketManagerClientThread start failed"

    invoke-static {v2, v3, v1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public declared-synchronized stop()Lcom/termux/shared/errors/Error;
    .locals 3

    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "LocalSocketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mLocalSocketRunConfig:Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mIsRunning:Z

    .line 96
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager;->mServerSocket:Lcom/termux/shared/net/socket/local/LocalServerSocket;

    invoke-virtual {v0}, Lcom/termux/shared/net/socket/local/LocalServerSocket;->stop()Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 98
    .end local p0    # "this":Lcom/termux/shared/net/socket/local/LocalSocketManager;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

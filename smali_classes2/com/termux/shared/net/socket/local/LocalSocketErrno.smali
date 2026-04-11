.class public Lcom/termux/shared/net/socket/local/LocalSocketErrno;
.super Lcom/termux/shared/errors/Errno;
.source "LocalSocketErrno.java"


# static fields
.field public static final ERRNO_ACCEPT_CLIENT_SOCKET_FAILED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_CHECK_AVAILABLE_DATA_ON_CLIENT_SOCKET_FAILED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_CLIENT_SOCKET_FD_INVALID:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_CLIENT_SOCKET_LISTENER_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_CLIENT_SOCKET_PEER_UID_DISALLOWED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_CLIENT_SOCKET_PEER_UID_INVALID:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_CLOSE_CLIENT_SOCKET_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_CLOSE_SERVER_SOCKET_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_CREATE_SERVER_SOCKET_FAILED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_GET_CLIENT_SOCKET_PEER_UID_FAILED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_READ_DATA_FROM_CLIENT_SOCKET_FAILED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_READ_DATA_FROM_INPUT_STREAM_OF_CLIENT_SOCKET_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_SEND_DATA_TO_CLIENT_SOCKET_FAILED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_SEND_DATA_TO_OUTPUT_STREAM_OF_CLIENT_SOCKET_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_SERVER_SOCKET_BACKLOG_INVALID:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_SERVER_SOCKET_FD_INVALID:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_SERVER_SOCKET_PATH_NOT_ABSOLUTE:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_SERVER_SOCKET_PATH_NULL_OR_EMPTY:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_SERVER_SOCKET_PATH_TOO_LONG:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_SET_CLIENT_SOCKET_READ_TIMEOUT_FAILED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_SET_CLIENT_SOCKET_SEND_TIMEOUT_FAILED:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_START_LOCAL_SOCKET_LIB_LOAD_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_USING_CLIENT_SOCKET_WITH_INVALID_FD:Lcom/termux/shared/errors/Errno;

.field public static final TYPE:Ljava/lang/String; = "LocalSocket Error"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x64

    const-string v2, "Failed to load \"%1$s\" library.\nException: %2$s"

    const-string v3, "LocalSocket Error"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_START_LOCAL_SOCKET_LIB_LOAD_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 14
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x96

    const-string v2, "The \"%1$s\" server socket path is null or empty."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SERVER_SOCKET_PATH_NULL_OR_EMPTY:Lcom/termux/shared/errors/Errno;

    .line 15
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x97

    const-string v2, "The \"%1$s\" server socket path \"%2$s\" is greater than 108 bytes."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SERVER_SOCKET_PATH_TOO_LONG:Lcom/termux/shared/errors/Errno;

    .line 16
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x98

    const-string v2, "The \"%1$s\" server socket path \"%2$s\" is not an absolute file path."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SERVER_SOCKET_PATH_NOT_ABSOLUTE:Lcom/termux/shared/errors/Errno;

    .line 17
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x99

    const-string v2, "The \"%1$s\" server socket backlog \"%2$s\" is not greater than 0."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SERVER_SOCKET_BACKLOG_INVALID:Lcom/termux/shared/errors/Errno;

    .line 18
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x9a

    const-string v2, "Create \"%1$s\" server socket failed.\n%2$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CREATE_SERVER_SOCKET_FAILED:Lcom/termux/shared/errors/Errno;

    .line 19
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x9b

    const-string v2, "Invalid file descriptor \"%1$s\" returned when creating \"%2$s\" server socket."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SERVER_SOCKET_FD_INVALID:Lcom/termux/shared/errors/Errno;

    .line 20
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x9c

    const-string v2, "Accepting client socket for \"%1$s\" server failed.\n%2$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_ACCEPT_CLIENT_SOCKET_FAILED:Lcom/termux/shared/errors/Errno;

    .line 21
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x9d

    const-string v2, "Invalid file descriptor \"%1$s\" returned when accept new client for \"%2$s\" server."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CLIENT_SOCKET_FD_INVALID:Lcom/termux/shared/errors/Errno;

    .line 22
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const-string v1, "Getting peer uid for client socket for \"%1$s\" server failed.\n%2$s"

    const/16 v2, 0x9e

    invoke-direct {v0, v3, v2, v1}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_GET_CLIENT_SOCKET_PEER_UID_FAILED:Lcom/termux/shared/errors/Errno;

    .line 23
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const-string v1, "Invalid peer uid \"%1$s\" returned for new client for \"%2$s\" server."

    invoke-direct {v0, v3, v2, v1}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CLIENT_SOCKET_PEER_UID_INVALID:Lcom/termux/shared/errors/Errno;

    .line 24
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xa0

    const-string v2, "Disallowed peer %1$s tried to connect with \"%2$s\" server."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CLIENT_SOCKET_PEER_UID_DISALLOWED:Lcom/termux/shared/errors/Errno;

    .line 25
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xa1

    const-string v2, "Close \"%1$s\" server socket failed.\nException: %2$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CLOSE_SERVER_SOCKET_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 26
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xa2

    const-string v2, "Exception in client socket listener for \"%1$s\" server.\nException: %2$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CLIENT_SOCKET_LISTENER_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 29
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xc8

    const-string v2, "Set \"%1$s\" client socket read (SO_RCVTIMEO) timeout to \"%2$s\" failed.\n%3$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SET_CLIENT_SOCKET_READ_TIMEOUT_FAILED:Lcom/termux/shared/errors/Errno;

    .line 30
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xc9

    const-string v2, "Set \"%1$s\" client socket send (SO_SNDTIMEO) timeout \"%2$s\" failed.\n%3$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SET_CLIENT_SOCKET_SEND_TIMEOUT_FAILED:Lcom/termux/shared/errors/Errno;

    .line 31
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xca

    const-string v2, "Read data from \"%1$s\" client socket failed.\n%2$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_READ_DATA_FROM_CLIENT_SOCKET_FAILED:Lcom/termux/shared/errors/Errno;

    .line 32
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xcb

    const-string v2, "Read data from \"%1$s\" client socket input stream failed.\n%2$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_READ_DATA_FROM_INPUT_STREAM_OF_CLIENT_SOCKET_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 33
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xcc

    const-string v2, "Send data to \"%1$s\" client socket failed.\n%2$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SEND_DATA_TO_CLIENT_SOCKET_FAILED:Lcom/termux/shared/errors/Errno;

    .line 34
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xcd

    const-string v2, "Send data to \"%1$s\" client socket output stream failed.\n%2$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_SEND_DATA_TO_OUTPUT_STREAM_OF_CLIENT_SOCKET_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 35
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xce

    const-string v2, "Check available data on \"%1$s\" client socket failed.\n%2$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CHECK_AVAILABLE_DATA_ON_CLIENT_SOCKET_FAILED:Lcom/termux/shared/errors/Errno;

    .line 36
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xcf

    const-string v2, "Close \"%1$s\" client socket failed.\n%2$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_CLOSE_CLIENT_SOCKET_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 37
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0xd0

    const-string v2, "Trying to use client socket with invalid file descriptor \"%1$s\" for \"%2$s\" server."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/net/socket/local/LocalSocketErrno;->ERRNO_USING_CLIENT_SOCKET_WITH_INVALID_FD:Lcom/termux/shared/errors/Errno;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    return-void
.end method

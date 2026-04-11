.class public Lcom/termux/shared/shell/am/AmSocketServerErrno;
.super Lcom/termux/shared/errors/Errno;
.source "AmSocketServerErrno.java"


# static fields
.field public static final ERRNO_PARSE_AM_COMMAND_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_RUN_AM_COMMAND_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final TYPE:Ljava/lang/String; = "AmSocketServer Error"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x64

    const-string v2, "Parse am command `%1$s` failed.\nException: %2$s"

    const-string v3, "AmSocketServer Error"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/shell/am/AmSocketServerErrno;->ERRNO_PARSE_AM_COMMAND_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 12
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x65

    const-string v2, "Run am command `%1$s` failed.\nException: %2$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/shell/am/AmSocketServerErrno;->ERRNO_RUN_AM_COMMAND_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    return-void
.end method

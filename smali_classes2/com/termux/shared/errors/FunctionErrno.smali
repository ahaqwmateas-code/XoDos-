.class public Lcom/termux/shared/errors/FunctionErrno;
.super Lcom/termux/shared/errors/Errno;
.source "FunctionErrno.java"


# static fields
.field public static final ERRNO_INVALID_PARAMETER:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_NULL_OR_EMPTY_PARAMETERS:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_PARAMETER_NOT_INSTANCE_OF:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_UNSET_PARAMETER:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_UNSET_PARAMETERS:Lcom/termux/shared/errors/Errno;

.field public static final TYPE:Ljava/lang/String; = "Function Error"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x64

    const-string v2, "The %1$s parameter passed to \"%2$s\" is null or empty."

    const-string v3, "Function Error"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    .line 11
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x65

    const-string v2, "The %1$s parameters passed to \"%2$s\" are null or empty."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETERS:Lcom/termux/shared/errors/Errno;

    .line 12
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x66

    const-string v2, "The %1$s parameter passed to \"%2$s\" must be set."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_UNSET_PARAMETER:Lcom/termux/shared/errors/Errno;

    .line 13
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x67

    const-string v2, "The %1$s parameters passed to \"%2$s\" must be set."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_UNSET_PARAMETERS:Lcom/termux/shared/errors/Errno;

    .line 14
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const-string v1, "The %1$s parameter passed to \"%2$s\" is invalid.\"%3$s\""

    const/16 v2, 0x68

    invoke-direct {v0, v3, v2, v1}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_INVALID_PARAMETER:Lcom/termux/shared/errors/Errno;

    .line 15
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const-string v1, "The %1$s parameter passed to \"%2$s\" is not an instance of %3$s."

    invoke-direct {v0, v3, v2, v1}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_PARAMETER_NOT_INSTANCE_OF:Lcom/termux/shared/errors/Errno;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    return-void
.end method

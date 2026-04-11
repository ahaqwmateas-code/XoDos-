.class public Lcom/termux/shared/shell/command/result/ResultSenderErrno;
.super Lcom/termux/shared/errors/Errno;
.source "ResultSenderErrno.java"


# static fields
.field public static final ERROR_FORMAT_RESULT_ERROR_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERROR_FORMAT_RESULT_OUTPUT_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERROR_RESULT_FILES_SUFFIX_INVALID:Lcom/termux/shared/errors/Errno;

.field public static final ERROR_RESULT_FILE_BASENAME_NULL_OR_INVALID:Lcom/termux/shared/errors/Errno;

.field public static final TYPE:Ljava/lang/String; = "ResultSender Error"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x64

    const-string v2, "The result file basename \"%1$s\" is null, empty or contains forward slashes \"/\"."

    const-string v3, "ResultSender Error"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/shell/command/result/ResultSenderErrno;->ERROR_RESULT_FILE_BASENAME_NULL_OR_INVALID:Lcom/termux/shared/errors/Errno;

    .line 13
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x65

    const-string v2, "The result files suffix \"%1$s\" contains forward slashes \"/\"."

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/shell/command/result/ResultSenderErrno;->ERROR_RESULT_FILES_SUFFIX_INVALID:Lcom/termux/shared/errors/Errno;

    .line 14
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x66

    const-string v2, "Formatting result error failed.\nException: %1$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/shell/command/result/ResultSenderErrno;->ERROR_FORMAT_RESULT_ERROR_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 15
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x67

    const-string v2, "Formatting result output failed.\nException: %1$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/shell/command/result/ResultSenderErrno;->ERROR_FORMAT_RESULT_OUTPUT_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

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

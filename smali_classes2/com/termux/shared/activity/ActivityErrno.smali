.class public Lcom/termux/shared/activity/ActivityErrno;
.super Lcom/termux/shared/errors/Errno;
.source "ActivityErrno.java"


# static fields
.field public static final ERRNO_STARTING_ACTIVITY_WITH_NULL_CONTEXT:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_START_ACTIVITY_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final ERRNO_START_ACTIVITY_FOR_RESULT_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

.field public static final TYPE:Ljava/lang/String; = "Activity Error"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x64

    const-string v2, "Failed to start \"%1$s\" activity.\nException: %2$s"

    const-string v3, "Activity Error"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/activity/ActivityErrno;->ERRNO_START_ACTIVITY_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 12
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x65

    const-string v2, "Failed to start \"%1$s\" activity for result.\nException: %2$s"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/activity/ActivityErrno;->ERRNO_START_ACTIVITY_FOR_RESULT_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    .line 13
    new-instance v0, Lcom/termux/shared/errors/Errno;

    const/16 v1, 0x66

    const-string v2, "Cannot start \"%1$s\" activity with null Context"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/activity/ActivityErrno;->ERRNO_STARTING_ACTIVITY_WITH_NULL_CONTEXT:Lcom/termux/shared/errors/Errno;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/shared/errors/Errno;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    return-void
.end method

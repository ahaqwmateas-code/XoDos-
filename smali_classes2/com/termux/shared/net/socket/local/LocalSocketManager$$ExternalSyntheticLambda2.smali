.class public final synthetic Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/net/socket/local/LocalSocketManager;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/net/socket/local/LocalSocketManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda2;->f$0:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda2;->f$0:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    invoke-virtual {v0, p1, p2}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->lambda$getLocalSocketManagerClientThreadUEHOrDefault$3$com-termux-shared-net-socket-local-LocalSocketManager(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

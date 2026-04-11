.class public final synthetic Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/net/socket/local/LocalSocketManager;

.field public final synthetic f$1:Lcom/termux/shared/net/socket/local/LocalClientSocket;

.field public final synthetic f$2:Lcom/termux/shared/errors/Error;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda3;->f$0:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    iput-object p2, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda3;->f$1:Lcom/termux/shared/net/socket/local/LocalClientSocket;

    iput-object p3, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda3;->f$2:Lcom/termux/shared/errors/Error;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda3;->f$0:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda3;->f$1:Lcom/termux/shared/net/socket/local/LocalClientSocket;

    iget-object v2, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda3;->f$2:Lcom/termux/shared/errors/Error;

    invoke-virtual {v0, v1, v2}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->lambda$onError$0$com-termux-shared-net-socket-local-LocalSocketManager(Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V

    return-void
.end method

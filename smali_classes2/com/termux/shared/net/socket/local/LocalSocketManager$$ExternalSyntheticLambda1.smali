.class public final synthetic Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/net/socket/local/LocalSocketManager;

.field public final synthetic f$1:Lcom/termux/shared/net/socket/local/LocalClientSocket;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda1;->f$0:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    iput-object p2, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda1;->f$1:Lcom/termux/shared/net/socket/local/LocalClientSocket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda1;->f$0:Lcom/termux/shared/net/socket/local/LocalSocketManager;

    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalSocketManager$$ExternalSyntheticLambda1;->f$1:Lcom/termux/shared/net/socket/local/LocalClientSocket;

    invoke-virtual {v0, v1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->lambda$onClientAccepted$2$com-termux-shared-net-socket-local-LocalSocketManager(Lcom/termux/shared/net/socket/local/LocalClientSocket;)V

    return-void
.end method

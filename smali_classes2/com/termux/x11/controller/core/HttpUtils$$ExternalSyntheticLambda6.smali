.class public final synthetic Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/termux/x11/controller/core/Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/termux/x11/controller/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda6;->f$1:Lcom/termux/x11/controller/core/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/x11/controller/core/HttpUtils$$ExternalSyntheticLambda6;->f$1:Lcom/termux/x11/controller/core/Callback;

    invoke-static {v0, v1}, Lcom/termux/x11/controller/core/HttpUtils;->lambda$download$0(Ljava/lang/String;Lcom/termux/x11/controller/core/Callback;)V

    return-void
.end method

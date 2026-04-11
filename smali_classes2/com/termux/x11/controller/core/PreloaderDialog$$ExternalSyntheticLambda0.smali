.class public final synthetic Lcom/termux/x11/controller/core/PreloaderDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/core/PreloaderDialog;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/core/PreloaderDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/core/PreloaderDialog$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/controller/core/PreloaderDialog;

    iput p2, p0, Lcom/termux/x11/controller/core/PreloaderDialog$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/controller/core/PreloaderDialog;

    iget v1, p0, Lcom/termux/x11/controller/core/PreloaderDialog$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/core/PreloaderDialog;->lambda$showOnUiThread$0$com-termux-x11-controller-core-PreloaderDialog(I)V

    return-void
.end method

.class public final synthetic Lcom/termux/x11/controller/inputcontrols/RangeScroller$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/inputcontrols/RangeScroller;

.field public final synthetic f$1:Lcom/termux/x11/controller/inputcontrols/Binding;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/inputcontrols/RangeScroller;Lcom/termux/x11/controller/inputcontrols/Binding;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/inputcontrols/RangeScroller$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/controller/inputcontrols/RangeScroller;

    iput-object p2, p0, Lcom/termux/x11/controller/inputcontrols/RangeScroller$$ExternalSyntheticLambda0;->f$1:Lcom/termux/x11/controller/inputcontrols/Binding;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/RangeScroller$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/controller/inputcontrols/RangeScroller;

    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/RangeScroller$$ExternalSyntheticLambda0;->f$1:Lcom/termux/x11/controller/inputcontrols/Binding;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/RangeScroller;->lambda$handleTouchUp$0$com-termux-x11-controller-inputcontrols-RangeScroller(Lcom/termux/x11/controller/inputcontrols/Binding;)V

    return-void
.end method

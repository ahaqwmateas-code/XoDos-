.class public final synthetic Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/InputControlsFragment;

.field public final synthetic f$1:Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda15;->f$0:Lcom/termux/x11/controller/InputControlsFragment;

    iput-object p2, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda15;->f$1:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda15;->f$0:Lcom/termux/x11/controller/InputControlsFragment;

    iget-object v1, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda15;->f$1:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/InputControlsFragment;->lambda$onCreateView$7$com-termux-x11-controller-InputControlsFragment(Landroid/widget/Spinner;)V

    return-void
.end method

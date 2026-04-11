.class public final synthetic Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/InputControlsFragment;

.field public final synthetic f$1:Landroid/widget/SeekBar;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/widget/SeekBar;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda22;->f$0:Lcom/termux/x11/controller/InputControlsFragment;

    iput-object p2, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda22;->f$1:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda22;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda22;->f$0:Lcom/termux/x11/controller/InputControlsFragment;

    iget-object v1, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda22;->f$1:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda22;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/termux/x11/controller/InputControlsFragment;->lambda$onCreateView$0$com-termux-x11-controller-InputControlsFragment(Landroid/widget/SeekBar;Landroid/view/View;)V

    return-void
.end method

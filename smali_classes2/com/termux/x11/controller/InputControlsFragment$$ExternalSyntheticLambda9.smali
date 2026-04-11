.class public final synthetic Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/termux/x11/controller/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/InputControlsFragment;

.field public final synthetic f$1:Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda9;->f$0:Lcom/termux/x11/controller/InputControlsFragment;

    iput-object p2, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda9;->f$1:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda9;->f$0:Lcom/termux/x11/controller/InputControlsFragment;

    iget-object v1, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda9;->f$1:Landroid/widget/Spinner;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/termux/x11/controller/InputControlsFragment;->lambda$onCreateView$3$com-termux-x11-controller-InputControlsFragment(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.class public final synthetic Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/termux/x11/controller/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/InputControlsFragment;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Lcom/termux/x11/MainActivity;

.field public final synthetic f$4:Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/InputControlsFragment;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Lcom/termux/x11/MainActivity;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda18;->f$0:Lcom/termux/x11/controller/InputControlsFragment;

    iput-object p2, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda18;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda18;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda18;->f$3:Lcom/termux/x11/MainActivity;

    iput-object p5, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda18;->f$4:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda18;->f$0:Lcom/termux/x11/controller/InputControlsFragment;

    iget-object v1, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda18;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda18;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda18;->f$3:Lcom/termux/x11/MainActivity;

    iget-object v4, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda18;->f$4:Landroid/widget/Spinner;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/termux/x11/controller/InputControlsFragment;->lambda$downloadSelectedProfiles$15$com-termux-x11-controller-InputControlsFragment(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Lcom/termux/x11/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

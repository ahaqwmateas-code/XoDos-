.class public final synthetic Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/termux/x11/controller/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/InputControlsFragment;

.field public final synthetic f$1:Lcom/termux/x11/MainActivity;

.field public final synthetic f$2:Landroid/widget/Spinner;

.field public final synthetic f$3:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/InputControlsFragment;Lcom/termux/x11/MainActivity;Landroid/widget/Spinner;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda19;->f$0:Lcom/termux/x11/controller/InputControlsFragment;

    iput-object p2, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda19;->f$1:Lcom/termux/x11/MainActivity;

    iput-object p3, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda19;->f$2:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda19;->f$3:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda19;->f$0:Lcom/termux/x11/controller/InputControlsFragment;

    iget-object v1, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda19;->f$1:Lcom/termux/x11/MainActivity;

    iget-object v2, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda19;->f$2:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda19;->f$3:[Ljava/lang/String;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/termux/x11/controller/InputControlsFragment;->lambda$downloadProfileList$17$com-termux-x11-controller-InputControlsFragment(Lcom/termux/x11/MainActivity;Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

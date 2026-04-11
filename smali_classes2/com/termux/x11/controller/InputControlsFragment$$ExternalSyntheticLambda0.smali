.class public final synthetic Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/InputControlsFragment;

.field public final synthetic f$1:Lcom/termux/x11/MainActivity;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/InputControlsFragment;Lcom/termux/x11/MainActivity;Ljava/lang/String;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/controller/InputControlsFragment;

    iput-object p2, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda0;->f$1:Lcom/termux/x11/MainActivity;

    iput-object p3, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda0;->f$3:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/controller/InputControlsFragment;

    iget-object v1, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda0;->f$1:Lcom/termux/x11/MainActivity;

    iget-object v2, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda0;->f$3:Landroid/widget/Spinner;

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/InputControlsFragment;->lambda$downloadProfileList$18$com-termux-x11-controller-InputControlsFragment(Lcom/termux/x11/MainActivity;Ljava/lang/String;Landroid/widget/Spinner;)V

    return-void
.end method

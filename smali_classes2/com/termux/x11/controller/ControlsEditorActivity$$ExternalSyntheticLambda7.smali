.class public final synthetic Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/ControlsEditorActivity;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/LinearLayout;

.field public final synthetic f$3:Lcom/termux/x11/controller/inputcontrols/ControlElement;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/ControlsEditorActivity;Landroid/widget/EditText;Landroid/widget/LinearLayout;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda7;->f$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    iput-object p2, p0, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda7;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda7;->f$2:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda7;->f$3:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda7;->f$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda7;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda7;->f$2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda7;->f$3:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/ControlsEditorActivity;->lambda$showControlElementSettings$4$com-termux-x11-controller-ControlsEditorActivity(Landroid/widget/EditText;Landroid/widget/LinearLayout;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V

    return-void
.end method

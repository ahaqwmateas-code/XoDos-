.class public final synthetic Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/termux/x11/controller/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/ControlsEditorActivity;

.field public final synthetic f$1:Lcom/termux/x11/controller/inputcontrols/ControlElement;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/ControlsEditorActivity;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda5;->f$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    iput-object p2, p0, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda5;->f$1:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    return-void
.end method


# virtual methods
.method public final onValueChange(Lcom/termux/x11/controller/widget/NumberPicker;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda5;->f$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda5;->f$1:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-virtual {v0, v1, p1, p2}, Lcom/termux/x11/controller/ControlsEditorActivity;->lambda$showControlElementSettings$2$com-termux-x11-controller-ControlsEditorActivity(Lcom/termux/x11/controller/inputcontrols/ControlElement;Lcom/termux/x11/controller/widget/NumberPicker;I)V

    return-void
.end method

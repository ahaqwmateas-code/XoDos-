.class Lcom/termux/x11/controller/ControlsEditorActivity$3;
.super Ljava/lang/Object;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/controller/ControlsEditorActivity;->loadTypeSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/Spinner;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;


# direct methods
.method constructor <init>(Lcom/termux/x11/controller/ControlsEditorActivity;Lcom/termux/x11/controller/inputcontrols/ControlElement;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/controller/ControlsEditorActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$3;->this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    iput-object p2, p0, Lcom/termux/x11/controller/ControlsEditorActivity$3;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    iput-object p3, p0, Lcom/termux/x11/controller/ControlsEditorActivity$3;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 242
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$3;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->values()[Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setType(Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;)V

    .line 243
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$3;->this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    invoke-static {v0}, Lcom/termux/x11/controller/ControlsEditorActivity;->access$000(Lcom/termux/x11/controller/ControlsEditorActivity;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 244
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$3;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 245
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$3;->this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    invoke-static {v0}, Lcom/termux/x11/controller/ControlsEditorActivity;->access$100(Lcom/termux/x11/controller/ControlsEditorActivity;)Lcom/termux/x11/controller/widget/InputControlsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    .line 246
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 250
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

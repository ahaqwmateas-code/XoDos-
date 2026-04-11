.class Lcom/termux/x11/controller/ControlsEditorActivity$9;
.super Ljava/lang/Object;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/controller/ControlsEditorActivity;->loadRangeSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

.field final synthetic val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;


# direct methods
.method constructor <init>(Lcom/termux/x11/controller/ControlsEditorActivity;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/controller/ControlsEditorActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 494
    iput-object p1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$9;->this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    iput-object p2, p0, Lcom/termux/x11/controller/ControlsEditorActivity$9;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

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

    .line 497
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$9;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;->values()[Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setRange(Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;)V

    .line 498
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$9;->this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    invoke-static {v0}, Lcom/termux/x11/controller/ControlsEditorActivity;->access$000(Lcom/termux/x11/controller/ControlsEditorActivity;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 499
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$9;->this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    invoke-static {v0}, Lcom/termux/x11/controller/ControlsEditorActivity;->access$100(Lcom/termux/x11/controller/ControlsEditorActivity;)Lcom/termux/x11/controller/widget/InputControlsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    .line 500
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

    .line 504
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.class Lcom/termux/x11/controller/ControlsEditorActivity$8;
.super Ljava/lang/Object;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/controller/ControlsEditorActivity;->loadCombineBindingSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/LinearLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

.field final synthetic val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

.field final synthetic val$index:I

.field final synthetic val$sBindingType:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/termux/x11/controller/ControlsEditorActivity;Landroid/widget/Spinner;Lcom/termux/x11/controller/inputcontrols/ControlElement;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/controller/ControlsEditorActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 438
    iput-object p1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$8;->this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    iput-object p2, p0, Lcom/termux/x11/controller/ControlsEditorActivity$8;->val$sBindingType:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/termux/x11/controller/ControlsEditorActivity$8;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    iput p4, p0, Lcom/termux/x11/controller/ControlsEditorActivity$8;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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

    .line 441
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    .line 442
    .local v0, "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$8;->val$sBindingType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 450
    :pswitch_0
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/Binding;->gamepadBindingValues()[Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    goto :goto_0

    .line 447
    :pswitch_1
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/Binding;->mouseBindingValues()[Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    .line 448
    goto :goto_0

    .line 444
    :pswitch_2
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/Binding;->keyboardBindingValues()[Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    .line 445
    nop

    .line 454
    :goto_0
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$8;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    iget v2, p0, Lcom/termux/x11/controller/ControlsEditorActivity$8;->val$index:I

    invoke-virtual {v1, v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$8;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    iget v2, p0, Lcom/termux/x11/controller/ControlsEditorActivity$8;->val$index:I

    invoke-virtual {v1, v2, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setBindingAt(ILcom/termux/x11/controller/inputcontrols/Binding;)V

    .line 456
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$8;->this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    invoke-static {v1}, Lcom/termux/x11/controller/ControlsEditorActivity;->access$000(Lcom/termux/x11/controller/ControlsEditorActivity;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 457
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$8;->this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    invoke-static {v1}, Lcom/termux/x11/controller/ControlsEditorActivity;->access$100(Lcom/termux/x11/controller/ControlsEditorActivity;)Lcom/termux/x11/controller/widget/InputControlsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    .line 459
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 463
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

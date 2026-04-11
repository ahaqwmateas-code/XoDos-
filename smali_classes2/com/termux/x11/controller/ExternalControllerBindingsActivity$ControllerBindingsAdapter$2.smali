.class Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;
.super Ljava/lang/Object;
.source "ExternalControllerBindingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->loadBindingSpinner(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

.field final synthetic val$holder:Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

.field final synthetic val$item:Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;


# direct methods
.method constructor <init>(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)V
    .locals 0
    .param p1, "this$1"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->this$1:Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    iput-object p2, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$holder:Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    iput-object p3, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$item:Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

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

    .line 237
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    .line 238
    .local v0, "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    iget-object v1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$holder:Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    invoke-static {v1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$500(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 246
    :pswitch_0
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/Binding;->gamepadBindingValues()[Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    goto :goto_0

    .line 243
    :pswitch_1
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/Binding;->mouseBindingValues()[Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    .line 244
    goto :goto_0

    .line 240
    :pswitch_2
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/Binding;->keyboardBindingValues()[Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v1

    aget-object v0, v1, p3

    .line 241
    nop

    .line 250
    :goto_0
    iget-object v1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$item:Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->val$item:Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    invoke-virtual {v1, v0}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->setBinding(Lcom/termux/x11/controller/inputcontrols/Binding;)V

    .line 252
    iget-object v1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;->this$1:Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    iget-object v1, v1, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/termux/x11/controller/ExternalControllerBindingsActivity;

    invoke-static {v1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->access$600(Lcom/termux/x11/controller/ExternalControllerBindingsActivity;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 254
    :cond_0
    return-void

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

    .line 257
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

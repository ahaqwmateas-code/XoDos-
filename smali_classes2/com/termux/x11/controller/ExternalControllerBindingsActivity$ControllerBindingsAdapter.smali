.class Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ExternalControllerBindingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/controller/ExternalControllerBindingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerBindingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/controller/ExternalControllerBindingsActivity;


# direct methods
.method private constructor <init>(Lcom/termux/x11/controller/ExternalControllerBindingsActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/termux/x11/controller/ExternalControllerBindingsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/termux/x11/controller/ExternalControllerBindingsActivity;Lcom/termux/x11/controller/ExternalControllerBindingsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity;
    .param p2, "x1"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity$1;

    .line 153
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;-><init>(Lcom/termux/x11/controller/ExternalControllerBindingsActivity;)V

    return-void
.end method

.method static synthetic lambda$loadBindingSpinner$1(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Landroid/content/Context;Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)V
    .locals 4
    .param p0, "holder"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    .param p1, "$this"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "bindingEntries":[Ljava/lang/String;
    invoke-static {p0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$500(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 205
    :pswitch_0
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/Binding;->gamepadBindingLabels()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/Binding;->mouseBindingLabels()[Ljava/lang/String;

    move-result-object v0

    .line 203
    goto :goto_0

    .line 199
    :pswitch_2
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/Binding;->keyboardBindingLabels()[Ljava/lang/String;

    move-result-object v0

    .line 200
    nop

    .line 209
    :goto_0
    invoke-static {p0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$700(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-direct {v2, p1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 210
    invoke-static {p0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$700(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {p2}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/x11/controller/inputcontrols/Binding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/x11/controller/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 211
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadBindingSpinner(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)V
    .locals 6
    .param p1, "holder"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    .param p2, "item"    # Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    .line 193
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/termux/x11/controller/ExternalControllerBindingsActivity;

    .line 195
    .local v0, "$this":Landroid/content/Context;
    new-instance v1, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0, p2}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Landroid/content/Context;Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)V

    .line 213
    .local v1, "update":Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$500(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v2

    new-instance v3, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$1;-><init>(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 223
    invoke-virtual {p2}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v2

    .line 224
    .local v2, "selectedBinding":Lcom/termux/x11/controller/inputcontrols/Binding;
    invoke-virtual {v2}, Lcom/termux/x11/controller/inputcontrols/Binding;->isKeyboard()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 225
    invoke-static {p1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$500(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v2}, Lcom/termux/x11/controller/inputcontrols/Binding;->isMouse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    invoke-static {p1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$500(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {v2}, Lcom/termux/x11/controller/inputcontrols/Binding;->isGamepad()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    invoke-static {p1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$500(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 234
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$700(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;

    move-result-object v3

    new-instance v4, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$2;-><init>(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 260
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 261
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/termux/x11/controller/ExternalControllerBindingsActivity;

    invoke-static {v0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->access$200(Lcom/termux/x11/controller/ExternalControllerBindingsActivity;)Lcom/termux/x11/controller/inputcontrols/ExternalController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getControllerBindingCount()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-termux-x11-controller-ExternalControllerBindingsActivity$ControllerBindingsAdapter(Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;Landroid/view/View;)V
    .locals 1
    .param p1, "item"    # Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    .param p2, "view"    # Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/termux/x11/controller/ExternalControllerBindingsActivity;

    invoke-static {v0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->access$200(Lcom/termux/x11/controller/ExternalControllerBindingsActivity;)Lcom/termux/x11/controller/inputcontrols/ExternalController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->removeControllerBinding(Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)V

    .line 181
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/termux/x11/controller/ExternalControllerBindingsActivity;

    invoke-static {v0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->access$600(Lcom/termux/x11/controller/ExternalControllerBindingsActivity;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 182
    invoke-virtual {p0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->notifyDataSetChanged()V

    .line 183
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/termux/x11/controller/ExternalControllerBindingsActivity;

    invoke-static {v0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->access$800(Lcom/termux/x11/controller/ExternalControllerBindingsActivity;)V

    .line 184
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 153
    check-cast p1, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->onBindViewHolder(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 176
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->this$0:Lcom/termux/x11/controller/ExternalControllerBindingsActivity;

    invoke-static {v0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->access$200(Lcom/termux/x11/controller/ExternalControllerBindingsActivity;)Lcom/termux/x11/controller/inputcontrols/ExternalController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getControllerBindingAt(I)Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    move-result-object v0

    .line 177
    .local v0, "item":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    invoke-static {p1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$300(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-direct {p0, p1, v0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->loadBindingSpinner(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)V

    .line 179
    invoke-static {p1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->access$400(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 171
    new-instance v0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/termux/x11/R$layout;->external_controller_binding_list_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;-><init>(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Landroid/view/View;Lcom/termux/x11/controller/ExternalControllerBindingsActivity$1;)V

    return-object v0
.end method

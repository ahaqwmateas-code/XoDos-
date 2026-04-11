.class Lcom/termux/x11/controller/ControlsEditorActivity$2;
.super Ljava/lang/Object;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/controller/ControlsEditorActivity;->loadCustomIconType(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

.field final synthetic val$colorPicker:Lcom/termux/x11/controller/widget/ColorPickerView;

.field final synthetic val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

.field final synthetic val$iconPicker:Lcom/termux/x11/controller/widget/ImagePickerView;


# direct methods
.method constructor <init>(Lcom/termux/x11/controller/ControlsEditorActivity;Lcom/termux/x11/controller/widget/ColorPickerView;Lcom/termux/x11/controller/widget/ImagePickerView;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/controller/ControlsEditorActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    iput-object p2, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$colorPicker:Lcom/termux/x11/controller/widget/ColorPickerView;

    iput-object p3, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$iconPicker:Lcom/termux/x11/controller/widget/ImagePickerView;

    iput-object p4, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

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

    .line 211
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$colorPicker:Lcom/termux/x11/controller/widget/ColorPickerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/ColorPickerView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$iconPicker:Lcom/termux/x11/controller/widget/ImagePickerView;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/ImagePickerView;->setVisibility(I)V

    .line 213
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 214
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getCustomIconId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getCustomIconId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$iconPicker:Lcom/termux/x11/controller/widget/ImagePickerView;

    iget-object v2, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-virtual {v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getCustomIconId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/termux/x11/controller/widget/ImagePickerView;->setImageId(Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$iconPicker:Lcom/termux/x11/controller/widget/ImagePickerView;

    invoke-virtual {v1, v0}, Lcom/termux/x11/controller/widget/ImagePickerView;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getCustomIconId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBackgroundColor()I

    move-result v1

    if-ltz v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$colorPicker:Lcom/termux/x11/controller/widget/ColorPickerView;

    iget-object v2, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-virtual {v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/termux/x11/controller/widget/ColorPickerView;->setColor(I)V

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$colorPicker:Lcom/termux/x11/controller/widget/ColorPickerView;

    invoke-virtual {v1, v0}, Lcom/termux/x11/controller/widget/ColorPickerView;->setVisibility(I)V

    .line 224
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 228
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getCustomIconId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBackgroundColor()I

    move-result v0

    if-ltz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$colorPicker:Lcom/termux/x11/controller/widget/ColorPickerView;

    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/ColorPickerView;->setColor(I)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$2;->val$colorPicker:Lcom/termux/x11/controller/widget/ColorPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/ColorPickerView;->setVisibility(I)V

    .line 232
    return-void
.end method

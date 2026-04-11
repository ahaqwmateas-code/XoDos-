.class Lcom/termux/x11/controller/ControlsEditorActivity$1;
.super Ljava/lang/Object;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/controller/ControlsEditorActivity;->showControlElementSettings(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

.field final synthetic val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

.field final synthetic val$tvScale:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/termux/x11/controller/ControlsEditorActivity;Landroid/widget/TextView;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/controller/ControlsEditorActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/termux/x11/controller/ControlsEditorActivity$1;->this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    iput-object p2, p0, Lcom/termux/x11/controller/ControlsEditorActivity$1;->val$tvScale:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/termux/x11/controller/ControlsEditorActivity$1;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 150
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$1;->val$tvScale:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    if-eqz p3, :cond_0

    .line 152
    int-to-float v0, p2

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/termux/x11/controller/math/Mathf;->roundTo(FF)F

    move-result v0

    float-to-int p2, v0

    .line 153
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 154
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$1;->val$element:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    int-to-float v1, p2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setScale(F)V

    .line 155
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$1;->this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    invoke-static {v0}, Lcom/termux/x11/controller/ControlsEditorActivity;->access$000(Lcom/termux/x11/controller/ControlsEditorActivity;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 156
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity$1;->this$0:Lcom/termux/x11/controller/ControlsEditorActivity;

    invoke-static {v0}, Lcom/termux/x11/controller/ControlsEditorActivity;->access$100(Lcom/termux/x11/controller/ControlsEditorActivity;)Lcom/termux/x11/controller/widget/InputControlsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    .line 158
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 162
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 166
    return-void
.end method

.class Lcom/termux/x11/controller/InputControlsFragment$1;
.super Ljava/lang/Object;
.source "InputControlsFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/controller/InputControlsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/controller/InputControlsFragment;

.field final synthetic val$tvCursorSpeed:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/controller/InputControlsFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/termux/x11/controller/InputControlsFragment$1;->this$0:Lcom/termux/x11/controller/InputControlsFragment;

    iput-object p2, p0, Lcom/termux/x11/controller/InputControlsFragment$1;->val$tvCursorSpeed:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 110
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment$1;->val$tvCursorSpeed:Landroid/widget/TextView;

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

    .line 111
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment$1;->this$0:Lcom/termux/x11/controller/InputControlsFragment;

    invoke-static {v0}, Lcom/termux/x11/controller/InputControlsFragment;->access$000(Lcom/termux/x11/controller/InputControlsFragment;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment$1;->this$0:Lcom/termux/x11/controller/InputControlsFragment;

    invoke-static {v0}, Lcom/termux/x11/controller/InputControlsFragment;->access$000(Lcom/termux/x11/controller/InputControlsFragment;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    int-to-float v1, p2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->setCursorSpeed(F)V

    .line 113
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment$1;->this$0:Lcom/termux/x11/controller/InputControlsFragment;

    invoke-static {v0}, Lcom/termux/x11/controller/InputControlsFragment;->access$000(Lcom/termux/x11/controller/InputControlsFragment;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 115
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 118
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 121
    return-void
.end method

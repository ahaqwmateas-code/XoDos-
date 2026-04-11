.class Lcom/termux/x11/controller/widget/InputControlsView$1;
.super Ljava/util/TimerTask;
.source "InputControlsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/controller/widget/InputControlsView;->createMouseMoveTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/controller/widget/InputControlsView;

.field final synthetic val$cursorSpeed:F


# direct methods
.method constructor <init>(Lcom/termux/x11/controller/widget/InputControlsView;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/controller/widget/InputControlsView;

    .line 308
    iput-object p1, p0, Lcom/termux/x11/controller/widget/InputControlsView$1;->this$0:Lcom/termux/x11/controller/widget/InputControlsView;

    iput p2, p0, Lcom/termux/x11/controller/widget/InputControlsView$1;->val$cursorSpeed:F

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView$1;->this$0:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-static {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->access$100(Lcom/termux/x11/controller/widget/InputControlsView;)Lcom/termux/x11/LorieView;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView$1;->this$0:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-static {v1}, Lcom/termux/x11/controller/widget/InputControlsView;->access$000(Lcom/termux/x11/controller/widget/InputControlsView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v1, v1, v2

    iget v3, p0, Lcom/termux/x11/controller/widget/InputControlsView$1;->val$cursorSpeed:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lcom/termux/x11/controller/widget/InputControlsView$1;->this$0:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-static {v3}, Lcom/termux/x11/controller/widget/InputControlsView;->access$000(Lcom/termux/x11/controller/widget/InputControlsView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v3, v3, v2

    iget v2, p0, Lcom/termux/x11/controller/widget/InputControlsView$1;->val$cursorSpeed:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/termux/x11/LorieView;->injectPointerMoveDelta(II)V

    .line 312
    return-void
.end method

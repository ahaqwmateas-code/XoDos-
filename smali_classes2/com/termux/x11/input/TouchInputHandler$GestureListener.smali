.class Lcom/termux/x11/input/TouchInputHandler$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchInputHandler.java"

# interfaces
.implements Lcom/termux/x11/input/TapGestureDetector$OnTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/input/TouchInputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field private final mGestureListenerHandler:Landroid/os/Handler;

.field private mLastFocusX:F

.field private mLastFocusY:F

.field final synthetic this$0:Lcom/termux/x11/input/TouchInputHandler;


# direct methods
.method private constructor <init>(Lcom/termux/x11/input/TouchInputHandler;)V
    .locals 1

    .line 596
    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 598
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/termux/x11/input/TouchInputHandler$GestureListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/termux/x11/input/TouchInputHandler$GestureListener$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/input/TouchInputHandler$GestureListener;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->mGestureListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/termux/x11/input/TouchInputHandler;Lcom/termux/x11/input/TouchInputHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p2, "x1"    # Lcom/termux/x11/input/TouchInputHandler$1;

    .line 596
    invoke-direct {p0, p1}, Lcom/termux/x11/input/TouchInputHandler$GestureListener;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-void
.end method

.method private mouseButtonFromPointerCount(I)I
    .locals 1
    .param p1, "pointerCount"    # I

    .line 747
    packed-switch p1, :pswitch_data_0

    .line 755
    const/4 v0, 0x0

    return v0

    .line 753
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 751
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 749
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private screenPointLiesOutsideImageBoundary(FF)Z
    .locals 6
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F

    .line 761
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v0}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, p1

    .local v0, "scaledX":F
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, p2

    .line 763
    .local v1, "scaledY":F
    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v2}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v2

    iget v2, v2, Lcom/termux/x11/input/RenderData;->imageWidth:I

    int-to-float v2, v2

    const v3, 0x3a83126f    # 0.001f

    add-float/2addr v2, v3

    .line 764
    .local v2, "imageWidth":F
    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v4}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v4

    iget v4, v4, Lcom/termux/x11/input/RenderData;->imageHeight:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    .line 766
    .local v4, "imageHeight":F
    const v3, -0x457ced91    # -0.001f

    cmpg-float v5, v0, v3

    if-ltz v5, :cond_1

    cmpl-float v5, v0, v2

    if-gtz v5, :cond_1

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_1

    cmpl-float v3, v1, v4

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3
.end method


# virtual methods
.method synthetic lambda$new$0$com-termux-x11-input-TouchInputHandler$GestureListener(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 599
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v0}, Lcom/termux/x11/input/TouchInputHandler;->access$600(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputStrategyInterface;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/termux/x11/input/InputStrategyInterface;->onTap(I)V

    .line 601
    :cond_0
    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 706
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 707
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 716
    :pswitch_1
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->mLastFocusX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->mLastFocusY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1, v0, v2}, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    .line 709
    :pswitch_2
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v0}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v0

    iget-boolean v0, v0, Lcom/termux/x11/input/InputEventSender;->tapToMove:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v0}, Lcom/termux/x11/input/TouchInputHandler;->access$600(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputStrategyInterface;

    move-result-object v0

    instance-of v0, v0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->mGestureListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v0}, Lcom/termux/x11/input/TouchInputHandler;->access$600(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputStrategyInterface;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/termux/x11/input/InputStrategyInterface;->onPressAndHold(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v0, v1}, Lcom/termux/x11/input/TouchInputHandler;->access$1602(Lcom/termux/x11/input/TouchInputHandler;Z)Z

    .line 720
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->mLastFocusX:F

    .line 721
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->mLastFocusY:F

    .line 724
    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 677
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(IFF)V
    .locals 3
    .param p1, "pointerCount"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 730
    invoke-direct {p0, p1}, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->mouseButtonFromPointerCount(I)I

    move-result v0

    .line 731
    .local v0, "button":I
    if-nez v0, :cond_0

    .line 732
    return-void

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$600(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputStrategyInterface;

    move-result-object v1

    instance-of v1, v1, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    if-nez v1, :cond_2

    .line 736
    invoke-direct {p0, p2, p3}, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->screenPointLiesOutsideImageBoundary(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 737
    return-void

    .line 738
    :cond_1
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1, p2, p3}, Lcom/termux/x11/input/TouchInputHandler;->access$1200(Lcom/termux/x11/input/TouchInputHandler;FF)V

    .line 741
    :cond_2
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$600(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputStrategyInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/termux/x11/input/InputStrategyInterface;->onPressAndHold(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 742
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/termux/x11/input/TouchInputHandler;->access$1602(Lcom/termux/x11/input/TouchInputHandler;Z)Z

    .line 743
    :cond_3
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 609
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 613
    .local v0, "pointerCount":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const v2, 0x100008

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    .line 614
    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$600(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputStrategyInterface;

    move-result-object v1

    instance-of v1, v1, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    if-eqz v1, :cond_1

    .line 616
    sget v1, Lcom/termux/x11/input/TouchInputHandler;->capturedPointerTransformation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 617
    invoke-static {}, Lcom/termux/x11/input/TouchInputHandler;->access$200()I

    move-result v1

    goto :goto_0

    :cond_0
    sget v1, Lcom/termux/x11/input/TouchInputHandler;->capturedPointerTransformation:I

    .line 618
    .local v1, "transform":I
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 620
    :pswitch_0
    move v2, p3

    .local v2, "temp":F
    neg-float p3, p4

    move p4, v2

    goto :goto_1

    .line 626
    .end local v2    # "temp":F
    :pswitch_1
    neg-float p3, p3

    neg-float p4, p4

    goto :goto_1

    .line 622
    :pswitch_2
    move v2, p3

    .line 624
    .restart local v2    # "temp":F
    move p3, p4

    neg-float p4, v2

    .line 630
    .end local v2    # "temp":F
    :goto_1
    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v2}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v2

    iget v2, v2, Lcom/termux/x11/input/InputEventSender;->capturedPointerSpeedFactor:F

    mul-float p3, p3, v2

    .line 631
    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v2}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v2

    iget v2, v2, Lcom/termux/x11/input/InputEventSender;->capturedPointerSpeedFactor:F

    mul-float p4, p4, v2

    .line 635
    .end local v1    # "transform":I
    :cond_1
    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$800(Lcom/termux/x11/input/TouchInputHandler;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 639
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1, p4}, Lcom/termux/x11/input/TouchInputHandler;->access$924(Lcom/termux/x11/input/TouchInputHandler;F)F

    .line 640
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$1000(Lcom/termux/x11/input/TouchInputHandler;)Z

    move-result v1

    return v1

    .line 643
    :cond_2
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$1100(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/SwipeDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/input/SwipeDetector;->isSwiping()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 644
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$600(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputStrategyInterface;

    move-result-object v1

    instance-of v1, v1, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    if-nez v1, :cond_3

    .line 647
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/termux/x11/input/TouchInputHandler;->access$1200(Lcom/termux/x11/input/TouchInputHandler;FF)V

    .line 649
    :cond_3
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$600(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputStrategyInterface;

    move-result-object v1

    invoke-interface {v1, p3, p4}, Lcom/termux/x11/input/InputStrategyInterface;->onScroll(FF)V

    .line 652
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1, v2}, Lcom/termux/x11/input/TouchInputHandler;->access$1302(Lcom/termux/x11/input/TouchInputHandler;Z)Z

    .line 653
    return v2

    .line 656
    :cond_4
    if-ne v0, v2, :cond_9

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$1300(Lcom/termux/x11/input/TouchInputHandler;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 659
    :cond_5
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$600(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputStrategyInterface;

    move-result-object v1

    instance-of v1, v1, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    if-eqz v1, :cond_7

    .line 660
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v1

    iget-boolean v1, v1, Lcom/termux/x11/input/InputEventSender;->scaleTouchpad:Z

    if-eqz v1, :cond_6

    .line 661
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float p3, p3, v1

    .line 662
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float p4, p4, v1

    .line 664
    :cond_6
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1, p3, p4}, Lcom/termux/x11/input/TouchInputHandler;->access$1500(Lcom/termux/x11/input/TouchInputHandler;FF)V

    .line 666
    :cond_7
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$600(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputStrategyInterface;

    move-result-object v1

    instance-of v1, v1, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$1600(Lcom/termux/x11/input/TouchInputHandler;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 669
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/termux/x11/input/TouchInputHandler;->access$1200(Lcom/termux/x11/input/TouchInputHandler;FF)V

    .line 671
    :cond_8
    return v2

    .line 657
    :cond_9
    :goto_2
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTap(IFF)V
    .locals 5
    .param p1, "pointerCount"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 685
    invoke-direct {p0, p1}, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->mouseButtonFromPointerCount(I)I

    move-result v0

    .line 686
    .local v0, "button":I
    if-nez v0, :cond_0

    .line 687
    return-void

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$600(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputStrategyInterface;

    move-result-object v1

    instance-of v1, v1, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    if-nez v1, :cond_2

    .line 690
    invoke-direct {p0, p2, p3}, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->screenPointLiesOutsideImageBoundary(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 691
    return-void

    .line 693
    :cond_1
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1, p2, p3}, Lcom/termux/x11/input/TouchInputHandler;->access$1200(Lcom/termux/x11/input/TouchInputHandler;FF)V

    .line 696
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v2}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v2

    iget-boolean v2, v2, Lcom/termux/x11/input/InputEventSender;->tapToMove:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v2}, Lcom/termux/x11/input/TouchInputHandler;->access$600(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputStrategyInterface;

    move-result-object v2

    instance-of v2, v2, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    if-nez v2, :cond_3

    goto :goto_0

    .line 699
    :cond_3
    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->mGestureListenerHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 697
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$600(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputStrategyInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/termux/x11/input/InputStrategyInterface;->onTap(I)V

    .line 700
    :goto_1
    return-void
.end method

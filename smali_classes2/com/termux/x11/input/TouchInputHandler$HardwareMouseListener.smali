.class Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;
.super Ljava/lang/Object;
.source "TouchInputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/input/TouchInputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HardwareMouseListener"
.end annotation


# instance fields
.field private final buttons:[[I

.field private currentBS:I

.field private savedBS:I

.field final synthetic this$0:Lcom/termux/x11/input/TouchInputHandler;


# direct methods
.method private constructor <init>(Lcom/termux/x11/input/TouchInputHandler;)V
    .locals 4

    .line 845
    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    const/4 p1, 0x0

    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->savedBS:I

    .line 847
    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->currentBS:I

    .line 857
    const/4 v0, 0x3

    new-array v1, v0, [[I

    const/4 v2, 0x1

    filled-new-array {v2, v2}, [I

    move-result-object v3

    aput-object v3, v1, p1

    const/4 p1, 0x4

    const/4 v3, 0x2

    filled-new-array {p1, v3}, [I

    move-result-object p1

    aput-object p1, v1, v2

    filled-new-array {v3, v0}, [I

    move-result-object p1

    aput-object p1, v1, v3

    iput-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->buttons:[[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/termux/x11/input/TouchInputHandler;Lcom/termux/x11/input/TouchInputHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p2, "x1"    # Lcom/termux/x11/input/TouchInputHandler$1;

    .line 845
    invoke-direct {p0, p1}, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-void
.end method


# virtual methods
.method isMouseButtonChanged(I)Z
    .locals 2
    .param p1, "mask"    # I

    .line 850
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->savedBS:I

    and-int/2addr v0, p1

    iget v1, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->currentBS:I

    and-int/2addr v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method mouseButtonDown(I)Z
    .locals 1
    .param p1, "mask"    # I

    .line 854
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->currentBS:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 866
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 867
    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/high16 v1, -0x3d380000    # -100.0f

    mul-float v0, v0, v1

    .line 868
    .local v0, "scrollY":F
    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    mul-float v3, v3, v1

    .line 870
    .local v3, "scrollX":F
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/termux/x11/input/InputEventSender;->sendMouseWheelEvent(FF)V

    .line 871
    return v2

    .line 874
    .end local v0    # "scrollY":F
    .end local v3    # "scrollX":F
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->hasPointerCapture()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 875
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v3}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v3

    iget-object v3, v3, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, v3

    .local v0, "scaledX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v4}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v4

    iget-object v4, v4, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float v3, v3, v4

    .line 876
    .local v3, "scaledY":F
    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v4}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/termux/x11/input/RenderData;->setCursorPosition(FF)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 877
    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v4}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v1}, Lcom/termux/x11/input/InputEventSender;->sendCursorMove(FFZ)V

    goto/16 :goto_5

    .line 878
    .end local v0    # "scaledX":F
    .end local v3    # "scaledY":F
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 879
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    const/16 v3, 0x1b

    invoke-virtual {v0, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 880
    .local v0, "axis_relative_x":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    const v5, 0x20004

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 881
    .local v4, "mouse_relative":Z
    :goto_1
    if-nez v0, :cond_4

    if-eqz v4, :cond_8

    .line 882
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 883
    .local v3, "x":F
    :goto_2
    if-eqz v0, :cond_6

    const/16 v5, 0x1c

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 886
    .local v5, "y":F
    :goto_3
    sget v6, Lcom/termux/x11/input/TouchInputHandler;->capturedPointerTransformation:I

    packed-switch v6, :pswitch_data_0

    goto :goto_4

    .line 888
    :pswitch_0
    move v6, v3

    .local v6, "temp":F
    neg-float v3, v5

    move v5, v6

    goto :goto_4

    .line 892
    .end local v6    # "temp":F
    :pswitch_1
    neg-float v3, v3

    neg-float v5, v5

    goto :goto_4

    .line 890
    :pswitch_2
    move v6, v3

    .restart local v6    # "temp":F
    move v3, v5

    neg-float v5, v6

    .line 897
    .end local v6    # "temp":F
    :goto_4
    iget-object v6, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v6}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v6

    iget v6, v6, Lcom/termux/x11/input/InputEventSender;->capturedPointerSpeedFactor:F

    iget-object v7, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v7}, Lcom/termux/x11/input/TouchInputHandler;->access$1700(Lcom/termux/x11/input/TouchInputHandler;)Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v6, v7

    mul-float v3, v3, v6

    .line 898
    iget-object v6, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v6}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v6

    iget v6, v6, Lcom/termux/x11/input/InputEventSender;->capturedPointerSpeedFactor:F

    iget-object v7, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v7}, Lcom/termux/x11/input/TouchInputHandler;->access$1700(Lcom/termux/x11/input/TouchInputHandler;)Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v6, v7

    mul-float v5, v5, v6

    .line 900
    iget-object v6, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v6}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v6

    invoke-virtual {v6, v3, v5, v2}, Lcom/termux/x11/input/InputEventSender;->sendCursorMove(FFZ)V

    .line 901
    if-eqz v0, :cond_8

    iget-object v6, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v6}, Lcom/termux/x11/input/TouchInputHandler;->access$1800(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/TouchInputHandler;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 902
    iget-object v6, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v6}, Lcom/termux/x11/input/TouchInputHandler;->access$1800(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/TouchInputHandler;

    move-result-object v6

    invoke-static {v6}, Lcom/termux/x11/input/TouchInputHandler;->access$1900(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/TapGestureDetector;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/termux/x11/input/TapGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_6

    .line 878
    .end local v0    # "axis_relative_x":Z
    .end local v3    # "x":F
    .end local v4    # "mouse_relative":Z
    .end local v5    # "y":F
    :cond_7
    :goto_5
    nop

    .line 906
    :cond_8
    :goto_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->currentBS:I

    .line 907
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->buttons:[[I

    array-length v3, v0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_a

    aget-object v5, v0, v4

    .line 908
    .local v5, "button":[I
    aget v6, v5, v1

    invoke-virtual {p0, v6}, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->isMouseButtonChanged(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 909
    iget-object v6, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v6}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v6

    aget v7, v5, v2

    aget v8, v5, v1

    invoke-virtual {p0, v8}, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->mouseButtonDown(I)Z

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v7, v8, v2}, Lcom/termux/x11/input/InputEventSender;->sendMouseEvent(Landroid/graphics/PointF;IZZ)V

    .line 907
    .end local v5    # "button":[I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 910
    :cond_a
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->currentBS:I

    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->savedBS:I

    .line 911
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

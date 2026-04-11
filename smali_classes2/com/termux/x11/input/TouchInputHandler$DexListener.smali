.class Lcom/termux/x11/input/TouchInputHandler$DexListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchInputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/input/TouchInputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexListener"
.end annotation


# instance fields
.field private final buttons:[[I

.field private currentBS:I

.field private final handler:Landroid/os/Handler;

.field private mIsDragging:Z

.field private mIsScrolling:Z

.field private final mScroller:Landroid/view/GestureDetector;

.field private final mouseDownRunnable:Ljava/lang/Runnable;

.field private onTap:Z

.field private savedBS:I

.field final synthetic this$0:Lcom/termux/x11/input/TouchInputHandler;


# direct methods
.method constructor <init>(Lcom/termux/x11/input/TouchInputHandler;Landroid/content/Context;)V
    .locals 5
    .param p2, "ctx"    # Landroid/content/Context;

    .line 1009
    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 1004
    const/4 p1, 0x0

    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->savedBS:I

    .line 1005
    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->currentBS:I

    .line 1006
    iput-boolean p1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->onTap:Z

    .line 1007
    iput-boolean p1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mIsDragging:Z

    .line 1008
    iput-boolean p1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mIsScrolling:Z

    .line 1012
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->handler:Landroid/os/Handler;

    .line 1013
    new-instance v0, Lcom/termux/x11/input/TouchInputHandler$DexListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/termux/x11/input/TouchInputHandler$DexListener$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/input/TouchInputHandler$DexListener;)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mouseDownRunnable:Ljava/lang/Runnable;

    .line 1015
    const/4 v0, 0x3

    new-array v1, v0, [[I

    const/4 v2, 0x1

    filled-new-array {v2, v2}, [I

    move-result-object v3

    aput-object v3, v1, p1

    const/4 v3, 0x4

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    aput-object v3, v1, v2

    filled-new-array {v4, v0}, [I

    move-result-object v0

    aput-object v0, v1, v4

    iput-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->buttons:[[I

    .line 1010
    new-instance v0, Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mScroller:Landroid/view/GestureDetector;

    .line 1011
    return-void
.end method

.method private hasFlags(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "flags"    # I

    .line 1043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isScrollingEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1048
    const/high16 v0, 0x14000000

    invoke-direct {p0, p1, v0}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->hasFlags(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method checkButtons(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1030
    const/4 v0, 0x0

    .line 1031
    .local v0, "isHandled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    iput v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->currentBS:I

    .line 1032
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->buttons:[[I

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 1033
    .local v5, "button":[I
    aget v6, v5, v3

    invoke-virtual {p0, v6}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->isMouseButtonChanged(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1034
    iget-object v6, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v6}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v6

    iget-object v7, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v7}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/termux/x11/input/RenderData;->getCursorPosition()Landroid/graphics/PointF;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v5, v8

    aget v9, v5, v3

    invoke-virtual {p0, v9}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mouseButtonDown(I)Z

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v3}, Lcom/termux/x11/input/InputEventSender;->sendMouseEvent(Landroid/graphics/PointF;IZZ)V

    .line 1035
    const/4 v0, 0x1

    .line 1032
    .end local v5    # "button":[I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1038
    :cond_1
    iget v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->currentBS:I

    iput v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->savedBS:I

    .line 1039
    return v0
.end method

.method isMouseButtonChanged(I)Z
    .locals 2
    .param p1, "mask"    # I

    .line 1022
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->savedBS:I

    and-int/2addr v0, p1

    iget v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->currentBS:I

    and-int/2addr v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$new$0$com-termux-x11-input-TouchInputHandler$DexListener()V
    .locals 4

    .line 1013
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v0}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/input/RenderData;->getCursorPosition()Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/termux/x11/input/InputEventSender;->sendMouseEvent(Landroid/graphics/PointF;IZZ)V

    return-void
.end method

.method mouseButtonDown(I)Z
    .locals 1
    .param p1, "mask"    # I

    .line 1026
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->currentBS:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1124
    invoke-virtual {p0, p1}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 1125
    invoke-virtual {p0, p1}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 1126
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 1118
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v0}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/termux/x11/input/InputEventSender;->sendMouseWheelEvent(FF)V

    .line 1119
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1131
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v0}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/input/RenderData;->getCursorPosition()Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/termux/x11/input/InputEventSender;->sendMouseEvent(Landroid/graphics/PointF;IZZ)V

    .line 1132
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v0}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/input/RenderData;->getCursorPosition()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/termux/x11/input/InputEventSender;->sendMouseEvent(Landroid/graphics/PointF;IZZ)V

    .line 1133
    return v2
.end method

.method onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 1053
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/high16 v1, 0x4000000

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1113
    :pswitch_0
    return v3

    .line 1056
    :pswitch_1
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mScroller:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1057
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mouseDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1058
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->onTap:Z

    .line 1059
    iput-boolean v3, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mIsDragging:Z

    .line 1061
    invoke-virtual {p0, p2}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->checkButtons(Landroid/view/MotionEvent;)Z

    .line 1062
    return v2

    .line 1064
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, v1

    .local v0, "scaledX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v4}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v4

    iget-object v4, v4, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v4

    .line 1065
    .local v1, "scaledY":F
    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v4}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/termux/x11/input/RenderData;->setCursorPosition(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1066
    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v4}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3}, Lcom/termux/x11/input/InputEventSender;->sendCursorMove(FFZ)V

    .line 1067
    :cond_1
    return v2

    .line 1108
    .end local v0    # "scaledX":F
    .end local v1    # "scaledY":F
    :pswitch_3
    iput-boolean v3, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->onTap:Z

    .line 1109
    iput-boolean v3, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mIsScrolling:Z

    .line 1110
    iput-boolean v3, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mIsDragging:Z

    .line 1111
    return v2

    .line 1098
    :pswitch_4
    iget-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mIsScrolling:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->isScrollingEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1099
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mScroller:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1100
    :cond_2
    iget-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mIsDragging:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p2, v1}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->hasFlags(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->onTap:Z

    if-eqz v0, :cond_5

    .line 1101
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, v1

    .restart local v0    # "scaledX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v4}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v4

    iget-object v4, v4, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v4

    .line 1102
    .restart local v1    # "scaledY":F
    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v4}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/termux/x11/input/RenderData;->setCursorPosition(FF)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1103
    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v4}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3}, Lcom/termux/x11/input/InputEventSender;->sendCursorMove(FFZ)V

    .line 1105
    .end local v0    # "scaledX":F
    .end local v1    # "scaledY":F
    :cond_5
    :goto_1
    return v2

    .line 1083
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->checkButtons(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1084
    .local v0, "isButtonHandled":Z
    invoke-direct {p0, p2}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->isScrollingEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1085
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mScroller:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1086
    iput-boolean v3, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mIsScrolling:Z

    goto :goto_2

    .line 1088
    :cond_6
    invoke-direct {p0, p2, v1}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->hasFlags(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1089
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v1

    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v4}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/x11/input/RenderData;->getCursorPosition()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3, v3}, Lcom/termux/x11/input/InputEventSender;->sendMouseEvent(Landroid/graphics/PointF;IZZ)V

    .line 1090
    iput-boolean v3, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mIsDragging:Z

    goto :goto_2

    .line 1091
    :cond_7
    if-nez v0, :cond_8

    iget-boolean v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->onTap:Z

    if-eqz v1, :cond_8

    .line 1092
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v1

    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v4}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/x11/input/RenderData;->getCursorPosition()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3, v3}, Lcom/termux/x11/input/InputEventSender;->sendMouseEvent(Landroid/graphics/PointF;IZZ)V

    .line 1093
    iput-boolean v3, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->onTap:Z

    .line 1096
    :cond_8
    :goto_2
    return v2

    .line 1070
    .end local v0    # "isButtonHandled":Z
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->checkButtons(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1071
    .restart local v0    # "isButtonHandled":Z
    invoke-direct {p0, p2}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->isScrollingEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1072
    iput-boolean v2, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mIsScrolling:Z

    .line 1073
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mScroller:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3

    .line 1074
    :cond_9
    invoke-direct {p0, p2, v1}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->hasFlags(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1075
    iput-boolean v2, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mIsDragging:Z

    .line 1076
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->mouseDownRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 1077
    :cond_a
    if-nez v0, :cond_b

    .line 1078
    iput-boolean v2, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->onTap:Z

    .line 1079
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v1}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v1

    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler$DexListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v4}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/x11/input/RenderData;->getCursorPosition()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v2, v3}, Lcom/termux/x11/input/InputEventSender;->sendMouseEvent(Landroid/graphics/PointF;IZZ)V

    .line 1081
    :cond_b
    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

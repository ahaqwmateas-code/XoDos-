.class public Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;
.super Ljava/lang/Object;
.source "InputStrategyInterface.java"

# interfaces
.implements Lcom/termux/x11/input/InputStrategyInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/input/InputStrategyInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimulatedTouchInputStrategy"
.end annotation


# static fields
.field private static final DOUBLE_TAP_SLOP_SCALE_FACTOR:F = 0.25f


# instance fields
.field private final mDoubleTapDurationInMs:J

.field private final mDoubleTapSlopSquareInPx:I

.field private mHeldButton:I

.field private final mInjector:Lcom/termux/x11/input/InputEventSender;

.field private mLastTapPoint:Landroid/graphics/PointF;

.field private mLastTapTimeInMs:J

.field private final mRenderData:Lcom/termux/x11/input/RenderData;


# direct methods
.method public constructor <init>(Lcom/termux/x11/input/RenderData;Lcom/termux/x11/input/InputEventSender;Landroid/content/Context;)V
    .locals 4
    .param p1, "renderData"    # Lcom/termux/x11/input/RenderData;
    .param p2, "injector"    # Lcom/termux/x11/input/InputEventSender;
    .param p3, "context"    # Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mHeldButton:I

    .line 96
    if-eqz p2, :cond_0

    .line 98
    iput-object p1, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mRenderData:Lcom/termux/x11/input/RenderData;

    .line 99
    iput-object p2, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mInjector:Lcom/termux/x11/input/InputEventSender;

    .line 101
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mDoubleTapDurationInMs:J

    .line 120
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 121
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 122
    .local v1, "scaledDoubleTapSlopInPx":I
    int-to-float v2, v1

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v2, v2, v3

    float-to-int v1, v2

    .line 123
    mul-int v2, v1, v1

    iput v2, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mDoubleTapSlopSquareInPx:I

    .line 124
    return-void

    .line 97
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    .end local v1    # "scaledDoubleTapSlopInPx":I
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private isDoubleTap(FFJ)Z
    .locals 8
    .param p1, "currentX"    # F
    .param p2, "currentY"    # F
    .param p3, "tapInterval"    # J

    .line 175
    iget-wide v0, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mDoubleTapDurationInMs:J

    const/4 v2, 0x0

    cmp-long v3, p3, v0

    if-gtz v3, :cond_2

    iget-object v0, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mLastTapPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget-object v0, v0, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, p1

    iget-object v1, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget-object v1, v1, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, p2

    const/4 v3, 0x2

    new-array v4, v3, [F

    aput v0, v4, v2

    const/4 v0, 0x1

    aput v1, v4, v0

    move-object v1, v4

    .line 183
    .local v1, "currentValues":[F
    iget-object v4, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mLastTapPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget-object v5, v5, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float v4, v4, v5

    iget-object v5, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mLastTapPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget-object v6, v6, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float v5, v5, v6

    new-array v3, v3, [F

    aput v4, v3, v2

    aput v5, v3, v0

    .line 185
    .local v3, "previousValues":[F
    aget v4, v1, v2

    aget v5, v3, v2

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 186
    .local v4, "deltaX":I
    aget v5, v1, v0

    aget v6, v3, v0

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 187
    .local v5, "deltaY":I
    mul-int v6, v4, v4

    mul-int v7, v5, v5

    add-int/2addr v6, v7

    iget v7, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mDoubleTapSlopSquareInPx:I

    if-gt v6, v7, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 176
    .end local v1    # "currentValues":[F
    .end local v3    # "previousValues":[F
    .end local v4    # "deltaX":I
    .end local v5    # "deltaY":I
    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mHeldButton:I

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget v1, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mHeldButton:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/termux/x11/input/InputEventSender;->sendMouseUp(IZ)V

    .line 170
    iput v2, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mHeldButton:I

    .line 172
    :cond_0
    return-void
.end method

.method public onPressAndHold(IZ)Z
    .locals 2
    .param p1, "button"    # I
    .param p2, "force"    # Z

    .line 156
    iget-object v0, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mInjector:Lcom/termux/x11/input/InputEventSender;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/termux/x11/input/InputEventSender;->sendMouseDown(IZ)V

    .line 157
    iput p1, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mHeldButton:I

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(FF)V
    .locals 1
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .line 163
    iget-object v0, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mInjector:Lcom/termux/x11/input/InputEventSender;

    invoke-virtual {v0, p1, p2}, Lcom/termux/x11/input/InputEventSender;->sendMouseWheelEvent(FF)V

    .line 164
    return-void
.end method

.method public onTap(I)V
    .locals 9
    .param p1, "button"    # I

    .line 128
    iget-object v0, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mRenderData:Lcom/termux/x11/input/RenderData;

    invoke-virtual {v0}, Lcom/termux/x11/input/RenderData;->getCursorPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 129
    .local v0, "currentTapPoint":Landroid/graphics/PointF;
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-ne p1, v1, :cond_1

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mLastTapTimeInMs:J

    sub-long/2addr v5, v7

    .line 139
    .local v5, "tapInterval":J
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v1, v7, v5, v6}, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->isDoubleTap(FFJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iput-object v4, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mLastTapPoint:Landroid/graphics/PointF;

    .line 141
    iput-wide v2, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mLastTapTimeInMs:J

    goto :goto_0

    .line 143
    :cond_0
    iput-object v0, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mLastTapPoint:Landroid/graphics/PointF;

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mLastTapTimeInMs:J

    .line 146
    .end local v5    # "tapInterval":J
    :goto_0
    goto :goto_1

    .line 147
    :cond_1
    iput-object v4, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mLastTapPoint:Landroid/graphics/PointF;

    .line 148
    iput-wide v2, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mLastTapTimeInMs:J

    .line 151
    :goto_1
    iget-object v1, p0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;->mInjector:Lcom/termux/x11/input/InputEventSender;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/termux/x11/input/InputEventSender;->sendMouseClick(IZ)V

    .line 152
    return-void
.end method

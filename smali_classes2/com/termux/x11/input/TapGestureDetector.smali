.class public Lcom/termux/x11/input/TapGestureDetector;
.super Ljava/lang/Object;
.source "TapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/input/TapGestureDetector$OnTapListener;,
        Lcom/termux/x11/input/TapGestureDetector$EventHandler;
    }
.end annotation


# instance fields
.field private longPressedDelay:I

.field private final mHandler:Landroid/os/Handler;

.field private mInitialPoint:Landroid/graphics/PointF;

.field private final mInitialPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/termux/x11/input/TapGestureDetector$OnTapListener;

.field private mPointerCount:I

.field private mTapCancelled:Z

.field private final mTouchSlopSquare:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/termux/x11/input/TapGestureDetector$OnTapListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/termux/x11/input/TapGestureDetector$OnTapListener;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/termux/x11/input/TapGestureDetector;->longPressedDelay:I

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/input/TapGestureDetector;->mInitialPositions:Landroid/util/SparseArray;

    .line 98
    iput-object p2, p0, Lcom/termux/x11/input/TapGestureDetector;->mListener:Lcom/termux/x11/input/TapGestureDetector$OnTapListener;

    .line 99
    new-instance v0, Lcom/termux/x11/input/TapGestureDetector$EventHandler;

    invoke-direct {v0, p0}, Lcom/termux/x11/input/TapGestureDetector$EventHandler;-><init>(Lcom/termux/x11/input/TapGestureDetector;)V

    iput-object v0, p0, Lcom/termux/x11/input/TapGestureDetector;->mHandler:Landroid/os/Handler;

    .line 100
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 101
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 102
    .local v1, "touchSlop":I
    mul-int v2, v1, v1

    iput v2, p0, Lcom/termux/x11/input/TapGestureDetector;->mTouchSlopSquare:I

    .line 103
    return-void
.end method

.method static synthetic access$002(Lcom/termux/x11/input/TapGestureDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/input/TapGestureDetector;
    .param p1, "x1"    # Z

    .line 21
    iput-boolean p1, p0, Lcom/termux/x11/input/TapGestureDetector;->mTapCancelled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/termux/x11/input/TapGestureDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TapGestureDetector;

    .line 21
    iget v0, p0, Lcom/termux/x11/input/TapGestureDetector;->mPointerCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/termux/x11/input/TapGestureDetector;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TapGestureDetector;

    .line 21
    iget-object v0, p0, Lcom/termux/x11/input/TapGestureDetector;->mInitialPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$202(Lcom/termux/x11/input/TapGestureDetector;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/input/TapGestureDetector;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .line 21
    iput-object p1, p0, Lcom/termux/x11/input/TapGestureDetector;->mInitialPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$300(Lcom/termux/x11/input/TapGestureDetector;)Lcom/termux/x11/input/TapGestureDetector$OnTapListener;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TapGestureDetector;

    .line 21
    iget-object v0, p0, Lcom/termux/x11/input/TapGestureDetector;->mListener:Lcom/termux/x11/input/TapGestureDetector$OnTapListener;

    return-object v0
.end method

.method private cancelLongTouchNotification()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/termux/x11/input/TapGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    return-void
.end method

.method private reset()V
    .locals 2

    .line 209
    invoke-direct {p0}, Lcom/termux/x11/input/TapGestureDetector;->cancelLongTouchNotification()V

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/x11/input/TapGestureDetector;->mPointerCount:I

    .line 211
    iget-object v1, p0, Lcom/termux/x11/input/TapGestureDetector;->mInitialPositions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 212
    iput-boolean v0, p0, Lcom/termux/x11/input/TapGestureDetector;->mTapCancelled:Z

    .line 213
    return-void
.end method

.method private trackDownEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "pointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 160
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 161
    .local v1, "pointerId":I
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 162
    .local v2, "eventPosition":Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/termux/x11/input/TapGestureDetector;->mInitialPositions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    iget-object v3, p0, Lcom/termux/x11/input/TapGestureDetector;->mInitialPoint:Landroid/graphics/PointF;

    if-nez v3, :cond_1

    .line 165
    iput-object v2, p0, Lcom/termux/x11/input/TapGestureDetector;->mInitialPoint:Landroid/graphics/PointF;

    .line 167
    :cond_1
    return-void
.end method

.method private trackMoveEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 187
    .local v0, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 188
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 189
    .local v2, "pointerId":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 190
    .local v3, "currentX":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 191
    .local v4, "currentY":F
    iget-object v5, p0, Lcom/termux/x11/input/TapGestureDetector;->mInitialPositions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 192
    .local v5, "downPoint":Landroid/graphics/PointF;
    if-nez v5, :cond_0

    .line 195
    iget-object v6, p0, Lcom/termux/x11/input/TapGestureDetector;->mInitialPositions:Landroid/util/SparseArray;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v6, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    goto :goto_1

    .line 198
    :cond_0
    iget v6, v5, Landroid/graphics/PointF;->x:F

    sub-float v6, v3, v6

    .line 199
    .local v6, "deltaX":F
    iget v7, v5, Landroid/graphics/PointF;->y:F

    sub-float v7, v4, v7

    .line 200
    .local v7, "deltaY":F
    mul-float v8, v6, v6

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    iget v9, p0, Lcom/termux/x11/input/TapGestureDetector;->mTouchSlopSquare:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 201
    const/4 v8, 0x1

    return v8

    .line 187
    .end local v2    # "pointerId":I
    .end local v3    # "currentX":F
    .end local v4    # "currentY":F
    .end local v5    # "downPoint":Landroid/graphics/PointF;
    .end local v6    # "deltaX":F
    .end local v7    # "deltaY":F
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private trackUpEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "pointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 175
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 176
    .local v1, "pointerId":I
    iget-object v2, p0, Lcom/termux/x11/input/TapGestureDetector;->mInitialPositions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 177
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 141
    :pswitch_1
    invoke-direct {p0}, Lcom/termux/x11/input/TapGestureDetector;->cancelLongTouchNotification()V

    .line 142
    invoke-direct {p0, p1}, Lcom/termux/x11/input/TapGestureDetector;->trackUpEvent(Landroid/view/MotionEvent;)V

    .line 143
    goto :goto_0

    .line 120
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/termux/x11/input/TapGestureDetector;->trackDownEvent(Landroid/view/MotionEvent;)V

    .line 121
    iget v0, p0, Lcom/termux/x11/input/TapGestureDetector;->mPointerCount:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/x11/input/TapGestureDetector;->mPointerCount:I

    .line 122
    goto :goto_0

    .line 146
    :pswitch_3
    invoke-direct {p0}, Lcom/termux/x11/input/TapGestureDetector;->cancelLongTouchNotification()V

    .line 147
    goto :goto_0

    .line 125
    :pswitch_4
    iget-boolean v0, p0, Lcom/termux/x11/input/TapGestureDetector;->mTapCancelled:Z

    if-nez v0, :cond_1

    .line 126
    invoke-direct {p0, p1}, Lcom/termux/x11/input/TapGestureDetector;->trackMoveEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/termux/x11/input/TapGestureDetector;->cancelLongTouchNotification()V

    .line 128
    iput-boolean v1, p0, Lcom/termux/x11/input/TapGestureDetector;->mTapCancelled:Z

    goto :goto_0

    .line 134
    :pswitch_5
    invoke-direct {p0}, Lcom/termux/x11/input/TapGestureDetector;->cancelLongTouchNotification()V

    .line 135
    iget-boolean v0, p0, Lcom/termux/x11/input/TapGestureDetector;->mTapCancelled:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/termux/x11/input/TapGestureDetector;->mListener:Lcom/termux/x11/input/TapGestureDetector$OnTapListener;

    iget v1, p0, Lcom/termux/x11/input/TapGestureDetector;->mPointerCount:I

    iget-object v2, p0, Lcom/termux/x11/input/TapGestureDetector;->mInitialPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/termux/x11/input/TapGestureDetector;->mInitialPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-interface {v0, v1, v2, v3}, Lcom/termux/x11/input/TapGestureDetector$OnTapListener;->onTap(IFF)V

    .line 137
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/input/TapGestureDetector;->mInitialPoint:Landroid/graphics/PointF;

    .line 138
    goto :goto_0

    .line 111
    :pswitch_6
    invoke-direct {p0}, Lcom/termux/x11/input/TapGestureDetector;->reset()V

    .line 112
    invoke-direct {p0, p1}, Lcom/termux/x11/input/TapGestureDetector;->trackDownEvent(Landroid/view/MotionEvent;)V

    .line 115
    iget-object v0, p0, Lcom/termux/x11/input/TapGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    iget v3, p0, Lcom/termux/x11/input/TapGestureDetector;->longPressedDelay:I

    mul-int v2, v2, v3

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    iput v1, p0, Lcom/termux/x11/input/TapGestureDetector;->mPointerCount:I

    .line 117
    nop

    .line 152
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setLongPressedDelay(I)V
    .locals 0
    .param p1, "longPressedDelay"    # I

    .line 25
    iput p1, p0, Lcom/termux/x11/input/TapGestureDetector;->longPressedDelay:I

    .line 26
    return-void
.end method

.class public Lcom/termux/x11/input/SwipeDetector;
.super Ljava/lang/Object;
.source "SwipeDetector.java"


# instance fields
.field private mFirstX0:F

.field private mFirstX1:F

.field private mFirstY0:F

.field private mFirstY1:F

.field private mInGesture:Z

.field private mInSwipe:Z

.field private final mTouchSlopSquare:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/input/SwipeDetector;->mInSwipe:Z

    .line 44
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 45
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 46
    .local v1, "touchSlop":I
    mul-int v2, v1, v1

    iput v2, p0, Lcom/termux/x11/input/SwipeDetector;->mTouchSlopSquare:I

    .line 47
    return-void
.end method

.method private reset()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/input/SwipeDetector;->mInSwipe:Z

    .line 39
    iput-boolean v0, p0, Lcom/termux/x11/input/SwipeDetector;->mInGesture:Z

    .line 40
    return-void
.end method


# virtual methods
.method public isSwiping()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/termux/x11/input/SwipeDetector;->mInSwipe:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 62
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/termux/x11/input/SwipeDetector;->reset()V

    .line 64
    return-void

    .line 72
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 73
    .local v2, "action":I
    if-eq v2, v3, :cond_1

    .line 74
    invoke-direct/range {p0 .. p0}, Lcom/termux/x11/input/SwipeDetector;->reset()V

    .line 75
    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 76
    return-void

    .line 81
    :cond_1
    iget-boolean v3, v0, Lcom/termux/x11/input/SwipeDetector;->mInSwipe:Z

    if-eqz v3, :cond_2

    .line 82
    return-void

    .line 84
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 85
    .local v4, "currentX0":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 86
    .local v5, "currentY0":F
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 87
    .local v7, "currentX1":F
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 88
    .local v8, "currentY1":F
    iget-boolean v9, v0, Lcom/termux/x11/input/SwipeDetector;->mInGesture:Z

    if-nez v9, :cond_3

    .line 90
    iput v4, v0, Lcom/termux/x11/input/SwipeDetector;->mFirstX0:F

    .line 91
    iput v5, v0, Lcom/termux/x11/input/SwipeDetector;->mFirstY0:F

    .line 92
    iput v7, v0, Lcom/termux/x11/input/SwipeDetector;->mFirstX1:F

    .line 93
    iput v8, v0, Lcom/termux/x11/input/SwipeDetector;->mFirstY1:F

    .line 94
    iput-boolean v6, v0, Lcom/termux/x11/input/SwipeDetector;->mInGesture:Z

    .line 95
    return-void

    .line 98
    :cond_3
    iget v9, v0, Lcom/termux/x11/input/SwipeDetector;->mFirstX0:F

    sub-float v9, v4, v9

    .line 99
    .local v9, "deltaX0":F
    iget v10, v0, Lcom/termux/x11/input/SwipeDetector;->mFirstY0:F

    sub-float v10, v5, v10

    .line 100
    .local v10, "deltaY0":F
    iget v11, v0, Lcom/termux/x11/input/SwipeDetector;->mFirstX1:F

    sub-float v11, v7, v11

    .line 101
    .local v11, "deltaX1":F
    iget v12, v0, Lcom/termux/x11/input/SwipeDetector;->mFirstY1:F

    sub-float v12, v8, v12

    .line 103
    .local v12, "deltaY1":F
    mul-float v13, v9, v9

    mul-float v14, v10, v10

    add-float/2addr v13, v14

    .line 104
    .local v13, "squaredDistance0":F
    mul-float v14, v11, v11

    mul-float v15, v12, v12

    add-float/2addr v14, v15

    .line 112
    .local v14, "squaredDistance1":F
    iget v15, v0, Lcom/termux/x11/input/SwipeDetector;->mTouchSlopSquare:I

    int-to-float v15, v15

    cmpl-float v15, v13, v15

    if-lez v15, :cond_4

    const/4 v15, 0x1

    goto :goto_0

    :cond_4
    const/4 v15, 0x0

    .line 113
    .local v15, "finger0Moved":Z
    :goto_0
    iget v3, v0, Lcom/termux/x11/input/SwipeDetector;->mTouchSlopSquare:I

    int-to-float v3, v3

    cmpl-float v3, v14, v3

    if-lez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 115
    .local v3, "finger1Moved":Z
    :goto_1
    if-nez v15, :cond_6

    if-eqz v3, :cond_8

    :cond_6
    if-eqz v15, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    if-nez v15, :cond_9

    if-eqz v3, :cond_9

    .line 116
    :cond_8
    return-void

    .line 123
    :cond_9
    mul-float v16, v9, v11

    mul-float v17, v10, v12

    add-float v16, v16, v17

    .line 124
    .local v16, "scalarProduct":F
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_a

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    :goto_2
    iput-boolean v6, v0, Lcom/termux/x11/input/SwipeDetector;->mInSwipe:Z

    .line 125
    return-void
.end method

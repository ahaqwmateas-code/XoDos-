.class public Lcom/termux/floatball/runner/ScrollRunner;
.super Ljava/lang/Object;
.source "ScrollRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private lastX:I

.field private lastY:I

.field private mCarrier:Lcom/termux/floatball/runner/ICarrier;

.field private mDuration:I

.field private mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Lcom/termux/floatball/runner/ICarrier;)V
    .locals 3
    .param p1, "carrier"    # Lcom/termux/floatball/runner/ICarrier;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0xfa

    iput v0, p0, Lcom/termux/floatball/runner/ScrollRunner;->mDuration:I

    .line 14
    iput-object p1, p0, Lcom/termux/floatball/runner/ScrollRunner;->mCarrier:Lcom/termux/floatball/runner/ICarrier;

    .line 15
    new-instance v0, Landroid/widget/Scroller;

    invoke-interface {p1}, Lcom/termux/floatball/runner/ICarrier;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/termux/floatball/runner/ScrollRunner;->mScroller:Landroid/widget/Scroller;

    .line 16
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/termux/floatball/runner/ScrollRunner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public run()V
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/termux/floatball/runner/ScrollRunner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/termux/floatball/runner/ScrollRunner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 47
    .local v0, "currentX":I
    iget-object v1, p0, Lcom/termux/floatball/runner/ScrollRunner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 48
    .local v1, "currentY":I
    iget-object v2, p0, Lcom/termux/floatball/runner/ScrollRunner;->mCarrier:Lcom/termux/floatball/runner/ICarrier;

    iget v3, p0, Lcom/termux/floatball/runner/ScrollRunner;->lastX:I

    iget v4, p0, Lcom/termux/floatball/runner/ScrollRunner;->lastY:I

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/termux/floatball/runner/ICarrier;->onMove(IIII)V

    .line 49
    iget-object v2, p0, Lcom/termux/floatball/runner/ScrollRunner;->mCarrier:Lcom/termux/floatball/runner/ICarrier;

    invoke-interface {v2, p0}, Lcom/termux/floatball/runner/ICarrier;->post(Ljava/lang/Runnable;)Z

    .line 50
    iput v0, p0, Lcom/termux/floatball/runner/ScrollRunner;->lastX:I

    .line 51
    iput v1, p0, Lcom/termux/floatball/runner/ScrollRunner;->lastY:I

    .line 52
    .end local v0    # "currentX":I
    .end local v1    # "currentY":I
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/termux/floatball/runner/ScrollRunner;->mCarrier:Lcom/termux/floatball/runner/ICarrier;

    invoke-interface {v0, p0}, Lcom/termux/floatball/runner/ICarrier;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 54
    iget-object v0, p0, Lcom/termux/floatball/runner/ScrollRunner;->mCarrier:Lcom/termux/floatball/runner/ICarrier;

    invoke-interface {v0}, Lcom/termux/floatball/runner/ICarrier;->onDone()V

    .line 56
    :goto_0
    return-void
.end method

.method public start(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 19
    iget v0, p0, Lcom/termux/floatball/runner/ScrollRunner;->mDuration:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/termux/floatball/runner/ScrollRunner;->start(III)V

    .line 20
    return-void
.end method

.method public start(III)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .line 23
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/termux/floatball/runner/ScrollRunner;->start(IIIII)V

    .line 24
    return-void
.end method

.method public start(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 27
    iget v5, p0, Lcom/termux/floatball/runner/ScrollRunner;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/termux/floatball/runner/ScrollRunner;->start(IIIII)V

    .line 28
    return-void
.end method

.method public start(IIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .line 31
    iput p5, p0, Lcom/termux/floatball/runner/ScrollRunner;->mDuration:I

    .line 32
    iget-object v0, p0, Lcom/termux/floatball/runner/ScrollRunner;->mScroller:Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 33
    iget-object v0, p0, Lcom/termux/floatball/runner/ScrollRunner;->mCarrier:Lcom/termux/floatball/runner/ICarrier;

    invoke-interface {v0, p0}, Lcom/termux/floatball/runner/ICarrier;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 34
    iget-object v0, p0, Lcom/termux/floatball/runner/ScrollRunner;->mCarrier:Lcom/termux/floatball/runner/ICarrier;

    invoke-interface {v0, p0}, Lcom/termux/floatball/runner/ICarrier;->post(Ljava/lang/Runnable;)Z

    .line 35
    iput p1, p0, Lcom/termux/floatball/runner/ScrollRunner;->lastX:I

    .line 36
    iput p2, p0, Lcom/termux/floatball/runner/ScrollRunner;->lastY:I

    .line 37
    return-void
.end method

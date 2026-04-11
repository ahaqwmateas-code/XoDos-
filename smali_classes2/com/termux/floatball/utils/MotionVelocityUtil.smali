.class public Lcom/termux/floatball/utils/MotionVelocityUtil;
.super Ljava/lang/Object;
.source "MotionVelocityUtil.java"


# instance fields
.field private mMaxVelocity:I

.field private mMinVelocity:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/termux/floatball/utils/MotionVelocityUtil;->mMaxVelocity:I

    .line 15
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/termux/floatball/utils/MotionVelocityUtil;->mMinVelocity:I

    .line 16
    return-void
.end method


# virtual methods
.method public acquireVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 28
    iget-object v0, p0, Lcom/termux/floatball/utils/MotionVelocityUtil;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/floatball/utils/MotionVelocityUtil;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/termux/floatball/utils/MotionVelocityUtil;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 32
    return-void
.end method

.method public computeCurrentVelocity()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/termux/floatball/utils/MotionVelocityUtil;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/termux/floatball/utils/MotionVelocityUtil;->mMaxVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 36
    return-void
.end method

.method public getMinVelocity()I
    .locals 2

    .line 19
    iget v0, p0, Lcom/termux/floatball/utils/MotionVelocityUtil;->mMinVelocity:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/termux/floatball/utils/MotionVelocityUtil;->mMinVelocity:I

    :goto_0
    return v1
.end method

.method public getXVelocity()F
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/termux/floatball/utils/MotionVelocityUtil;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/termux/floatball/utils/MotionVelocityUtil;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0
.end method

.method public releaseVelocityTracker()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/termux/floatball/utils/MotionVelocityUtil;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/termux/floatball/utils/MotionVelocityUtil;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 67
    iget-object v0, p0, Lcom/termux/floatball/utils/MotionVelocityUtil;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/floatball/utils/MotionVelocityUtil;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 70
    :cond_0
    return-void
.end method

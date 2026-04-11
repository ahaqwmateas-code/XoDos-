.class public Lcom/termux/floatball/widget/StatusBarView;
.super Landroid/view/View;
.source "StatusBarView.java"


# instance fields
.field private isAdded:Z

.field private layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mContext:Landroid/content/Context;

.field private mFloatBallManager:Lcom/termux/floatball/FloatBallManager;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/termux/floatball/FloatBallManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "floatBallManager"    # Lcom/termux/floatball/FloatBallManager;

    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lcom/termux/floatball/widget/StatusBarView$1;

    invoke-direct {v0, p0}, Lcom/termux/floatball/widget/StatusBarView$1;-><init>(Lcom/termux/floatball/widget/StatusBarView;)V

    iput-object v0, p0, Lcom/termux/floatball/widget/StatusBarView;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 28
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/termux/floatball/widget/StatusBarView;->setBackgroundColor(I)V

    .line 29
    iput-object p1, p0, Lcom/termux/floatball/widget/StatusBarView;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/termux/floatball/widget/StatusBarView;->mFloatBallManager:Lcom/termux/floatball/FloatBallManager;

    .line 31
    invoke-static {p1}, Lcom/termux/floatball/FloatBallUtil;->getStatusBarLayoutParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/floatball/widget/StatusBarView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/termux/floatball/widget/StatusBarView;)Lcom/termux/floatball/FloatBallManager;
    .locals 1
    .param p0, "x0"    # Lcom/termux/floatball/widget/StatusBarView;

    .line 13
    iget-object v0, p0, Lcom/termux/floatball/widget/StatusBarView;->mFloatBallManager:Lcom/termux/floatball/FloatBallManager;

    return-object v0
.end method


# virtual methods
.method public attachToWindow(Landroid/view/WindowManager;)V
    .locals 1
    .param p1, "wm"    # Landroid/view/WindowManager;

    .line 35
    iget-boolean v0, p0, Lcom/termux/floatball/widget/StatusBarView;->isAdded:Z

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/termux/floatball/widget/StatusBarView;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/termux/floatball/widget/StatusBarView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 37
    iget-object v0, p0, Lcom/termux/floatball/widget/StatusBarView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/floatball/widget/StatusBarView;->isAdded:Z

    .line 40
    :cond_0
    return-void
.end method

.method public detachFromWindow(Landroid/view/WindowManager;)V
    .locals 1
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .line 43
    iget-boolean v0, p0, Lcom/termux/floatball/widget/StatusBarView;->isAdded:Z

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/floatball/widget/StatusBarView;->isAdded:Z

    .line 45
    iget-object v0, p0, Lcom/termux/floatball/widget/StatusBarView;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/termux/floatball/widget/StatusBarView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/termux/floatball/widget/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 51
    :goto_0
    return-void
.end method

.method public getStatusBarHeight()I
    .locals 4

    .line 59
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 60
    .local v1, "windowParams":[I
    new-array v0, v0, [I

    .line 61
    .local v0, "screenParams":[I
    invoke-virtual {p0, v1}, Lcom/termux/floatball/widget/StatusBarView;->getLocationInWindow([I)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/termux/floatball/widget/StatusBarView;->getLocationOnScreen([I)V

    .line 63
    const/4 v2, 0x1

    aget v3, v0, v2

    aget v2, v1, v2

    sub-int/2addr v3, v2

    return v3
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 55
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 56
    return-void
.end method

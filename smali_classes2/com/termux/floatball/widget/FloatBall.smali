.class public Lcom/termux/floatball/widget/FloatBall;
.super Landroid/widget/FrameLayout;
.source "FloatBall.java"

# interfaces
.implements Lcom/termux/floatball/runner/ICarrier;


# instance fields
.field private floatBallManager:Lcom/termux/floatball/FloatBallManager;

.field private imageView:Landroid/widget/ImageView;

.field private isAdded:Z

.field private isClick:Z

.field private isFirst:Z

.field private locationService:Lcom/termux/floatball/LocationService;

.field private mConfig:Lcom/termux/floatball/widget/FloatBallCfg;

.field private mDownX:I

.field private mDownY:I

.field private mHideHalfLater:Z

.field private mLastX:I

.field private mLastY:I

.field private mLayoutChanged:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mRunner:Lcom/termux/floatball/runner/ScrollRunner;

.field private mSize:I

.field private mSleepRunnable:Lcom/termux/floatball/runner/OnceRunnable;

.field private mSleepX:I

.field private mTouchSlop:I

.field private mVelocity:Lcom/termux/floatball/utils/MotionVelocityUtil;

.field private mVelocityX:I

.field private mVelocityY:I

.field private sleep:Z

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/termux/floatball/FloatBallManager;Lcom/termux/floatball/widget/FloatBallCfg;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "floatBallManager"    # Lcom/termux/floatball/FloatBallManager;
    .param p3, "config"    # Lcom/termux/floatball/widget/FloatBallCfg;

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->isFirst:Z

    .line 32
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/termux/floatball/widget/FloatBall;->isAdded:Z

    .line 43
    iput-boolean v1, p0, Lcom/termux/floatball/widget/FloatBall;->sleep:Z

    .line 45
    iput-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->mHideHalfLater:Z

    .line 46
    iput-boolean v1, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutChanged:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/floatball/widget/FloatBall;->mSleepX:I

    .line 49
    new-instance v0, Lcom/termux/floatball/widget/FloatBall$1;

    invoke-direct {v0, p0}, Lcom/termux/floatball/widget/FloatBall$1;-><init>(Lcom/termux/floatball/widget/FloatBall;)V

    iput-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mSleepRunnable:Lcom/termux/floatball/runner/OnceRunnable;

    .line 63
    iput-object p2, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    .line 64
    iput-object p3, p0, Lcom/termux/floatball/widget/FloatBall;->mConfig:Lcom/termux/floatball/widget/FloatBallCfg;

    .line 65
    invoke-direct {p0, p1}, Lcom/termux/floatball/widget/FloatBall;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/termux/floatball/widget/FloatBall;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/floatball/widget/FloatBall;

    .line 25
    iget-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->mHideHalfLater:Z

    return v0
.end method

.method static synthetic access$100(Lcom/termux/floatball/widget/FloatBall;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/floatball/widget/FloatBall;

    .line 25
    iget-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->sleep:Z

    return v0
.end method

.method static synthetic access$102(Lcom/termux/floatball/widget/FloatBall;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/termux/floatball/widget/FloatBall;
    .param p1, "x1"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/termux/floatball/widget/FloatBall;->sleep:Z

    return p1
.end method

.method static synthetic access$200(Lcom/termux/floatball/widget/FloatBall;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/floatball/widget/FloatBall;

    .line 25
    iget-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->isAdded:Z

    return v0
.end method

.method static synthetic access$300(Lcom/termux/floatball/widget/FloatBall;)Lcom/termux/floatball/FloatBallManager;
    .locals 1
    .param p0, "x0"    # Lcom/termux/floatball/widget/FloatBall;

    .line 25
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/termux/floatball/widget/FloatBall;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/floatball/widget/FloatBall;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/termux/floatball/widget/FloatBall;->moveToEdge(ZZ)V

    return-void
.end method

.method static synthetic access$502(Lcom/termux/floatball/widget/FloatBall;I)I
    .locals 0
    .param p0, "x0"    # Lcom/termux/floatball/widget/FloatBall;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/termux/floatball/widget/FloatBall;->mSleepX:I

    return p1
.end method

.method static synthetic access$600(Lcom/termux/floatball/widget/FloatBall;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/termux/floatball/widget/FloatBall;

    .line 25
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private getScrollDuration(I)I
    .locals 2
    .param p1, "distance"    # I

    .line 314
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p1

    mul-float v1, v1, v0

    const/high16 v0, 0x44480000    # 800.0f

    div-float/2addr v1, v0

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->imageView:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mConfig:Lcom/termux/floatball/widget/FloatBallCfg;

    iget-object v0, v0, Lcom/termux/floatball/widget/FloatBallCfg;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 71
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/termux/floatball/widget/FloatBall;->mConfig:Lcom/termux/floatball/widget/FloatBallCfg;

    iget v1, v1, Lcom/termux/floatball/widget/FloatBallCfg;->mSize:I

    iput v1, p0, Lcom/termux/floatball/widget/FloatBall;->mSize:I

    .line 72
    iget-object v1, p0, Lcom/termux/floatball/widget/FloatBall;->imageView:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/termux/floatball/utils/Util;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v1, p0, Lcom/termux/floatball/widget/FloatBall;->imageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/termux/floatball/widget/FloatBall;->mSize:I

    iget v4, p0, Lcom/termux/floatball/widget/FloatBall;->mSize:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/termux/floatball/widget/FloatBall;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/termux/floatball/widget/FloatBall;->initLayoutParams(Landroid/content/Context;)V

    .line 75
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/termux/floatball/widget/FloatBall;->mTouchSlop:I

    .line 76
    new-instance v1, Lcom/termux/floatball/runner/ScrollRunner;

    invoke-direct {v1, p0}, Lcom/termux/floatball/runner/ScrollRunner;-><init>(Lcom/termux/floatball/runner/ICarrier;)V

    iput-object v1, p0, Lcom/termux/floatball/widget/FloatBall;->mRunner:Lcom/termux/floatball/runner/ScrollRunner;

    .line 77
    new-instance v1, Lcom/termux/floatball/utils/MotionVelocityUtil;

    invoke-direct {v1, p1}, Lcom/termux/floatball/utils/MotionVelocityUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/termux/floatball/widget/FloatBall;->mVelocity:Lcom/termux/floatball/utils/MotionVelocityUtil;

    .line 78
    return-void
.end method

.method private initLayoutParams(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-static {p1}, Lcom/termux/floatball/FloatBallUtil;->getLayoutParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 82
    return-void
.end method

.method private location(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 147
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mConfig:Lcom/termux/floatball/widget/FloatBallCfg;

    iget-object v0, v0, Lcom/termux/floatball/widget/FloatBallCfg;->mGravity:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    .line 148
    .local v0, "cfgGravity":Lcom/termux/floatball/widget/FloatBallCfg$Gravity;
    iget-object v1, p0, Lcom/termux/floatball/widget/FloatBall;->mConfig:Lcom/termux/floatball/widget/FloatBallCfg;

    iget-boolean v1, v1, Lcom/termux/floatball/widget/FloatBallCfg;->mHideHalfLater:Z

    iput-boolean v1, p0, Lcom/termux/floatball/widget/FloatBall;->mHideHalfLater:Z

    .line 149
    invoke-virtual {v0}, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->getGravity()I

    move-result v1

    .line 152
    .local v1, "gravity":I
    const/4 v2, 0x0

    .line 153
    .local v2, "topLimit":I
    iget-object v3, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget v3, v3, Lcom/termux/floatball/FloatBallManager;->mScreenHeight:I

    sub-int/2addr v3, p2

    .line 154
    .local v3, "bottomLimit":I
    iget-object v4, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    invoke-virtual {v4}, Lcom/termux/floatball/FloatBallManager;->getStatusBarHeight()I

    move-result v4

    .line 155
    .local v4, "statusBarHeight":I
    and-int/lit8 v5, v1, 0x3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 156
    const/4 v5, 0x0

    .local v5, "x":I
    goto :goto_0

    .line 158
    .end local v5    # "x":I
    :cond_0
    iget-object v5, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget v5, v5, Lcom/termux/floatball/FloatBallManager;->mScreenWidth:I

    sub-int/2addr v5, p1

    .line 160
    .restart local v5    # "x":I
    :goto_0
    and-int/lit8 v6, v1, 0x30

    const/16 v7, 0x30

    const/4 v8, 0x2

    if-ne v6, v7, :cond_1

    .line 161
    move v6, v2

    .local v6, "y":I
    goto :goto_1

    .line 162
    .end local v6    # "y":I
    :cond_1
    and-int/lit8 v6, v1, 0x50

    const/16 v7, 0x50

    if-ne v6, v7, :cond_2

    .line 163
    iget-object v6, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget v6, v6, Lcom/termux/floatball/FloatBallManager;->mScreenHeight:I

    sub-int/2addr v6, p2

    sub-int/2addr v6, v4

    .restart local v6    # "y":I
    goto :goto_1

    .line 165
    .end local v6    # "y":I
    :cond_2
    iget-object v6, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget v6, v6, Lcom/termux/floatball/FloatBallManager;->mScreenHeight:I

    div-int/2addr v6, v8

    div-int/lit8 v7, p2, 0x2

    sub-int/2addr v6, v7

    sub-int/2addr v6, v4

    .line 167
    .restart local v6    # "y":I
    :goto_1
    iget-object v7, p0, Lcom/termux/floatball/widget/FloatBall;->mConfig:Lcom/termux/floatball/widget/FloatBallCfg;

    iget v7, v7, Lcom/termux/floatball/widget/FloatBallCfg;->mOffsetY:I

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/termux/floatball/widget/FloatBall;->mConfig:Lcom/termux/floatball/widget/FloatBallCfg;

    iget v7, v7, Lcom/termux/floatball/widget/FloatBallCfg;->mOffsetY:I

    add-int/2addr v7, v6

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_2
    move v6, v7

    .line 168
    if-gez v6, :cond_4

    move v6, v2

    .line 169
    :cond_4
    if-le v6, v3, :cond_5

    .line 170
    move v6, v2

    .line 171
    :cond_5
    iget-object v7, p0, Lcom/termux/floatball/widget/FloatBall;->locationService:Lcom/termux/floatball/LocationService;

    if-eqz v7, :cond_6

    .line 172
    iget-object v7, p0, Lcom/termux/floatball/widget/FloatBall;->locationService:Lcom/termux/floatball/LocationService;

    invoke-interface {v7}, Lcom/termux/floatball/LocationService;->onRestoreLocation()[I

    move-result-object v7

    .line 173
    .local v7, "location":[I
    array-length v9, v7

    if-ne v9, v8, :cond_6

    .line 174
    const/4 v8, 0x0

    aget v8, v7, v8

    .line 175
    .local v8, "locationX":I
    const/4 v9, 0x1

    aget v9, v7, v9

    .line 176
    .local v9, "locationY":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_6

    if-eq v9, v10, :cond_6

    .line 177
    invoke-virtual {p0, v8, v9}, Lcom/termux/floatball/widget/FloatBall;->onLocation(II)V

    .line 178
    return-void

    .line 182
    .end local v7    # "location":[I
    .end local v8    # "locationX":I
    .end local v9    # "locationY":I
    :cond_6
    invoke-virtual {p0, v5, v6}, Lcom/termux/floatball/widget/FloatBall;->onLocation(II)V

    .line 183
    return-void
.end method

.method private moveTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 346
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v2, p1, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 347
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v2, p2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 348
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    :cond_0
    return-void
.end method

.method private moveToEdge(ZZ)V
    .locals 9
    .param p1, "smooth"    # Z
    .param p2, "forceSleep"    # Z

    .line 294
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget v0, v0, Lcom/termux/floatball/FloatBallManager;->mScreenWidth:I

    .line 295
    .local v0, "screenWidth":I
    invoke-virtual {p0}, Lcom/termux/floatball/widget/FloatBall;->getWidth()I

    move-result v1

    .line 296
    .local v1, "width":I
    div-int/lit8 v2, v1, 0x2

    .line 297
    .local v2, "halfWidth":I
    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v3, v2

    .line 299
    .local v3, "centerX":I
    iget-object v4, p0, Lcom/termux/floatball/widget/FloatBall;->mVelocity:Lcom/termux/floatball/utils/MotionVelocityUtil;

    invoke-virtual {v4}, Lcom/termux/floatball/utils/MotionVelocityUtil;->getMinVelocity()I

    move-result v4

    .line 300
    .local v4, "minVelocity":I
    iget-object v5, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v5, v3, :cond_4

    .line 301
    if-nez p2, :cond_2

    iget v5, p0, Lcom/termux/floatball/widget/FloatBall;->mVelocityX:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v4, :cond_0

    iget v5, p0, Lcom/termux/floatball/widget/FloatBall;->mVelocityX:I

    if-ltz v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :cond_2
    :goto_0
    iput-boolean v6, p0, Lcom/termux/floatball/widget/FloatBall;->sleep:Z

    .line 302
    iget-boolean v5, p0, Lcom/termux/floatball/widget/FloatBall;->sleep:Z

    if-eqz v5, :cond_3

    neg-int v7, v2

    :cond_3
    move v5, v7

    .local v5, "destX":I
    goto :goto_2

    .line 304
    .end local v5    # "destX":I
    :cond_4
    if-nez p2, :cond_7

    iget v5, p0, Lcom/termux/floatball/widget/FloatBall;->mVelocityX:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v4, :cond_5

    iget v5, p0, Lcom/termux/floatball/widget/FloatBall;->mVelocityX:I

    if-gtz v5, :cond_7

    :cond_5
    iget-object v5, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v8, v0, v1

    if-le v5, v8, :cond_6

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :cond_7
    :goto_1
    iput-boolean v6, p0, Lcom/termux/floatball/widget/FloatBall;->sleep:Z

    .line 305
    iget-boolean v5, p0, Lcom/termux/floatball/widget/FloatBall;->sleep:Z

    if-eqz v5, :cond_8

    sub-int v5, v0, v2

    goto :goto_2

    :cond_8
    sub-int v5, v0, v1

    .line 307
    .restart local v5    # "destX":I
    :goto_2
    iget-boolean v6, p0, Lcom/termux/floatball/widget/FloatBall;->sleep:Z

    if-eqz v6, :cond_9

    .line 308
    iput v5, p0, Lcom/termux/floatball/widget/FloatBall;->mSleepX:I

    .line 310
    :cond_9
    invoke-direct {p0, p1, v5}, Lcom/termux/floatball/widget/FloatBall;->moveToX(ZI)V

    .line 311
    return-void
.end method

.method private moveToX(ZI)V
    .locals 7
    .param p1, "smooth"    # Z
    .param p2, "destX"    # I

    .line 263
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    invoke-virtual {v0}, Lcom/termux/floatball/FloatBallManager;->getStatusBarHeight()I

    move-result v0

    .line 264
    .local v0, "statusBarHeight":I
    iget-object v1, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget v1, v1, Lcom/termux/floatball/FloatBallManager;->mScreenHeight:I

    sub-int/2addr v1, v0

    .line 265
    .local v1, "screenHeight":I
    invoke-virtual {p0}, Lcom/termux/floatball/widget/FloatBall;->getHeight()I

    move-result v2

    .line 266
    .local v2, "height":I
    const/4 v3, 0x0

    .line 267
    .local v3, "destY":I
    iget-object v4, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez v4, :cond_0

    .line 268
    iget-object v4, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    rsub-int/lit8 v3, v4, 0x0

    goto :goto_0

    .line 269
    :cond_0
    iget-object v4, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v5, v1, v2

    if-le v4, v5, :cond_1

    .line 270
    sub-int v4, v1, v2

    iget-object v5, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v3, v4, v5

    .line 272
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 273
    iget-object v4, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, p2, v4

    .line 274
    .local v4, "dx":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/termux/floatball/widget/FloatBall;->getScrollDuration(I)I

    move-result v5

    .line 275
    .local v5, "duration":I
    iget-object v6, p0, Lcom/termux/floatball/widget/FloatBall;->mRunner:Lcom/termux/floatball/runner/ScrollRunner;

    invoke-virtual {v6, v4, v3, v5}, Lcom/termux/floatball/runner/ScrollRunner;->start(III)V

    .line 276
    .end local v4    # "dx":I
    .end local v5    # "duration":I
    goto :goto_1

    .line 277
    :cond_2
    iget-object v4, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, p2, v4

    invoke-direct {p0, v4, v3}, Lcom/termux/floatball/widget/FloatBall;->onMove(II)V

    .line 278
    invoke-virtual {p0}, Lcom/termux/floatball/widget/FloatBall;->postSleepRunnable()V

    .line 280
    :goto_1
    return-void
.end method

.method private onClick()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget-object v1, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Lcom/termux/floatball/FloatBallManager;->floatBallX:I

    .line 359
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget-object v1, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Lcom/termux/floatball/FloatBallManager;->floatBallY:I

    .line 360
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    invoke-virtual {v0}, Lcom/termux/floatball/FloatBallManager;->onFloatBallClick()V

    .line 361
    return-void
.end method

.method private onMove(II)V
    .locals 2
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .line 318
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 319
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 320
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    :cond_0
    return-void
.end method

.method private removeSleepRunnable()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mSleepRunnable:Lcom/termux/floatball/runner/OnceRunnable;

    invoke-virtual {v0, p0}, Lcom/termux/floatball/runner/OnceRunnable;->removeSelf(Landroid/view/View;)V

    .line 365
    return-void
.end method

.method private touchDown(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 221
    iput p1, p0, Lcom/termux/floatball/widget/FloatBall;->mDownX:I

    .line 222
    iput p2, p0, Lcom/termux/floatball/widget/FloatBall;->mDownY:I

    .line 223
    iget v0, p0, Lcom/termux/floatball/widget/FloatBall;->mDownX:I

    iput v0, p0, Lcom/termux/floatball/widget/FloatBall;->mLastX:I

    .line 224
    iget v0, p0, Lcom/termux/floatball/widget/FloatBall;->mDownY:I

    iput v0, p0, Lcom/termux/floatball/widget/FloatBall;->mLastY:I

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->isClick:Z

    .line 226
    invoke-direct {p0}, Lcom/termux/floatball/widget/FloatBall;->removeSleepRunnable()V

    .line 227
    return-void
.end method

.method private touchMove(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 230
    iget v0, p0, Lcom/termux/floatball/widget/FloatBall;->mDownX:I

    sub-int v0, p1, v0

    .line 231
    .local v0, "totalDeltaX":I
    iget v1, p0, Lcom/termux/floatball/widget/FloatBall;->mDownY:I

    sub-int v1, p2, v1

    .line 232
    .local v1, "totalDeltaY":I
    iget v2, p0, Lcom/termux/floatball/widget/FloatBall;->mLastX:I

    sub-int v2, p1, v2

    .line 233
    .local v2, "deltaX":I
    iget v3, p0, Lcom/termux/floatball/widget/FloatBall;->mLastY:I

    sub-int v3, p2, v3

    .line 234
    .local v3, "deltaY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/termux/floatball/widget/FloatBall;->mTouchSlop:I

    if-gt v4, v5, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/termux/floatball/widget/FloatBall;->mTouchSlop:I

    if-le v4, v5, :cond_1

    .line 235
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/termux/floatball/widget/FloatBall;->isClick:Z

    .line 237
    :cond_1
    iput p1, p0, Lcom/termux/floatball/widget/FloatBall;->mLastX:I

    .line 238
    iput p2, p0, Lcom/termux/floatball/widget/FloatBall;->mLastY:I

    .line 239
    iget-boolean v4, p0, Lcom/termux/floatball/widget/FloatBall;->isClick:Z

    if-nez v4, :cond_2

    .line 240
    invoke-direct {p0, v2, v3}, Lcom/termux/floatball/widget/FloatBall;->onMove(II)V

    .line 242
    :cond_2
    return-void
.end method

.method private touchUp()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mVelocity:Lcom/termux/floatball/utils/MotionVelocityUtil;

    invoke-virtual {v0}, Lcom/termux/floatball/utils/MotionVelocityUtil;->computeCurrentVelocity()V

    .line 246
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mVelocity:Lcom/termux/floatball/utils/MotionVelocityUtil;

    invoke-virtual {v0}, Lcom/termux/floatball/utils/MotionVelocityUtil;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/termux/floatball/widget/FloatBall;->mVelocityX:I

    .line 247
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mVelocity:Lcom/termux/floatball/utils/MotionVelocityUtil;

    invoke-virtual {v0}, Lcom/termux/floatball/utils/MotionVelocityUtil;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/termux/floatball/widget/FloatBall;->mVelocityY:I

    .line 248
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mVelocity:Lcom/termux/floatball/utils/MotionVelocityUtil;

    invoke-virtual {v0}, Lcom/termux/floatball/utils/MotionVelocityUtil;->releaseVelocityTracker()V

    .line 249
    iget-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->sleep:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/termux/floatball/widget/FloatBall;->wakeUp()V

    goto :goto_0

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->isClick:Z

    if-eqz v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/termux/floatball/widget/FloatBall;->onClick()V

    goto :goto_0

    .line 255
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/termux/floatball/widget/FloatBall;->moveToEdge(ZZ)V

    .line 258
    :goto_0
    iput v1, p0, Lcom/termux/floatball/widget/FloatBall;->mVelocityX:I

    .line 259
    iput v1, p0, Lcom/termux/floatball/widget/FloatBall;->mVelocityY:I

    .line 260
    return-void
.end method

.method private wakeUp()V
    .locals 6

    .line 283
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget v0, v0, Lcom/termux/floatball/FloatBallManager;->mScreenWidth:I

    .line 284
    .local v0, "screenWidth":I
    invoke-virtual {p0}, Lcom/termux/floatball/widget/FloatBall;->getWidth()I

    move-result v1

    .line 285
    .local v1, "width":I
    div-int/lit8 v2, v1, 0x2

    .line 286
    .local v2, "halfWidth":I
    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v3, v2

    .line 288
    .local v3, "centerX":I
    iget-object v4, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x0

    if-ge v4, v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    sub-int v4, v0, v1

    .line 289
    .local v4, "destX":I
    :goto_0
    iput-boolean v5, p0, Lcom/termux/floatball/widget/FloatBall;->sleep:Z

    .line 290
    const/4 v5, 0x1

    invoke-direct {p0, v5, v4}, Lcom/termux/floatball/widget/FloatBall;->moveToX(ZI)V

    .line 291
    return-void
.end method


# virtual methods
.method public attachToWindow(Landroid/view/WindowManager;)V
    .locals 1
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .line 93
    iput-object p1, p0, Lcom/termux/floatball/widget/FloatBall;->windowManager:Landroid/view/WindowManager;

    .line 94
    iget-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->isAdded:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->isAdded:Z

    .line 98
    :cond_0
    return-void
.end method

.method public detachFromWindow(Landroid/view/WindowManager;)V
    .locals 1
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->windowManager:Landroid/view/WindowManager;

    .line 102
    iget-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->isAdded:Z

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/termux/floatball/widget/FloatBall;->removeSleepRunnable()V

    .line 104
    invoke-virtual {p0}, Lcom/termux/floatball/widget/FloatBall;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 109
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->isAdded:Z

    .line 110
    iput-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->sleep:Z

    .line 112
    :cond_1
    return-void
.end method

.method public getSize()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/termux/floatball/widget/FloatBall;->mSize:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 187
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutChanged:Z

    .line 189
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    invoke-virtual {v0, p1}, Lcom/termux/floatball/FloatBallManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/termux/floatball/widget/FloatBall;->moveToEdge(ZZ)V

    .line 191
    invoke-virtual {p0}, Lcom/termux/floatball/widget/FloatBall;->postSleepRunnable()V

    .line 192
    return-void
.end method

.method public onDone()V
    .locals 3

    .line 339
    invoke-virtual {p0}, Lcom/termux/floatball/widget/FloatBall;->postSleepRunnable()V

    .line 340
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->locationService:Lcom/termux/floatball/LocationService;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->locationService:Lcom/termux/floatball/LocationService;

    iget-object v1, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v0, v1, v2}, Lcom/termux/floatball/LocationService;->onLocationChanged(II)V

    .line 343
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 141
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 142
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget-object v1, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Lcom/termux/floatball/FloatBallManager;->floatBallX:I

    .line 143
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget-object v1, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Lcom/termux/floatball/FloatBallManager;->floatBallY:I

    .line 144
    return-void
.end method

.method public onLayoutChange()V
    .locals 1

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutChanged:Z

    .line 196
    invoke-virtual {p0}, Lcom/termux/floatball/widget/FloatBall;->requestLayout()V

    .line 197
    return-void
.end method

.method public onLocation(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 326
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 327
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 328
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 116
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 117
    invoke-virtual {p0}, Lcom/termux/floatball/widget/FloatBall;->getMeasuredHeight()I

    move-result v0

    .line 118
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/termux/floatball/widget/FloatBall;->getMeasuredWidth()I

    move-result v1

    .line 120
    .local v1, "width":I
    iget-object v2, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 121
    .local v2, "curX":I
    iget-boolean v3, p0, Lcom/termux/floatball/widget/FloatBall;->sleep:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/termux/floatball/widget/FloatBall;->mSleepX:I

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/termux/floatball/widget/FloatBall;->mRunner:Lcom/termux/floatball/runner/ScrollRunner;

    invoke-virtual {v3}, Lcom/termux/floatball/runner/ScrollRunner;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    iput-boolean v4, p0, Lcom/termux/floatball/widget/FloatBall;->sleep:Z

    .line 123
    invoke-virtual {p0}, Lcom/termux/floatball/widget/FloatBall;->postSleepRunnable()V

    .line 125
    :cond_0
    iget-object v3, p0, Lcom/termux/floatball/widget/FloatBall;->mRunner:Lcom/termux/floatball/runner/ScrollRunner;

    invoke-virtual {v3}, Lcom/termux/floatball/runner/ScrollRunner;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    iput-boolean v4, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutChanged:Z

    .line 128
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/termux/floatball/widget/FloatBall;->isFirst:Z

    if-nez v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutChanged:Z

    if-eqz v3, :cond_5

    .line 129
    :cond_3
    iget-boolean v3, p0, Lcom/termux/floatball/widget/FloatBall;->isFirst:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 130
    invoke-direct {p0, v1, v0}, Lcom/termux/floatball/widget/FloatBall;->location(II)V

    goto :goto_0

    .line 132
    :cond_4
    iget-boolean v3, p0, Lcom/termux/floatball/widget/FloatBall;->sleep:Z

    invoke-direct {p0, v4, v3}, Lcom/termux/floatball/widget/FloatBall;->moveToEdge(ZZ)V

    .line 134
    :goto_0
    iput-boolean v4, p0, Lcom/termux/floatball/widget/FloatBall;->isFirst:Z

    .line 135
    iput-boolean v4, p0, Lcom/termux/floatball/widget/FloatBall;->mLayoutChanged:Z

    .line 137
    :cond_5
    return-void
.end method

.method public onMove(IIII)V
    .locals 2
    .param p1, "lastX"    # I
    .param p2, "lastY"    # I
    .param p3, "curX"    # I
    .param p4, "curY"    # I

    .line 334
    sub-int v0, p3, p1

    sub-int v1, p4, p2

    invoke-direct {p0, v0, v1}, Lcom/termux/floatball/widget/FloatBall;->onMove(II)V

    .line 335
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 202
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 203
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 204
    .local v2, "y":I
    iget-object v3, p0, Lcom/termux/floatball/widget/FloatBall;->mVelocity:Lcom/termux/floatball/utils/MotionVelocityUtil;

    invoke-virtual {v3, p1}, Lcom/termux/floatball/utils/MotionVelocityUtil;->acquireVelocityTracker(Landroid/view/MotionEvent;)V

    .line 205
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 210
    :pswitch_0
    invoke-direct {p0, v1, v2}, Lcom/termux/floatball/widget/FloatBall;->touchMove(II)V

    .line 211
    goto :goto_0

    .line 214
    :pswitch_1
    invoke-direct {p0}, Lcom/termux/floatball/widget/FloatBall;->touchUp()V

    goto :goto_0

    .line 207
    :pswitch_2
    invoke-direct {p0, v1, v2}, Lcom/termux/floatball/widget/FloatBall;->touchDown(II)V

    .line 208
    nop

    .line 217
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 86
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 87
    if-nez p1, :cond_0

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/termux/floatball/widget/FloatBall;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    :cond_0
    return-void
.end method

.method public postSleepRunnable()V
    .locals 2

    .line 368
    iget-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->mHideHalfLater:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->sleep:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/termux/floatball/widget/FloatBall;->isAdded:Z

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall;->mSleepRunnable:Lcom/termux/floatball/runner/OnceRunnable;

    const/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1}, Lcom/termux/floatball/runner/OnceRunnable;->postDelaySelf(Landroid/view/View;I)V

    .line 371
    :cond_0
    return-void
.end method

.class public Lcom/termux/floatball/menu/FloatMenu;
.super Landroid/widget/FrameLayout;
.source "FloatMenu.java"


# static fields
.field public static final CENTER:I = 0x5

.field public static final CENTER_BOTTOM:I = 0x8

.field public static final CENTER_TOP:I = 0x2

.field public static final LEFT_BOTTOM:I = 0x7

.field public static final LEFT_CENTER:I = 0x4

.field public static final LEFT_TOP:I = 0x1

.field public static final RIGHT_BOTTOM:I = 0x9

.field public static final RIGHT_CENTER:I = 0x6

.field public static final RIGHT_TOP:I = 0x3


# instance fields
.field private floatBallManager:Lcom/termux/floatball/FloatBallManager;

.field private isAdded:Z

.field private mBallSize:I

.field private mConfig:Lcom/termux/floatball/menu/FloatMenuCfg;

.field private mDuration:I

.field private mIconView:Landroid/widget/ImageView;

.field private mItemSize:I

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mListenBackEvent:Z

.field private mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

.field private mPosition:I

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/termux/floatball/FloatBallManager;Lcom/termux/floatball/menu/FloatMenuCfg;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "floatBallManager"    # Lcom/termux/floatball/FloatBallManager;
    .param p3, "config"    # Lcom/termux/floatball/menu/FloatMenuCfg;

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v0, 0xfa

    iput v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mDuration:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/floatball/menu/FloatMenu;->isAdded:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mListenBackEvent:Z

    .line 52
    iput-object p2, p0, Lcom/termux/floatball/menu/FloatMenu;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    .line 53
    if-nez p3, :cond_0

    return-void

    .line 54
    :cond_0
    iput-object p3, p0, Lcom/termux/floatball/menu/FloatMenu;->mConfig:Lcom/termux/floatball/menu/FloatMenuCfg;

    .line 55
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mConfig:Lcom/termux/floatball/menu/FloatMenuCfg;

    iget v0, v0, Lcom/termux/floatball/menu/FloatMenuCfg;->mItemSize:I

    iput v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mItemSize:I

    .line 56
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mConfig:Lcom/termux/floatball/menu/FloatMenuCfg;

    iget v0, v0, Lcom/termux/floatball/menu/FloatMenuCfg;->mSize:I

    iput v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    .line 57
    invoke-direct {p0, p1}, Lcom/termux/floatball/menu/FloatMenu;->init(Landroid/content/Context;)V

    .line 58
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    iget v1, p0, Lcom/termux/floatball/menu/FloatMenu;->mItemSize:I

    invoke-virtual {v0, v1}, Lcom/termux/floatball/menu/MenuLayout;->setChildSize(I)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/termux/floatball/menu/FloatMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/floatball/menu/FloatMenu;

    .line 34
    iget v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/termux/floatball/menu/FloatMenu;)Lcom/termux/floatball/menu/MenuLayout;
    .locals 1
    .param p0, "x0"    # Lcom/termux/floatball/menu/FloatMenu;

    .line 34
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    return-object v0
.end method

.method private addControllLayout(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mIconView:Landroid/widget/ImageView;

    .line 129
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/termux/floatball/menu/FloatMenu;->mBallSize:I

    iget v2, p0, Lcom/termux/floatball/menu/FloatMenu;->mBallSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v0, "sublayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/termux/floatball/menu/FloatMenu;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/termux/floatball/menu/FloatMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    return-void
.end method

.method private addMenuLayout(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    new-instance v0, Lcom/termux/floatball/menu/MenuLayout;

    invoke-direct {v0, p1}, Lcom/termux/floatball/menu/MenuLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    .line 122
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    iget v2, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 123
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {p0, v1, v0}, Lcom/termux/floatball/menu/FloatMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v1, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/termux/floatball/menu/MenuLayout;->setVisibility(I)V

    .line 125
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    invoke-direct {p0, p1}, Lcom/termux/floatball/menu/FloatMenu;->initLayoutParams(Landroid/content/Context;)V

    .line 135
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 136
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 137
    invoke-direct {p0, p1}, Lcom/termux/floatball/menu/FloatMenu;->addMenuLayout(Landroid/content/Context;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/termux/floatball/menu/FloatMenu;->addControllLayout(Landroid/content/Context;)V

    .line 139
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mIconView:Landroid/widget/ImageView;

    new-instance v1, Lcom/termux/floatball/menu/FloatMenu$1;

    invoke-direct {v1, p0}, Lcom/termux/floatball/menu/FloatMenu$1;-><init>(Lcom/termux/floatball/menu/FloatMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-boolean v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mListenBackEvent:Z

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lcom/termux/floatball/menu/FloatMenu$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/termux/floatball/menu/FloatMenu$$ExternalSyntheticLambda1;-><init>(Lcom/termux/floatball/menu/FloatMenu;)V

    invoke-virtual {p0, v0}, Lcom/termux/floatball/menu/FloatMenu;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/floatball/menu/FloatMenu;->setFocusableInTouchMode(Z)V

    .line 158
    :cond_0
    return-void
.end method

.method private initLayoutParams(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    iget-boolean v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mListenBackEvent:Z

    invoke-static {p1, v0}, Lcom/termux/floatball/FloatBallUtil;->getLayoutParams(Landroid/content/Context;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 63
    return-void
.end method

.method private toggle(I)V
    .locals 2
    .param p1, "duration"    # I

    .line 173
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v0}, Lcom/termux/floatball/menu/MenuLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/floatball/menu/MenuLayout;->setVisibility(I)V

    .line 175
    invoke-virtual {p0}, Lcom/termux/floatball/menu/FloatMenu;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/termux/floatball/menu/FloatMenu;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/termux/floatball/menu/FloatMenu$2;

    invoke-direct {v1, p0, p1}, Lcom/termux/floatball/menu/FloatMenu$2;-><init>(Lcom/termux/floatball/menu/FloatMenu;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    iget v1, p0, Lcom/termux/floatball/menu/FloatMenu;->mPosition:I

    invoke-virtual {v0, v1, p1}, Lcom/termux/floatball/menu/MenuLayout;->switchState(II)V

    .line 186
    :goto_0
    return-void
.end method


# virtual methods
.method public addItem(Lcom/termux/floatball/menu/MenuItem;)V
    .locals 2
    .param p1, "menuItem"    # Lcom/termux/floatball/menu/MenuItem;

    .line 193
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mConfig:Lcom/termux/floatball/menu/FloatMenuCfg;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/termux/floatball/menu/FloatMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, "imageview":Landroid/widget/ImageView;
    iget-object v1, p1, Lcom/termux/floatball/menu/MenuItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v1, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v1, v0}, Lcom/termux/floatball/menu/MenuLayout;->addView(Landroid/view/View;)V

    .line 197
    new-instance v1, Lcom/termux/floatball/menu/FloatMenu$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/termux/floatball/menu/FloatMenu$$ExternalSyntheticLambda0;-><init>(Lcom/termux/floatball/menu/FloatMenu;Lcom/termux/floatball/menu/MenuItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void
.end method

.method public attachToWindow(Landroid/view/WindowManager;)V
    .locals 3
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .line 95
    iget-boolean v0, p0, Lcom/termux/floatball/menu/FloatMenu;->isAdded:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    invoke-virtual {v0}, Lcom/termux/floatball/FloatBallManager;->getBallSize()I

    move-result v0

    iput v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mBallSize:I

    .line 97
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/termux/floatball/menu/FloatMenu;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget v1, v1, Lcom/termux/floatball/FloatBallManager;->floatBallX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 98
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/termux/floatball/menu/FloatMenu;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget v1, v1, Lcom/termux/floatball/FloatBallManager;->floatBallY:I

    iget v2, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 99
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/termux/floatball/menu/FloatMenu;->computeMenuLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mPosition:I

    .line 100
    iget v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mPosition:I

    invoke-virtual {p0, v0}, Lcom/termux/floatball/menu/FloatMenu;->refreshPathMenu(I)V

    .line 101
    iget v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mDuration:I

    invoke-direct {p0, v0}, Lcom/termux/floatball/menu/FloatMenu;->toggle(I)V

    .line 102
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/floatball/menu/FloatMenu;->isAdded:Z

    .line 105
    :cond_0
    return-void
.end method

.method public closeMenu()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v0}, Lcom/termux/floatball/menu/MenuLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mDuration:I

    invoke-direct {p0, v0}, Lcom/termux/floatball/menu/FloatMenu;->toggle(I)V

    .line 164
    :cond_0
    return-void
.end method

.method public computeMenuLayout(Landroid/view/WindowManager$LayoutParams;)I
    .locals 8
    .param p1, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 272
    const/4 v0, 0x6

    .line 273
    .local v0, "position":I
    iget v1, p0, Lcom/termux/floatball/menu/FloatMenu;->mBallSize:I

    div-int/lit8 v1, v1, 0x2

    .line 274
    .local v1, "halfBallSize":I
    iget-object v2, p0, Lcom/termux/floatball/menu/FloatMenu;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget v2, v2, Lcom/termux/floatball/FloatBallManager;->mScreenWidth:I

    .line 275
    .local v2, "screenWidth":I
    iget-object v3, p0, Lcom/termux/floatball/menu/FloatMenu;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget v3, v3, Lcom/termux/floatball/FloatBallManager;->mScreenHeight:I

    .line 276
    .local v3, "screenHeight":I
    iget-object v4, p0, Lcom/termux/floatball/menu/FloatMenu;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget v4, v4, Lcom/termux/floatball/FloatBallManager;->floatBallY:I

    add-int/2addr v4, v1

    .line 278
    .local v4, "floatballCenterY":I
    iget-object v5, p0, Lcom/termux/floatball/menu/FloatMenu;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    iget v5, v5, Lcom/termux/floatball/FloatBallManager;->floatBallX:I

    .line 279
    .local v5, "wmX":I
    move v6, v4

    .line 281
    .local v6, "wmY":I
    div-int/lit8 v7, v2, 0x3

    if-gt v5, v7, :cond_2

    .line 283
    const/4 v5, 0x0

    .line 284
    iget v7, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    div-int/lit8 v7, v7, 0x2

    if-gt v6, v7, :cond_0

    .line 285
    const/4 v0, 0x1

    .line 286
    sub-int v6, v4, v1

    goto :goto_0

    .line 287
    :cond_0
    iget v7, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v3, v7

    if-le v6, v7, :cond_1

    .line 288
    const/4 v0, 0x7

    .line 289
    iget v7, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    sub-int v7, v4, v7

    add-int v6, v7, v1

    goto :goto_0

    .line 291
    :cond_1
    const/4 v0, 0x4

    .line 292
    iget v7, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    div-int/lit8 v7, v7, 0x2

    sub-int v6, v4, v7

    goto :goto_0

    .line 294
    :cond_2
    mul-int/lit8 v7, v2, 0x2

    div-int/lit8 v7, v7, 0x3

    if-lt v5, v7, :cond_5

    .line 296
    iget v7, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    sub-int v5, v2, v7

    .line 297
    iget v7, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    div-int/lit8 v7, v7, 0x2

    if-gt v6, v7, :cond_3

    .line 298
    const/4 v0, 0x3

    .line 299
    sub-int v6, v4, v1

    goto :goto_0

    .line 300
    :cond_3
    iget v7, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v3, v7

    if-le v6, v7, :cond_4

    .line 301
    const/16 v0, 0x9

    .line 302
    iget v7, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    sub-int v7, v4, v7

    add-int v6, v7, v1

    goto :goto_0

    .line 304
    :cond_4
    const/4 v0, 0x6

    .line 305
    iget v7, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    div-int/lit8 v7, v7, 0x2

    sub-int v6, v4, v7

    .line 308
    :cond_5
    :goto_0
    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 309
    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 310
    return v0
.end method

.method public detachFromWindow(Landroid/view/WindowManager;)V
    .locals 3
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .line 108
    iget-boolean v0, p0, Lcom/termux/floatball/menu/FloatMenu;->isAdded:Z

    if-eqz v0, :cond_1

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/termux/floatball/menu/FloatMenu;->toggle(I)V

    .line 110
    iget-object v1, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/termux/floatball/menu/MenuLayout;->setVisibility(I)V

    .line 111
    invoke-virtual {p0}, Lcom/termux/floatball/menu/FloatMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 112
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 116
    :goto_0
    iput-boolean v0, p0, Lcom/termux/floatball/menu/FloatMenu;->isAdded:Z

    .line 118
    :cond_1
    return-void
.end method

.method public getSize()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mSize:I

    return v0
.end method

.method public isMoving()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v0}, Lcom/termux/floatball/menu/MenuLayout;->isMoving()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$addItem$1$com-termux-floatball-menu-FloatMenu(Lcom/termux/floatball/menu/MenuItem;Landroid/view/View;)V
    .locals 1
    .param p1, "menuItem"    # Lcom/termux/floatball/menu/MenuItem;
    .param p2, "v"    # Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v0}, Lcom/termux/floatball/menu/MenuLayout;->isMoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/termux/floatball/menu/MenuItem;->action()V

    .line 200
    :cond_0
    return-void
.end method

.method synthetic lambda$init$0$com-termux-floatball-menu-FloatMenu(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 147
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 148
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 149
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/termux/floatball/menu/FloatMenu;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    invoke-virtual {v1}, Lcom/termux/floatball/FloatBallManager;->closeMenu()V

    .line 151
    const/4 v1, 0x1

    return v1

    .line 154
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 76
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 77
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 78
    .local v2, "y":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 82
    :pswitch_0
    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v3, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v3}, Lcom/termux/floatball/menu/MenuLayout;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    iget v3, p0, Lcom/termux/floatball/menu/FloatMenu;->mDuration:I

    invoke-direct {p0, v3}, Lcom/termux/floatball/menu/FloatMenu;->toggle(I)V

    goto :goto_0

    .line 80
    :pswitch_2
    nop

    .line 91
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public refreshPathMenu(I)V
    .locals 7
    .param p1, "position"    # I

    .line 211
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v0}, Lcom/termux/floatball/menu/MenuLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 212
    .local v0, "menuLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/termux/floatball/menu/FloatMenu;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 214
    .local v1, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    const/high16 v5, 0x43870000    # 270.0f

    const/high16 v6, 0x43340000    # 180.0f

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 241
    :pswitch_0
    const/16 v2, 0x55

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 242
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 243
    iget-object v2, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v2, v6, v5, p1}, Lcom/termux/floatball/menu/MenuLayout;->setArc(FFI)V

    .line 244
    goto :goto_0

    .line 252
    :pswitch_1
    const/16 v3, 0x51

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 253
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 254
    iget-object v3, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v3, v6, v2, p1}, Lcom/termux/floatball/menu/MenuLayout;->setArc(FFI)V

    .line 255
    goto :goto_0

    .line 226
    :pswitch_2
    const/16 v3, 0x53

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 227
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 228
    iget-object v3, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v3, v5, v2, p1}, Lcom/termux/floatball/menu/MenuLayout;->setArc(FFI)V

    .line 229
    goto :goto_0

    .line 236
    :pswitch_3
    const/16 v2, 0x15

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 237
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 238
    iget-object v2, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v2, v3, v5, p1}, Lcom/termux/floatball/menu/MenuLayout;->setArc(FFI)V

    .line 239
    goto :goto_0

    .line 257
    :pswitch_4
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 258
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 259
    iget-object v3, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v3, v4, v2, p1}, Lcom/termux/floatball/menu/MenuLayout;->setArc(FFI)V

    goto :goto_0

    .line 221
    :pswitch_5
    const/16 v2, 0x13

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 222
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 223
    iget-object v2, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    const/high16 v3, 0x43e10000    # 450.0f

    invoke-virtual {v2, v5, v3, p1}, Lcom/termux/floatball/menu/MenuLayout;->setArc(FFI)V

    .line 224
    goto :goto_0

    .line 231
    :pswitch_6
    const/16 v2, 0x35

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 232
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 233
    iget-object v2, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v2, v3, v6, p1}, Lcom/termux/floatball/menu/MenuLayout;->setArc(FFI)V

    .line 234
    goto :goto_0

    .line 247
    :pswitch_7
    const/16 v2, 0x31

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 248
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 249
    iget-object v2, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v2, v4, v6, p1}, Lcom/termux/floatball/menu/MenuLayout;->setArc(FFI)V

    .line 250
    goto :goto_0

    .line 216
    :pswitch_8
    const/16 v2, 0x33

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 217
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 218
    iget-object v2, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v2, v4, v3, p1}, Lcom/termux/floatball/menu/MenuLayout;->setArc(FFI)V

    .line 219
    nop

    .line 262
    :goto_0
    iget-object v2, p0, Lcom/termux/floatball/menu/FloatMenu;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v2, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v2, v0}, Lcom/termux/floatball/menu/MenuLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->floatBallManager:Lcom/termux/floatball/FloatBallManager;

    invoke-virtual {v0}, Lcom/termux/floatball/FloatBallManager;->reset()V

    .line 168
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/floatball/menu/MenuLayout;->setExpand(Z)V

    .line 169
    return-void
.end method

.method public removeAllItemViews()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/termux/floatball/menu/FloatMenu;->mMenuLayout:Lcom/termux/floatball/menu/MenuLayout;

    invoke-virtual {v0}, Lcom/termux/floatball/menu/MenuLayout;->removeAllViews()V

    .line 205
    return-void
.end method

.method public removeViewTreeObserver(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 66
    invoke-virtual {p0}, Lcom/termux/floatball/menu/FloatMenu;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 67
    return-void
.end method

.class public Lcom/termux/floatball/FloatBallManager;
.super Ljava/lang/Object;
.source "FloatBallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/floatball/FloatBallManager$IFloatBallPermission;,
        Lcom/termux/floatball/FloatBallManager$OnFloatBallClickListener;
    }
.end annotation


# instance fields
.field private final floatBall:Lcom/termux/floatball/widget/FloatBall;

.field public floatBallX:I

.field public floatBallY:I

.field private final floatMenu:Lcom/termux/floatball/menu/FloatMenu;

.field private isShowing:Z

.field private final mContext:Landroid/content/Context;

.field private mFloatBallClickListener:Lcom/termux/floatball/FloatBallManager$OnFloatBallClickListener;

.field private mFloatBallOverOtherApp:Z

.field private mPermission:Lcom/termux/floatball/FloatBallManager$IFloatBallPermission;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field private final mWindowManager:Landroid/view/WindowManager;

.field private menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/floatball/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarView:Lcom/termux/floatball/widget/StatusBarView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/termux/floatball/widget/FloatBallCfg;)V
    .locals 1
    .param p1, "application"    # Landroid/content/Context;
    .param p2, "ballCfg"    # Lcom/termux/floatball/widget/FloatBallCfg;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/termux/floatball/FloatBallManager;-><init>(Landroid/content/Context;Lcom/termux/floatball/widget/FloatBallCfg;Lcom/termux/floatball/menu/FloatMenuCfg;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/termux/floatball/widget/FloatBallCfg;Lcom/termux/floatball/menu/FloatMenuCfg;)V
    .locals 2
    .param p1, "application"    # Landroid/content/Context;
    .param p2, "ballCfg"    # Lcom/termux/floatball/widget/FloatBallCfg;
    .param p3, "menuCfg"    # Lcom/termux/floatball/menu/FloatMenuCfg;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/floatball/FloatBallManager;->isShowing:Z

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/termux/floatball/FloatBallManager;->menuItems:Ljava/util/List;

    .line 34
    iput-boolean v0, p0, Lcom/termux/floatball/FloatBallManager;->mFloatBallOverOtherApp:Z

    .line 52
    iput-object p1, p0, Lcom/termux/floatball/FloatBallManager;->mContext:Landroid/content/Context;

    .line 53
    sput-boolean v0, Lcom/termux/floatball/FloatBallUtil;->inSingleActivity:Z

    .line 54
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/termux/floatball/FloatBallManager;->mWindowManager:Landroid/view/WindowManager;

    .line 55
    invoke-virtual {p0}, Lcom/termux/floatball/FloatBallManager;->computeScreenSize()V

    .line 56
    new-instance v0, Lcom/termux/floatball/widget/FloatBall;

    iget-object v1, p0, Lcom/termux/floatball/FloatBallManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p2}, Lcom/termux/floatball/widget/FloatBall;-><init>(Landroid/content/Context;Lcom/termux/floatball/FloatBallManager;Lcom/termux/floatball/widget/FloatBallCfg;)V

    iput-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatBall:Lcom/termux/floatball/widget/FloatBall;

    .line 57
    new-instance v0, Lcom/termux/floatball/menu/FloatMenu;

    iget-object v1, p0, Lcom/termux/floatball/FloatBallManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p3}, Lcom/termux/floatball/menu/FloatMenu;-><init>(Landroid/content/Context;Lcom/termux/floatball/FloatBallManager;Lcom/termux/floatball/menu/FloatMenuCfg;)V

    iput-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatMenu:Lcom/termux/floatball/menu/FloatMenu;

    .line 58
    new-instance v0, Lcom/termux/floatball/widget/StatusBarView;

    iget-object v1, p0, Lcom/termux/floatball/FloatBallManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/termux/floatball/widget/StatusBarView;-><init>(Landroid/content/Context;Lcom/termux/floatball/FloatBallManager;)V

    iput-object v0, p0, Lcom/termux/floatball/FloatBallManager;->statusBarView:Lcom/termux/floatball/widget/StatusBarView;

    .line 59
    return-void
.end method

.method private inflateMenuItem()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatMenu:Lcom/termux/floatball/menu/FloatMenu;

    invoke-virtual {v0}, Lcom/termux/floatball/menu/FloatMenu;->removeAllItemViews()V

    .line 91
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/floatball/menu/MenuItem;

    .line 92
    .local v1, "item":Lcom/termux/floatball/menu/MenuItem;
    iget-object v2, p0, Lcom/termux/floatball/FloatBallManager;->floatMenu:Lcom/termux/floatball/menu/FloatMenu;

    invoke-virtual {v2, v1}, Lcom/termux/floatball/menu/FloatMenu;->addItem(Lcom/termux/floatball/menu/MenuItem;)V

    .line 93
    .end local v1    # "item":Lcom/termux/floatball/menu/MenuItem;
    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public addMenuItem(Lcom/termux/floatball/menu/MenuItem;)Lcom/termux/floatball/FloatBallManager;
    .locals 1
    .param p1, "item"    # Lcom/termux/floatball/menu/MenuItem;

    .line 71
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->menuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-object p0
.end method

.method public buildMenu()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/termux/floatball/FloatBallManager;->inflateMenuItem()V

    .line 63
    return-void
.end method

.method public closeMenu()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatMenu:Lcom/termux/floatball/menu/FloatMenu;

    invoke-virtual {v0}, Lcom/termux/floatball/menu/FloatMenu;->closeMenu()V

    .line 135
    return-void
.end method

.method public computeScreenSize()V
    .locals 2

    .line 101
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 102
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/termux/floatball/FloatBallManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 103
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/termux/floatball/FloatBallManager;->mScreenWidth:I

    .line 104
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/termux/floatball/FloatBallManager;->mScreenHeight:I

    .line 105
    return-void
.end method

.method public getBallSize()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatBall:Lcom/termux/floatball/widget/FloatBall;

    invoke-virtual {v0}, Lcom/termux/floatball/widget/FloatBall;->getSize()I

    move-result v0

    return v0
.end method

.method public getFloatBall()Lcom/termux/floatball/widget/FloatBall;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatBall:Lcom/termux/floatball/widget/FloatBall;

    return-object v0
.end method

.method public getMenuItemSize()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->menuItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->statusBarView:Lcom/termux/floatball/widget/StatusBarView;

    invoke-virtual {v0}, Lcom/termux/floatball/widget/StatusBarView;->getStatusBarHeight()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 2

    .line 157
    iget-boolean v0, p0, Lcom/termux/floatball/FloatBallManager;->isShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/floatball/FloatBallManager;->isShowing:Z

    .line 159
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatBall:Lcom/termux/floatball/widget/FloatBall;

    iget-object v1, p0, Lcom/termux/floatball/FloatBallManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Lcom/termux/floatball/widget/FloatBall;->detachFromWindow(Landroid/view/WindowManager;)V

    .line 160
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatMenu:Lcom/termux/floatball/menu/FloatMenu;

    iget-object v1, p0, Lcom/termux/floatball/FloatBallManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Lcom/termux/floatball/menu/FloatMenu;->detachFromWindow(Landroid/view/WindowManager;)V

    .line 161
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->statusBarView:Lcom/termux/floatball/widget/StatusBarView;

    iget-object v1, p0, Lcom/termux/floatball/FloatBallManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Lcom/termux/floatball/widget/StatusBarView;->detachFromWindow(Landroid/view/WindowManager;)V

    .line 162
    return-void
.end method

.method public isFloatBallOverOtherApp()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/termux/floatball/FloatBallManager;->mFloatBallOverOtherApp:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 165
    invoke-virtual {p0}, Lcom/termux/floatball/FloatBallManager;->computeScreenSize()V

    .line 166
    invoke-virtual {p0}, Lcom/termux/floatball/FloatBallManager;->reset()V

    .line 167
    return-void
.end method

.method public onFloatBallClick()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->menuItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatMenu:Lcom/termux/floatball/menu/FloatMenu;

    iget-object v1, p0, Lcom/termux/floatball/FloatBallManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Lcom/termux/floatball/menu/FloatMenu;->attachToWindow(Landroid/view/WindowManager;)V

    .line 146
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->mFloatBallClickListener:Lcom/termux/floatball/FloatBallManager$OnFloatBallClickListener;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->mFloatBallClickListener:Lcom/termux/floatball/FloatBallManager$OnFloatBallClickListener;

    invoke-interface {v0}, Lcom/termux/floatball/FloatBallManager$OnFloatBallClickListener;->onFloatBallClick()V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->mFloatBallClickListener:Lcom/termux/floatball/FloatBallManager$OnFloatBallClickListener;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->mFloatBallClickListener:Lcom/termux/floatball/FloatBallManager$OnFloatBallClickListener;

    invoke-interface {v0}, Lcom/termux/floatball/FloatBallManager$OnFloatBallClickListener;->onFloatBallClick()V

    .line 154
    :cond_1
    :goto_0
    return-void
.end method

.method public onStatusBarHeightChange()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatBall:Lcom/termux/floatball/widget/FloatBall;

    invoke-virtual {v0}, Lcom/termux/floatball/widget/FloatBall;->onLayoutChange()V

    .line 113
    return-void
.end method

.method public reset()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatBall:Lcom/termux/floatball/widget/FloatBall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/floatball/widget/FloatBall;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatBall:Lcom/termux/floatball/widget/FloatBall;

    invoke-virtual {v0}, Lcom/termux/floatball/widget/FloatBall;->postSleepRunnable()V

    .line 140
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatMenu:Lcom/termux/floatball/menu/FloatMenu;

    iget-object v1, p0, Lcom/termux/floatball/FloatBallManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Lcom/termux/floatball/menu/FloatMenu;->detachFromWindow(Landroid/view/WindowManager;)V

    .line 141
    return-void
.end method

.method public setFloatBallOverOtherApp(Z)V
    .locals 0
    .param p1, "floatBallOverOtherApp"    # Z

    .line 44
    iput-boolean p1, p0, Lcom/termux/floatball/FloatBallManager;->mFloatBallOverOtherApp:Z

    .line 45
    return-void
.end method

.method public setMenu(Ljava/util/List;)Lcom/termux/floatball/FloatBallManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/termux/floatball/menu/MenuItem;",
            ">;)",
            "Lcom/termux/floatball/FloatBallManager;"
        }
    .end annotation

    .line 85
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/termux/floatball/menu/MenuItem;>;"
    iput-object p1, p0, Lcom/termux/floatball/FloatBallManager;->menuItems:Ljava/util/List;

    .line 86
    return-object p0
.end method

.method public setOnFloatBallClickListener(Lcom/termux/floatball/FloatBallManager$OnFloatBallClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/termux/floatball/FloatBallManager$OnFloatBallClickListener;

    .line 174
    iput-object p1, p0, Lcom/termux/floatball/FloatBallManager;->mFloatBallClickListener:Lcom/termux/floatball/FloatBallManager$OnFloatBallClickListener;

    .line 175
    return-void
.end method

.method public setPermission(Lcom/termux/floatball/FloatBallManager$IFloatBallPermission;)V
    .locals 0
    .param p1, "iPermission"    # Lcom/termux/floatball/FloatBallManager$IFloatBallPermission;

    .line 170
    iput-object p1, p0, Lcom/termux/floatball/FloatBallManager;->mPermission:Lcom/termux/floatball/FloatBallManager$IFloatBallPermission;

    .line 171
    return-void
.end method

.method public show()V
    .locals 2

    .line 116
    iget-boolean v0, p0, Lcom/termux/floatball/FloatBallManager;->mFloatBallOverOtherApp:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->mPermission:Lcom/termux/floatball/FloatBallManager$IFloatBallPermission;

    if-nez v0, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->mPermission:Lcom/termux/floatball/FloatBallManager$IFloatBallPermission;

    iget-object v1, p0, Lcom/termux/floatball/FloatBallManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/termux/floatball/FloatBallManager$IFloatBallPermission;->hasFloatBallPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->mPermission:Lcom/termux/floatball/FloatBallManager$IFloatBallPermission;

    invoke-interface {v0}, Lcom/termux/floatball/FloatBallManager$IFloatBallPermission;->onRequestFloatBallPermission()Z

    .line 122
    return-void

    .line 125
    :cond_1
    iget-boolean v0, p0, Lcom/termux/floatball/FloatBallManager;->isShowing:Z

    if-eqz v0, :cond_2

    return-void

    .line 126
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/floatball/FloatBallManager;->isShowing:Z

    .line 127
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatBall:Lcom/termux/floatball/widget/FloatBall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/floatball/widget/FloatBall;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->statusBarView:Lcom/termux/floatball/widget/StatusBarView;

    iget-object v1, p0, Lcom/termux/floatball/FloatBallManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Lcom/termux/floatball/widget/StatusBarView;->attachToWindow(Landroid/view/WindowManager;)V

    .line 129
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatBall:Lcom/termux/floatball/widget/FloatBall;

    iget-object v1, p0, Lcom/termux/floatball/FloatBallManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Lcom/termux/floatball/widget/FloatBall;->attachToWindow(Landroid/view/WindowManager;)V

    .line 130
    iget-object v0, p0, Lcom/termux/floatball/FloatBallManager;->floatMenu:Lcom/termux/floatball/menu/FloatMenu;

    iget-object v1, p0, Lcom/termux/floatball/FloatBallManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Lcom/termux/floatball/menu/FloatMenu;->detachFromWindow(Landroid/view/WindowManager;)V

    .line 131
    return-void
.end method

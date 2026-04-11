.class public Lcom/termux/app/terminal/FloatBallMenuClient;
.super Ljava/lang/Object;
.source "FloatBallMenuClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;
    }
.end annotation


# instance fields
.field private mActivityLifeCycleListener:Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;

.field private mAppNotOnFront:Z

.field private mFloatPermissionManager:Lcom/termux/floatball/permission/FloatPermissionManager;

.field private mFloatballManager:Lcom/termux/floatball/FloatBallManager;

.field private mLockSlider:Z

.field private mShowKeyboard:Z

.field private mShowPreference:Z

.field private mShowTerminal:Z

.field private mTermuxActivity:Lcom/termux/app/TermuxActivity;

.field private resumed:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;

    invoke-direct {v0, p0}, Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;-><init>(Lcom/termux/app/terminal/FloatBallMenuClient;)V

    iput-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mActivityLifeCycleListener:Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mAppNotOnFront:Z

    .line 33
    iput-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mShowKeyboard:Z

    .line 34
    iput-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mLockSlider:Z

    .line 35
    iput-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mShowTerminal:Z

    .line 36
    iput-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mShowPreference:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 1
    .param p1, "termuxActivity"    # Lcom/termux/app/TermuxActivity;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;

    invoke-direct {v0, p0}, Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;-><init>(Lcom/termux/app/terminal/FloatBallMenuClient;)V

    iput-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mActivityLifeCycleListener:Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mAppNotOnFront:Z

    .line 33
    iput-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mShowKeyboard:Z

    .line 34
    iput-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mLockSlider:Z

    .line 35
    iput-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mShowTerminal:Z

    .line 36
    iput-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mShowPreference:Z

    .line 42
    iput-object p1, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/TermuxActivity;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 26
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/floatball/permission/FloatPermissionManager;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 26
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mFloatPermissionManager:Lcom/termux/floatball/permission/FloatPermissionManager;

    return-object v0
.end method

.method static synthetic access$204(Lcom/termux/app/terminal/FloatBallMenuClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 26
    iget v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->resumed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->resumed:I

    return v0
.end method

.method static synthetic access$206(Lcom/termux/app/terminal/FloatBallMenuClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 26
    iget v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->resumed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->resumed:I

    return v0
.end method

.method static synthetic access$300(Lcom/termux/app/terminal/FloatBallMenuClient;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/terminal/FloatBallMenuClient;
    .param p1, "x1"    # Z

    .line 26
    invoke-direct {p0, p1}, Lcom/termux/app/terminal/FloatBallMenuClient;->setFloatBallVisible(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/termux/app/terminal/FloatBallMenuClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 26
    iget-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mShowTerminal:Z

    return v0
.end method

.method static synthetic access$402(Lcom/termux/app/terminal/FloatBallMenuClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/terminal/FloatBallMenuClient;
    .param p1, "x1"    # Z

    .line 26
    iput-boolean p1, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mShowTerminal:Z

    return p1
.end method

.method static synthetic access$500(Lcom/termux/app/terminal/FloatBallMenuClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/terminal/FloatBallMenuClient;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lcom/termux/app/terminal/FloatBallMenuClient;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/floatball/FloatBallManager;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 26
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mFloatballManager:Lcom/termux/floatball/FloatBallManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/termux/app/terminal/FloatBallMenuClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 26
    iget-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mLockSlider:Z

    return v0
.end method

.method static synthetic access$702(Lcom/termux/app/terminal/FloatBallMenuClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/terminal/FloatBallMenuClient;
    .param p1, "x1"    # Z

    .line 26
    iput-boolean p1, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mLockSlider:Z

    return p1
.end method

.method static synthetic access$800(Lcom/termux/app/terminal/FloatBallMenuClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 26
    iget-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mShowKeyboard:Z

    return v0
.end method

.method static synthetic access$802(Lcom/termux/app/terminal/FloatBallMenuClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/terminal/FloatBallMenuClient;
    .param p1, "x1"    # Z

    .line 26
    iput-boolean p1, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mShowKeyboard:Z

    return p1
.end method

.method static synthetic access$900(Lcom/termux/app/terminal/FloatBallMenuClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 26
    iget-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mShowPreference:Z

    return v0
.end method

.method static synthetic access$902(Lcom/termux/app/terminal/FloatBallMenuClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/terminal/FloatBallMenuClient;
    .param p1, "x1"    # Z

    .line 26
    iput-boolean p1, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mShowPreference:Z

    return p1
.end method

.method private addFloatMenuItem()V
    .locals 9

    .line 190
    new-instance v0, Lcom/termux/app/terminal/FloatBallMenuClient$2;

    iget-object v1, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v2, 0x7f08011a

    invoke-virtual {v1, v2}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/termux/app/terminal/FloatBallMenuClient$2;-><init>(Lcom/termux/app/terminal/FloatBallMenuClient;Landroid/graphics/drawable/Drawable;)V

    .line 205
    .local v0, "terminalItem":Lcom/termux/floatball/menu/MenuItem;
    new-instance v1, Lcom/termux/app/terminal/FloatBallMenuClient$3;

    iget-object v2, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v3, 0x7f08010c

    invoke-virtual {v2, v3}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/termux/app/terminal/FloatBallMenuClient$3;-><init>(Lcom/termux/app/terminal/FloatBallMenuClient;Landroid/graphics/drawable/Drawable;)V

    .line 213
    .local v1, "stopItem":Lcom/termux/floatball/menu/MenuItem;
    new-instance v2, Lcom/termux/app/terminal/FloatBallMenuClient$4;

    iget-object v3, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v4, 0x7f080109

    invoke-virtual {v3, v4}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/termux/app/terminal/FloatBallMenuClient$4;-><init>(Lcom/termux/app/terminal/FloatBallMenuClient;Landroid/graphics/drawable/Drawable;)V

    .line 220
    .local v2, "gamePadItem":Lcom/termux/floatball/menu/MenuItem;
    new-instance v3, Lcom/termux/app/terminal/FloatBallMenuClient$5;

    iget-object v4, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v5, 0x7f08011d

    invoke-virtual {v4, v5}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/termux/app/terminal/FloatBallMenuClient$5;-><init>(Lcom/termux/app/terminal/FloatBallMenuClient;Landroid/graphics/drawable/Drawable;)V

    .line 234
    .local v3, "unLockLayoutItem":Lcom/termux/floatball/menu/MenuItem;
    new-instance v4, Lcom/termux/app/terminal/FloatBallMenuClient$6;

    iget-object v5, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v6, 0x7f080111

    invoke-virtual {v5, v6}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/termux/app/terminal/FloatBallMenuClient$6;-><init>(Lcom/termux/app/terminal/FloatBallMenuClient;Landroid/graphics/drawable/Drawable;)V

    .line 247
    .local v4, "keyboardItem":Lcom/termux/floatball/menu/MenuItem;
    new-instance v5, Lcom/termux/app/terminal/FloatBallMenuClient$7;

    iget-object v6, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v7, 0x7f080117

    invoke-virtual {v6, v7}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/termux/app/terminal/FloatBallMenuClient$7;-><init>(Lcom/termux/app/terminal/FloatBallMenuClient;Landroid/graphics/drawable/Drawable;)V

    .line 255
    .local v5, "taskManagerItem":Lcom/termux/floatball/menu/MenuItem;
    new-instance v6, Lcom/termux/app/terminal/FloatBallMenuClient$8;

    iget-object v7, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v8, 0x7f080114

    invoke-virtual {v7, v8}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/termux/app/terminal/FloatBallMenuClient$8;-><init>(Lcom/termux/app/terminal/FloatBallMenuClient;Landroid/graphics/drawable/Drawable;)V

    .line 270
    .local v6, "settingItem":Lcom/termux/floatball/menu/MenuItem;
    iget-object v7, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mFloatballManager:Lcom/termux/floatball/FloatBallManager;

    invoke-virtual {v7, v0}, Lcom/termux/floatball/FloatBallManager;->addMenuItem(Lcom/termux/floatball/menu/MenuItem;)Lcom/termux/floatball/FloatBallManager;

    move-result-object v7

    .line 271
    invoke-virtual {v7, v1}, Lcom/termux/floatball/FloatBallManager;->addMenuItem(Lcom/termux/floatball/menu/MenuItem;)Lcom/termux/floatball/FloatBallManager;

    move-result-object v7

    .line 272
    invoke-virtual {v7, v4}, Lcom/termux/floatball/FloatBallManager;->addMenuItem(Lcom/termux/floatball/menu/MenuItem;)Lcom/termux/floatball/FloatBallManager;

    move-result-object v7

    .line 273
    invoke-virtual {v7, v2}, Lcom/termux/floatball/FloatBallManager;->addMenuItem(Lcom/termux/floatball/menu/MenuItem;)Lcom/termux/floatball/FloatBallManager;

    move-result-object v7

    .line 274
    invoke-virtual {v7, v3}, Lcom/termux/floatball/FloatBallManager;->addMenuItem(Lcom/termux/floatball/menu/MenuItem;)Lcom/termux/floatball/FloatBallManager;

    move-result-object v7

    .line 275
    invoke-virtual {v7, v5}, Lcom/termux/floatball/FloatBallManager;->addMenuItem(Lcom/termux/floatball/menu/MenuItem;)Lcom/termux/floatball/FloatBallManager;

    move-result-object v7

    .line 276
    invoke-virtual {v7, v6}, Lcom/termux/floatball/FloatBallManager;->addMenuItem(Lcom/termux/floatball/menu/MenuItem;)Lcom/termux/floatball/FloatBallManager;

    move-result-object v7

    .line 277
    invoke-virtual {v7}, Lcom/termux/floatball/FloatBallManager;->buildMenu()V

    .line 278
    return-void
.end method

.method private init()V
    .locals 10

    .line 86
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/termux/floatball/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 87
    .local v0, "ballSize":I
    iget-object v1, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v2, 0x7f0800fa

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 93
    .local v1, "ballIcon":Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/termux/floatball/widget/FloatBallCfg;

    sget-object v3, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->RIGHT_CENTER:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    invoke-direct {v2, v0, v1, v3}, Lcom/termux/floatball/widget/FloatBallCfg;-><init>(ILandroid/graphics/drawable/Drawable;Lcom/termux/floatball/widget/FloatBallCfg$Gravity;)V

    .line 95
    .local v2, "ballCfg":Lcom/termux/floatball/widget/FloatBallCfg;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/termux/floatball/widget/FloatBallCfg;->setHideHalfLater(Z)V

    .line 96
    iget-object v3, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 97
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "enableGlobalFloatBallMenu"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 98
    .local v4, "floatBallOverOtherApp":Z
    iget-object v5, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    .line 99
    .local v5, "ctx":Landroid/content/Context;
    if-eqz v4, :cond_0

    .line 100
    iget-object v6, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v6}, Lcom/termux/app/TermuxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 104
    :cond_0
    iget-object v6, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const/high16 v7, 0x42dc0000    # 110.0f

    invoke-static {v6, v7}, Lcom/termux/floatball/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    .line 105
    .local v6, "menuSize":I
    iget-object v7, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v7, v8}, Lcom/termux/floatball/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    .line 106
    .local v7, "menuItemSize":I
    new-instance v8, Lcom/termux/floatball/menu/FloatMenuCfg;

    invoke-direct {v8, v6, v7}, Lcom/termux/floatball/menu/FloatMenuCfg;-><init>(II)V

    .line 108
    .local v8, "menuCfg":Lcom/termux/floatball/menu/FloatMenuCfg;
    new-instance v9, Lcom/termux/floatball/FloatBallManager;

    invoke-direct {v9, v5, v2, v8}, Lcom/termux/floatball/FloatBallManager;-><init>(Landroid/content/Context;Lcom/termux/floatball/widget/FloatBallCfg;Lcom/termux/floatball/menu/FloatMenuCfg;)V

    iput-object v9, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mFloatballManager:Lcom/termux/floatball/FloatBallManager;

    .line 109
    invoke-direct {p0}, Lcom/termux/app/terminal/FloatBallMenuClient;->addFloatMenuItem()V

    .line 110
    iget-object v9, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mFloatballManager:Lcom/termux/floatball/FloatBallManager;

    invoke-virtual {v9, v4}, Lcom/termux/floatball/FloatBallManager;->setFloatBallOverOtherApp(Z)V

    .line 111
    if-eqz v4, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/termux/app/terminal/FloatBallMenuClient;->setFloatPermission()V

    .line 114
    :cond_1
    return-void
.end method

.method private setFloatBallVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 281
    if-eqz p1, :cond_0

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mAppNotOnFront:Z

    goto :goto_0

    .line 286
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mAppNotOnFront:Z

    .line 288
    :goto_0
    return-void
.end method

.method private setFloatPermission()V
    .locals 2

    .line 119
    new-instance v0, Lcom/termux/floatball/permission/FloatPermissionManager;

    invoke-direct {v0}, Lcom/termux/floatball/permission/FloatPermissionManager;-><init>()V

    iput-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mFloatPermissionManager:Lcom/termux/floatball/permission/FloatPermissionManager;

    .line 120
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mFloatballManager:Lcom/termux/floatball/FloatBallManager;

    new-instance v1, Lcom/termux/app/terminal/FloatBallMenuClient$1;

    invoke-direct {v1, p0}, Lcom/termux/app/terminal/FloatBallMenuClient$1;-><init>(Lcom/termux/app/terminal/FloatBallMenuClient;)V

    invoke-virtual {v0, v1}, Lcom/termux/floatball/FloatBallManager;->setPermission(Lcom/termux/floatball/FloatBallManager$IFloatBallPermission;)V

    .line 138
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    return-void
.end method


# virtual methods
.method public isApplicationInForeground()Z
    .locals 1

    .line 291
    iget v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->resumed:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGlobalFloatBallMenu()Z
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mFloatballManager:Lcom/termux/floatball/FloatBallManager;

    invoke-virtual {v0}, Lcom/termux/floatball/FloatBallManager;->isFloatBallOverOtherApp()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$onCreate$0$com-termux-app-terminal-FloatBallMenuClient()V
    .locals 4

    .line 53
    iget-boolean v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mAppNotOnFront:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 55
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v1, "com.termux"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 58
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2, v1}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    iget-object v2, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v3, 0x7f1202ca

    invoke-virtual {v2, v3}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/termux/app/terminal/FloatBallMenuClient;->toast(Ljava/lang/String;)V

    .line 63
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mFloatballManager:Lcom/termux/floatball/FloatBallManager;

    invoke-virtual {v0}, Lcom/termux/floatball/FloatBallManager;->show()V

    .line 72
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mFloatballManager:Lcom/termux/floatball/FloatBallManager;

    invoke-virtual {v0}, Lcom/termux/floatball/FloatBallManager;->onFloatBallClick()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 75
    iget-object v1, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v2, 0x7f120053

    invoke-virtual {v1, v2}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->toast(Ljava/lang/String;)V

    .line 78
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/termux/app/terminal/FloatBallMenuClient;->init()V

    .line 47
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mFloatballManager:Lcom/termux/floatball/FloatBallManager;

    invoke-virtual {v0}, Lcom/termux/floatball/FloatBallManager;->show()V

    .line 49
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mFloatballManager:Lcom/termux/floatball/FloatBallManager;

    invoke-virtual {v0}, Lcom/termux/floatball/FloatBallManager;->getMenuItemSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v1, 0x7f12004c

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mFloatballManager:Lcom/termux/floatball/FloatBallManager;

    new-instance v1, Lcom/termux/app/terminal/FloatBallMenuClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/termux/app/terminal/FloatBallMenuClient$$ExternalSyntheticLambda0;-><init>(Lcom/termux/app/terminal/FloatBallMenuClient;)V

    invoke-virtual {v0, v1}, Lcom/termux/floatball/FloatBallManager;->setOnFloatBallClickListener(Lcom/termux/floatball/FloatBallManager$OnFloatBallClickListener;)V

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mActivityLifeCycleListener:Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 295
    invoke-virtual {p0}, Lcom/termux/app/terminal/FloatBallMenuClient;->onDetachedFromWindow()V

    .line 297
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mActivityLifeCycleListener:Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 298
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mFloatballManager:Lcom/termux/floatball/FloatBallManager;

    invoke-virtual {v0}, Lcom/termux/floatball/FloatBallManager;->hide()V

    .line 82
    return-void
.end method

.method public setShowPreference(Z)V
    .locals 0
    .param p1, "showPreference"    # Z

    .line 145
    iput-boolean p1, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mShowPreference:Z

    .line 146
    return-void
.end method

.method public setTerminalShow(Z)V
    .locals 0
    .param p1, "showTerminal"    # Z

    .line 141
    iput-boolean p1, p0, Lcom/termux/app/terminal/FloatBallMenuClient;->mShowTerminal:Z

    .line 142
    return-void
.end method

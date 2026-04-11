.class public abstract Lcom/termux/x11/controller/core/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field private static globalToastReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/termux/x11/controller/core/AppUtils;->globalToastReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findViewsWithClass(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "viewClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Class;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 309
    .local p2, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 310
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 311
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 312
    .local v3, "_class":Ljava/lang/Class;
    if-eq v3, p1, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_0

    goto :goto_1

    .line 315
    :cond_0
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 316
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4, p1, p2}, Lcom/termux/x11/controller/core/AppUtils;->findViewsWithClass(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 313
    :cond_1
    :goto_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "_class":Ljava/lang/Class;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "i":I
    .end local v1    # "childCount":I
    :cond_3
    return-void
.end method

.method public static getArchName()Ljava/lang/String;
    .locals 9

    .line 46
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "armhf"

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 47
    .local v5, "arch":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "x86"

    const-string v8, "x86_64"

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v6, "arm64-v8a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_1
    const-string v6, "armeabi-v7a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :sswitch_2
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_3
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_2

    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 46
    .end local v5    # "arch":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    .restart local v5    # "arch":Ljava/lang/String;
    :pswitch_0
    return-object v7

    .line 50
    :pswitch_1
    return-object v8

    .line 49
    :pswitch_2
    return-object v4

    .line 48
    :pswitch_3
    const-string v0, "arm64"

    return-object v0

    .line 54
    .end local v5    # "arch":Ljava/lang/String;
    :cond_1
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x300b59d9 -> :sswitch_3
        0x1c976 -> :sswitch_2
        0x8ab4d72 -> :sswitch_1
        0x5553f3ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPreferredDialogWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 125
    .local v0, "orientation":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 126
    .local v1, "scale":F
    :goto_0
    invoke-static {}, Lcom/termux/x11/controller/core/AppUtils;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/termux/x11/controller/core/UnitUtils;->pxToDp(F)F

    move-result v2

    mul-float v2, v2, v1

    invoke-static {v2}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    return v2
.end method

.method public static getScreenHeight()I
    .locals 1

    .line 120
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .line 116
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 218
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 219
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 221
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public static hideSystemUI(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 86
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "decorView":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    .line 89
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v2

    .line 91
    .local v2, "insetsController":Landroid/view/WindowInsetsController;
    if-eqz v2, :cond_0

    .line 92
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 93
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 95
    .end local v2    # "insetsController":Landroid/view/WindowInsetsController;
    :cond_0
    goto :goto_0

    .line 97
    :cond_1
    const/16 v2, 0x1706

    .line 104
    .local v2, "flags":I
    const/16 v3, 0x1706

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 105
    new-instance v3, Lcom/termux/x11/controller/core/AppUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/termux/x11/controller/core/AppUtils$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 109
    .end local v2    # "flags":I
    :goto_0
    return-void
.end method

.method public static isUiThread()Z
    .locals 2

    .line 112
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static keepScreenOn(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 43
    return-void
.end method

.method static synthetic lambda$hideSystemUI$1(Landroid/view/View;I)V
    .locals 1
    .param p0, "decorView"    # Landroid/view/View;
    .param p1, "visibility"    # I

    .line 106
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1706

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 107
    :cond_0
    return-void
.end method

.method static synthetic lambda$observeSoftKeyboardVisibility$3(Landroid/view/View;[ZLcom/termux/x11/controller/core/Callback;)V
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;
    .param p1, "visible"    # [Z
    .param p2, "callback"    # Lcom/termux/x11/controller/core/Callback;

    .line 229
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 230
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 232
    .local v1, "screenHeight":I
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v2

    .line 234
    .local v2, "keypadHeight":I
    int-to-float v3, v2

    int-to-float v4, v1

    const v5, 0x3e19999a    # 0.15f

    mul-float v4, v4, v5

    const/4 v5, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 235
    aget-boolean v3, p1, v5

    if-nez v3, :cond_1

    .line 236
    const/4 v3, 0x1

    aput-boolean v3, p1, v5

    .line 237
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/termux/x11/controller/core/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    :cond_0
    aget-boolean v3, p1, v5

    if-eqz v3, :cond_1

    .line 242
    aput-boolean v5, p1, v5

    .line 243
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/termux/x11/controller/core/Callback;->call(Ljava/lang/Object;)V

    .line 246
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$setupTabLayout$4([ILandroid/view/View;Ljava/lang/Integer;)V
    .locals 3
    .param p0, "tabResIds"    # [I
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # Ljava/lang/Integer;

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 285
    aget v1, p0, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 286
    .local v1, "tabView":Landroid/view/View;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .end local v1    # "tabView":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic lambda$showKeyboard$0(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2
    .param p0, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .line 79
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method static synthetic lambda$showToast$2(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .line 136
    invoke-static {p0, p1}, Lcom/termux/x11/controller/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    return-void
.end method

.method public static observeSoftKeyboardVisibility(Landroid/view/View;Lcom/termux/x11/controller/core/Callback;)V
    .locals 3
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/termux/x11/controller/core/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 227
    .local p1, "callback":Lcom/termux/x11/controller/core/Callback;, "Lcom/termux/x11/controller/core/Callback<Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 228
    .local v0, "visible":[Z
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/termux/x11/controller/core/AppUtils$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p1}, Lcom/termux/x11/controller/core/AppUtils$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;[ZLcom/termux/x11/controller/core/Callback;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 247
    return-void
.end method

.method public static restartActivity(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 58
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 60
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroidx/appcompat/app/AppCompatActivity;->overridePendingTransition(II)V

    .line 62
    return-void
.end method

.method public static restartApplication(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 65
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/x11/controller/core/AppUtils;->restartApplication(Landroid/content/Context;I)V

    .line 66
    return-void
.end method

.method public static restartApplication(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selectedMenuItemId"    # I

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 71
    .local v1, "mainIntent":Landroid/content/Intent;
    if-lez p1, :cond_0

    const-string v2, "selected_menu_item_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exit(I)V

    .line 74
    return-void
.end method

.method public static setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z
    .locals 3
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "identifier"    # Ljava/lang/String;

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 263
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/termux/x11/controller/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {p0, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 265
    const/4 v0, 0x1

    return v0

    .line 262
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static setSpinnerSelectionFromNumber(Landroid/widget/Spinner;Ljava/lang/String;)Z
    .locals 3
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "number"    # Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 273
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 274
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/termux/x11/controller/core/StringUtils;->parseNumber(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    invoke-virtual {p0, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 276
    const/4 v0, 0x1

    return v0

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z
    .locals 3
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "value"    # Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 251
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 252
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {p0, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 254
    const/4 v0, 0x1

    return v0

    .line 251
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static varargs setupTabLayout(Landroid/view/View;I[I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tabLayoutResId"    # I
    .param p2, "tabResIds"    # [I

    .line 283
    new-instance v0, Lcom/termux/x11/controller/core/AppUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p0}, Lcom/termux/x11/controller/core/AppUtils$$ExternalSyntheticLambda2;-><init>([ILandroid/view/View;)V

    .line 290
    .local v0, "tabSelectedCallback":Lcom/termux/x11/controller/core/Callback;, "Lcom/termux/x11/controller/core/Callback<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 291
    .local v1, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    new-instance v2, Lcom/termux/x11/controller/core/AppUtils$1;

    invoke-direct {v2, v0}, Lcom/termux/x11/controller/core/AppUtils$1;-><init>(Lcom/termux/x11/controller/core/Callback;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 305
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 306
    return-void
.end method

.method public static showHelpBox(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "textResId"    # I

    .line 200
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/termux/x11/controller/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public static showHelpBox(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;

    .line 204
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 205
    .local v0, "padding":I
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 206
    .local v1, "textView":Landroid/widget/TextView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v3, 0x438e0000    # 284.0f

    invoke-static {v3}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 208
    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 209
    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 211
    .local v3, "widthMeasureSpec":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 212
    .local v2, "heightMeasureSpec":I
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->measure(II)V

    .line 213
    const/16 v4, 0x12c

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-static {p1, v1, v4, v5}, Lcom/termux/x11/controller/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    .line 214
    return-void
.end method

.method public static showKeyboard(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 5
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 77
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 78
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v1, v2, :cond_0

    .line 79
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/termux/x11/controller/core/AppUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/termux/x11/controller/core/AppUtils$$ExternalSyntheticLambda1;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 81
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 82
    :goto_0
    return-void
.end method

.method public static showPopupWindow(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "anchor"    # Landroid/view/View;
    .param p1, "contentView"    # Landroid/view/View;

    .line 160
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/termux/x11/controller/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public static showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;
    .locals 6
    .param p0, "anchor"    # Landroid/view/View;
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 166
    .local v1, "popupWindow":Landroid/widget/PopupWindow;
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 168
    const/4 v2, 0x0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 169
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 170
    .local v3, "widthMeasureSpec":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 171
    .local v4, "heightMeasureSpec":I
    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 174
    .end local v3    # "widthMeasureSpec":I
    .end local v4    # "heightMeasureSpec":I
    goto :goto_1

    .line 176
    :cond_0
    const/4 v3, -0x2

    if-lez p2, :cond_1

    .line 177
    int-to-float v4, p2

    invoke-static {v4}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 181
    :goto_0
    if-lez p3, :cond_2

    .line 182
    int-to-float v3, p3

    invoke-static {v3}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 187
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 188
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 189
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 191
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 192
    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 194
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 195
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 196
    return-object v1
.end method

.method public static showToast(Landroid/content/Context;I)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textResId"    # I

    .line 130
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/x11/controller/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .line 134
    invoke-static {}, Lcom/termux/x11/controller/core/AppUtils;->isUiThread()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 135
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 136
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/termux/x11/controller/core/AppUtils$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/termux/x11/controller/core/AppUtils$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 138
    :cond_0
    return-object v1

    .line 141
    :cond_1
    sget-object v0, Lcom/termux/x11/controller/core/AppUtils;->globalToastReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 142
    sget-object v0, Lcom/termux/x11/controller/core/AppUtils;->globalToastReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 143
    .local v0, "toast":Landroid/widget/Toast;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 144
    :cond_2
    sput-object v1, Lcom/termux/x11/controller/core/AppUtils;->globalToastReference:Ljava/lang/ref/WeakReference;

    .line 147
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/termux/x11/R$layout;->custom_toast:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/termux/x11/R$id;->TextView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 151
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x51

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    if-lt v2, v3, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 153
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 154
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 155
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/termux/x11/controller/core/AppUtils;->globalToastReference:Ljava/lang/ref/WeakReference;

    .line 156
    return-object v1
.end method

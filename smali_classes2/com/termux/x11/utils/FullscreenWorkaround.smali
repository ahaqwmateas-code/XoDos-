.class public Lcom/termux/x11/utils/FullscreenWorkaround;
.super Ljava/lang/Object;
.source "FullscreenWorkaround.java"


# static fields
.field private static x11Focused:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private usableHeightPrevious:I


# direct methods
.method public static synthetic $r8$lambda$glvItBxLzxNOnCIizOsk32cK-Zs(Lcom/termux/x11/utils/FullscreenWorkaround;)V
    .locals 0

    invoke-direct {p0}, Lcom/termux/x11/utils/FullscreenWorkaround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/termux/x11/utils/FullscreenWorkaround;->x11Focused:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/termux/x11/utils/FullscreenWorkaround;->mActivity:Landroid/app/Activity;

    .line 34
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 35
    .local v0, "content":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/termux/x11/utils/FullscreenWorkaround$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/termux/x11/utils/FullscreenWorkaround$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/utils/FullscreenWorkaround;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 36
    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 17
    new-instance v0, Lcom/termux/x11/utils/FullscreenWorkaround;

    invoke-direct {v0, p0}, Lcom/termux/x11/utils/FullscreenWorkaround;-><init>(Landroid/app/Activity;)V

    .line 18
    return-void
.end method

.method private computeUsableHeight(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 71
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public static getX11Focused()Z
    .locals 1

    .line 29
    sget-boolean v0, Lcom/termux/x11/utils/FullscreenWorkaround;->x11Focused:Z

    return v0
.end method

.method private possiblyResizeChildOfContent()V
    .locals 7

    .line 39
    invoke-static {}, Lcom/termux/x11/MainActivity;->getPrefs()Lcom/termux/x11/Prefs;

    move-result-object v0

    .line 40
    .local v0, "p":Lcom/termux/x11/Prefs;
    iget-object v1, p0, Lcom/termux/x11/utils/FullscreenWorkaround;->mActivity:Landroid/app/Activity;

    .line 41
    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/termux/x11/utils/FullscreenWorkaround;->mActivity:Landroid/app/Activity;

    .line 42
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/termux/x11/Prefs;->Reseed:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 43
    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/termux/x11/utils/FullscreenWorkaround;->x11Focused:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/termux/x11/Prefs;->fullscreen:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 45
    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/termux/x11/utils/FullscreenWorkaround;->mActivity:Landroid/app/Activity;

    .line 46
    invoke-static {v1}, Lcom/termux/x11/utils/SamsungDexUtils;->checkDeXEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/utils/FullscreenWorkaround;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 50
    .local v1, "content":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    .local v2, "frameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0, v1}, Lcom/termux/x11/utils/FullscreenWorkaround;->computeUsableHeight(Landroid/view/View;)I

    move-result v3

    .line 53
    .local v3, "usableHeightNow":I
    iget v4, p0, Lcom/termux/x11/utils/FullscreenWorkaround;->usableHeightPrevious:I

    if-eq v3, v4, :cond_2

    .line 54
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 55
    .local v4, "usableHeightSansKeyboard":I
    sub-int v5, v4, v3

    .line 56
    .local v5, "heightDifference":I
    div-int/lit8 v6, v4, 0x4

    if-le v5, v6, :cond_1

    .line 58
    sub-int v6, v4, v5

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 61
    :cond_1
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 63
    :goto_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 64
    iput v3, p0, Lcom/termux/x11/utils/FullscreenWorkaround;->usableHeightPrevious:I

    .line 66
    .end local v4    # "usableHeightSansKeyboard":I
    .end local v5    # "heightDifference":I
    :cond_2
    return-void

    .line 48
    .end local v1    # "content":Landroid/widget/FrameLayout;
    .end local v2    # "frameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "usableHeightNow":I
    :cond_3
    :goto_1
    return-void
.end method

.method public static setX11Focused(Z)V
    .locals 0
    .param p0, "focused"    # Z

    .line 26
    sput-boolean p0, Lcom/termux/x11/utils/FullscreenWorkaround;->x11Focused:Z

    .line 27
    return-void
.end method

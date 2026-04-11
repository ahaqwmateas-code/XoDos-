.class public final Lcom/termux/shared/termux/extrakeys/ExtraKeysView;
.super Landroid/widget/GridLayout;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;,
        Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;
    }
.end annotation


# static fields
.field public static final ATTR_BUTTON_ACTIVE_BACKGROUND_COLOR:I

.field public static final ATTR_BUTTON_ACTIVE_TEXT_COLOR:I

.field public static final ATTR_BUTTON_BACKGROUND_COLOR:I

.field public static final ATTR_BUTTON_TEXT_COLOR:I

.field public static final DEFAULT_BUTTON_ACTIVE_BACKGROUND_COLOR:I = -0x808081

.field public static final DEFAULT_BUTTON_ACTIVE_TEXT_COLOR:I = -0x7f2116

.field public static final DEFAULT_BUTTON_BACKGROUND_COLOR:I = 0x0

.field public static final DEFAULT_BUTTON_TEXT_COLOR:I = -0x1

.field public static final DEFAULT_LONG_PRESS_REPEAT_DELAY:I = 0x50

.field public static final FALLBACK_LONG_PRESS_DURATION:I = 0x190

.field public static final MAX_LONG_PRESS_DURATION:I = 0xbb8

.field public static final MAX_LONG_PRESS__REPEAT_DELAY:I = 0x7d0

.field public static final MIN_LONG_PRESS_DURATION:I = 0xc8

.field public static final MIN_LONG_PRESS__REPEAT_DELAY:I = 0x5


# instance fields
.field protected mButtonActiveBackgroundColor:I

.field protected mButtonActiveTextColor:I

.field protected mButtonBackgroundColor:I

.field protected mButtonTextAllCaps:Z

.field protected mButtonTextColor:I

.field protected mExtraKeysViewClient:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;

.field protected mHandler:Landroid/os/Handler;

.field protected mLongPressCount:I

.field protected mLongPressRepeatDelay:I

.field protected mLongPressTimeout:I

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field protected mRepetitiveKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field protected mSpecialButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/termux/shared/termux/extrakeys/SpecialButton;",
            "Lcom/termux/shared/termux/extrakeys/SpecialButtonState;",
            ">;"
        }
    .end annotation
.end field

.field protected mSpecialButtonsKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    sget v0, Lcom/termux/shared/R$attr;->extraKeysButtonTextColor:I

    sput v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->ATTR_BUTTON_TEXT_COLOR:I

    .line 115
    sget v0, Lcom/termux/shared/R$attr;->extraKeysButtonActiveTextColor:I

    sput v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->ATTR_BUTTON_ACTIVE_TEXT_COLOR:I

    .line 117
    sget v0, Lcom/termux/shared/R$attr;->extraKeysButtonBackgroundColor:I

    sput v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->ATTR_BUTTON_BACKGROUND_COLOR:I

    .line 119
    sget v0, Lcom/termux/shared/R$attr;->extraKeysButtonActiveBackgroundColor:I

    sput v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->ATTR_BUTTON_ACTIVE_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 213
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonTextAllCaps:Z

    .line 215
    sget-object v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants;->PRIMARY_REPETITIVE_KEYS:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->setRepetitiveKeys(Ljava/util/List;)V

    .line 216
    invoke-virtual {p0, p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->getDefaultSpecialButtons(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->setSpecialButtons(Ljava/util/Map;)V

    .line 218
    sget v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->ATTR_BUTTON_TEXT_COLOR:I

    .line 219
    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/termux/shared/theme/ThemeUtils;->getSystemAttrColor(Landroid/content/Context;II)I

    move-result v0

    sget v1, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->ATTR_BUTTON_ACTIVE_TEXT_COLOR:I

    .line 220
    const v2, -0x7f2116

    invoke-static {p1, v1, v2}, Lcom/termux/shared/theme/ThemeUtils;->getSystemAttrColor(Landroid/content/Context;II)I

    move-result v1

    sget v2, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->ATTR_BUTTON_BACKGROUND_COLOR:I

    .line 221
    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/termux/shared/theme/ThemeUtils;->getSystemAttrColor(Landroid/content/Context;II)I

    move-result v2

    sget v3, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->ATTR_BUTTON_ACTIVE_BACKGROUND_COLOR:I

    .line 222
    const v4, -0x808081

    invoke-static {p1, v3, v4}, Lcom/termux/shared/theme/ThemeUtils;->getSystemAttrColor(Landroid/content/Context;II)I

    move-result v3

    .line 218
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->setButtonColors(IIII)V

    .line 224
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->setLongPressTimeout(I)V

    .line 225
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->setLongPressRepeatDelay(I)V

    .line 226
    return-void
.end method

.method public static maximumLength([[Ljava/lang/Object;)I
    .locals 5
    .param p0, "matrix"    # [[Ljava/lang/Object;

    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, "m":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 677
    .local v3, "row":[Ljava/lang/Object;
    array-length v4, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 676
    .end local v3    # "row":[Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 678
    :cond_0
    return v0
.end method


# virtual methods
.method public createSpecialButton(Ljava/lang/String;Z)Lcom/google/android/material/button/MaterialButton;
    .locals 5
    .param p1, "buttonKey"    # Ljava/lang/String;
    .param p2, "needUpdate"    # Z

    .line 658
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-static {p1}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/shared/termux/extrakeys/SpecialButton;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    .line 659
    .local v0, "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 660
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->setIsCreated(Z)V

    .line 661
    new-instance v2, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x101032f

    invoke-direct {v2, v3, v1, v4}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, v2

    .line 662
    .local v1, "button":Lcom/google/android/material/button/MaterialButton;
    iget-boolean v2, v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isActive:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveTextColor:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonTextColor:I

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 663
    if-eqz p2, :cond_2

    .line 664
    iget-object v2, v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->buttons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_2
    return-object v1
.end method

.method public dismissPopup()V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 621
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 622
    iput-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 623
    return-void
.end method

.method public getButtonActiveBackgroundColor()I
    .locals 1

    .line 322
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    return v0
.end method

.method public getButtonActiveTextColor()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveTextColor:I

    return v0
.end method

.method public getButtonBackgroundColor()I
    .locals 1

    .line 311
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    return v0
.end method

.method public getButtonTextColor()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonTextColor:I

    return v0
.end method

.method public getDefaultSpecialButtons(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)Ljava/util/Map;
    .locals 1
    .param p1, "extraKeysView"    # Lcom/termux/shared/termux/extrakeys/ExtraKeysView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/shared/termux/extrakeys/ExtraKeysView;",
            ")",
            "Ljava/util/Map<",
            "Lcom/termux/shared/termux/extrakeys/SpecialButton;",
            "Lcom/termux/shared/termux/extrakeys/SpecialButtonState;",
            ">;"
        }
    .end annotation

    .line 368
    new-instance v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;

    invoke-direct {v0, p0, p1}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V

    return-object v0
.end method

.method public getExtraKeysViewClient()Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mExtraKeysViewClient:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;

    return-object v0
.end method

.method public getLongPressRepeatDelay()I
    .locals 1

    .line 352
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    return v0
.end method

.method public getLongPressTimeout()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressTimeout:I

    return v0
.end method

.method public getRepetitiveKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mRepetitiveKeys:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mRepetitiveKeys:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getSpecialButtons()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/termux/shared/termux/extrakeys/SpecialButton;",
            "Lcom/termux/shared/termux/extrakeys/SpecialButtonState;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Lj$/util/stream/Collectors;->toMap(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getSpecialButtonsKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsKeys:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsKeys:Ljava/util/Set;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public isSpecialButton(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)Z
    .locals 2
    .param p1, "button"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    .line 629
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsKeys:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$reload$0$com-termux-shared-termux-extrakeys-ExtraKeysView(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V
    .locals 0
    .param p1, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p2, "button"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "view"    # Landroid/view/View;

    .line 418
    invoke-virtual {p0, p3, p1, p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V

    .line 419
    invoke-virtual {p0, p3, p1, p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->onAnyExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V

    .line 420
    return-void
.end method

.method synthetic lambda$reload$1$com-termux-shared-termux-extrakeys-ExtraKeysView(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p2, "button"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .line 423
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 468
    return v1

    .line 446
    :pswitch_0
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 447
    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->stopScheduledExecutors()V

    .line 448
    return v1

    .line 431
    :pswitch_1
    invoke-virtual {p1}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->getPopup()Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->stopScheduledExecutors()V

    .line 435
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 436
    invoke-virtual {p1}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->getPopup()Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->showPopup(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 439
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 440
    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->dismissPopup()V

    .line 443
    :cond_1
    return v1

    .line 451
    :pswitch_2
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 452
    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->stopScheduledExecutors()V

    .line 454
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressCount:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    .line 457
    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->dismissPopup()V

    .line 458
    invoke-virtual {p1}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->getPopup()Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 459
    invoke-virtual {p1}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->getPopup()Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    move-result-object v0

    invoke-virtual {p0, p3, v0, p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->onAnyExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V

    goto :goto_0

    .line 462
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->performClick()Z

    .line 465
    :cond_4
    :goto_0
    return v1

    .line 425
    :pswitch_3
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 427
    invoke-virtual {p0, p3, p1, p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->startScheduledExecutors(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V

    .line 428
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$startScheduledExecutors$2$com-termux-shared-termux-extrakeys-ExtraKeysView(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Lcom/google/android/material/button/MaterialButton;

    .line 543
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressCount:I

    .line 544
    invoke-virtual {p0, p1, p2, p3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V

    .line 545
    return-void
.end method

.method public onAnyExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Lcom/google/android/material/button/MaterialButton;

    .line 520
    invoke-virtual {p0, p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressCount:I

    if-lez v0, :cond_0

    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/shared/termux/extrakeys/SpecialButton;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    .line 523
    .local v0, "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    if-nez v0, :cond_1

    return-void

    .line 526
    :cond_1
    iget-boolean v1, v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isActive:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->setIsActive(Z)V

    .line 527
    iget-boolean v1, v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isActive:Z

    if-nez v1, :cond_2

    .line 528
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->setIsLocked(Z)V

    .line 529
    .end local v0    # "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    :cond_2
    goto :goto_0

    .line 530
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V

    .line 532
    :goto_0
    return-void
.end method

.method public onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Lcom/google/android/material/button/MaterialButton;

    .line 492
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mExtraKeysViewClient:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mExtraKeysViewClient:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;

    invoke-interface {v0, p1, p2, p3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;->onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V

    .line 494
    :cond_0
    return-void
.end method

.method public performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Lcom/google/android/material/button/MaterialButton;

    .line 497
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mExtraKeysViewClient:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mExtraKeysViewClient:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;

    invoke-interface {v0, p1, p2, p3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;->performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    return-void

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v3, 0x3

    if-lt v0, v1, :cond_1

    .line 507
    invoke-virtual {p3, v3}, Lcom/google/android/material/button/MaterialButton;->performHapticFeedback(I)Z

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 511
    invoke-virtual {p3, v3}, Lcom/google/android/material/button/MaterialButton;->performHapticFeedback(I)Z

    .line 515
    :cond_2
    :goto_0
    return-void
.end method

.method public readSpecialButton(Lcom/termux/shared/termux/extrakeys/SpecialButton;Z)Ljava/lang/Boolean;
    .locals 3
    .param p1, "specialButton"    # Lcom/termux/shared/termux/extrakeys/SpecialButton;
    .param p2, "autoSetInActive"    # Z

    .line 644
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    .line 645
    .local v0, "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 647
    :cond_0
    iget-boolean v1, v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isCreated:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isActive:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 651
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v1, v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isLocked:Z

    if-nez v1, :cond_2

    .line 652
    invoke-virtual {v0, v2}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->setIsActive(Z)V

    .line 654
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 648
    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public reload(Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;F)V
    .locals 11
    .param p1, "extraKeysInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;
    .param p2, "heightPx"    # F

    .line 387
    if-nez p1, :cond_0

    .line 388
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    .line 391
    .local v1, "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->buttons:Ljava/util/List;

    .end local v1    # "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    goto :goto_0

    .line 393
    :cond_1
    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->removeAllViews()V

    .line 395
    invoke-virtual {p1}, Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;->getMatrix()[[Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    move-result-object v0

    .line 397
    .local v0, "buttons":[[Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->setRowCount(I)V

    .line 398
    invoke-static {v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->maximumLength([[Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->setColumnCount(I)V

    .line 400
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 401
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_2
    aget-object v3, v0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 402
    aget-object v3, v0, v1

    aget-object v3, v3, v2

    .line 405
    .local v3, "buttonInfo":Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    invoke-virtual {p0, v3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    invoke-virtual {v3}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->createSpecialButton(Ljava/lang/String;Z)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    .line 407
    .local v4, "button":Lcom/google/android/material/button/MaterialButton;
    if-nez v4, :cond_3

    return-void

    .line 409
    .end local v4    # "button":Lcom/google/android/material/button/MaterialButton;
    :cond_2
    new-instance v4, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x101032f

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 412
    .restart local v4    # "button":Lcom/google/android/material/button/MaterialButton;
    :cond_3
    invoke-virtual {v3}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->getDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget v5, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonTextColor:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 414
    iget-boolean v5, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonTextAllCaps:Z

    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setAllCaps(Z)V

    .line 415
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/google/android/material/button/MaterialButton;->setPadding(IIII)V

    .line 417
    new-instance v6, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v3, v4}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda4;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v4, v6}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    new-instance v6, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v3, v4}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda5;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v4, v6}, Lcom/google/android/material/button/MaterialButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 472
    new-instance v6, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v6}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 473
    .local v6, "param":Landroid/widget/GridLayout$LayoutParams;
    iput v5, v6, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 474
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ne v7, v8, :cond_4

    .line 475
    float-to-double v7, p2

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v6, Landroid/widget/GridLayout$LayoutParams;->height:I

    goto :goto_3

    .line 477
    :cond_4
    iput v5, v6, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 479
    :goto_3
    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 480
    sget-object v5, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v2, v5, v7}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    iput-object v5, v6, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 481
    sget-object v5, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    invoke-static {v1, v5, v7}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    iput-object v5, v6, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 482
    invoke-virtual {v4, v6}, Lcom/google/android/material/button/MaterialButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    invoke-virtual {p0, v4}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->addView(Landroid/view/View;)V

    .line 401
    .end local v3    # "buttonInfo":Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .end local v4    # "button":Lcom/google/android/material/button/MaterialButton;
    .end local v6    # "param":Landroid/widget/GridLayout$LayoutParams;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 400
    .end local v2    # "col":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 487
    .end local v1    # "row":I
    :cond_6
    return-void
.end method

.method public setButtonActiveBackgroundColor(I)V
    .locals 0
    .param p1, "buttonActiveBackgroundColor"    # I

    .line 327
    iput p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    .line 328
    return-void
.end method

.method public setButtonActiveTextColor(I)V
    .locals 0
    .param p1, "buttonActiveTextColor"    # I

    .line 305
    iput p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveTextColor:I

    .line 306
    return-void
.end method

.method public setButtonBackgroundColor(I)V
    .locals 0
    .param p1, "buttonBackgroundColor"    # I

    .line 316
    iput p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    .line 317
    return-void
.end method

.method public setButtonColors(IIII)V
    .locals 0
    .param p1, "buttonTextColor"    # I
    .param p2, "buttonActiveTextColor"    # I
    .param p3, "buttonBackgroundColor"    # I
    .param p4, "buttonActiveBackgroundColor"    # I

    .line 280
    iput p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonTextColor:I

    .line 281
    iput p2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveTextColor:I

    .line 282
    iput p3, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    .line 283
    iput p4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    .line 284
    return-void
.end method

.method public setButtonTextAllCaps(Z)V
    .locals 0
    .param p1, "buttonTextAllCaps"    # Z

    .line 332
    iput-boolean p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonTextAllCaps:Z

    .line 333
    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 0
    .param p1, "buttonTextColor"    # I

    .line 294
    iput p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonTextColor:I

    .line 295
    return-void
.end method

.method public setExtraKeysViewClient(Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;)V
    .locals 0
    .param p1, "extraKeysViewClient"    # Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;

    .line 236
    iput-object p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mExtraKeysViewClient:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;

    .line 237
    return-void
.end method

.method public setLongPressRepeatDelay(I)V
    .locals 2
    .param p1, "longPressRepeatDelay"    # I

    .line 357
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_0

    .line 358
    iput p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    goto :goto_0

    .line 360
    :cond_0
    const/16 v0, 0x50

    iput v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    .line 362
    :goto_0
    return-void
.end method

.method public setLongPressTimeout(I)V
    .locals 1
    .param p1, "longPressDuration"    # I

    .line 343
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0xbb8

    if-gt p1, v0, :cond_0

    .line 344
    iput p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressTimeout:I

    goto :goto_0

    .line 346
    :cond_0
    const/16 v0, 0x190

    iput v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressTimeout:I

    .line 348
    :goto_0
    return-void
.end method

.method public setRepetitiveKeys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 248
    .local p1, "repetitiveKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mRepetitiveKeys:Ljava/util/List;

    .line 249
    return-void
.end method

.method public setSpecialButtons(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/termux/shared/termux/extrakeys/SpecialButton;",
            "Lcom/termux/shared/termux/extrakeys/SpecialButtonState;",
            ">;)V"
        }
    .end annotation

    .line 266
    .local p1, "specialButtons":Ljava/util/Map;, "Ljava/util/Map<Lcom/termux/shared/termux/extrakeys/SpecialButton;Lcom/termux/shared/termux/extrakeys/SpecialButtonState;>;"
    iput-object p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    .line 267
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsKeys:Ljava/util/Set;

    .line 268
    return-void
.end method

.method showPopup(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "extraButton"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    .line 590
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 591
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 593
    .local v1, "height":I
    invoke-virtual {p0, p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 594
    invoke-virtual {p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->createSpecialButton(Ljava/lang/String;Z)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    .line 595
    .local v2, "button":Lcom/google/android/material/button/MaterialButton;
    if-nez v2, :cond_1

    return-void

    .line 597
    .end local v2    # "button":Lcom/google/android/material/button/MaterialButton;
    :cond_0
    new-instance v2, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x101032f

    invoke-direct {v2, v4, v5, v6}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 598
    .restart local v2    # "button":Lcom/google/android/material/button/MaterialButton;
    iget v4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonTextColor:I

    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 600
    :cond_1
    invoke-virtual {p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->getDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-boolean v4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonTextAllCaps:Z

    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setAllCaps(Z)V

    .line 602
    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/google/android/material/button/MaterialButton;->setPadding(IIII)V

    .line 603
    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setMinHeight(I)V

    .line 604
    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setMinWidth(I)V

    .line 605
    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setMinimumWidth(I)V

    .line 606
    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setMinimumHeight(I)V

    .line 607
    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->setWidth(I)V

    .line 608
    invoke-virtual {v2, v1}, Lcom/google/android/material/button/MaterialButton;->setHeight(I)V

    .line 609
    iget v4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    .line 610
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 611
    iget-object v4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 612
    iget-object v4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 613
    iget-object v4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 614
    iget-object v4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 615
    iget-object v4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 616
    iget-object v4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    mul-int/lit8 v5, v1, -0x2

    invoke-virtual {v4, p1, v3, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 617
    return-void
.end method

.method public startScheduledExecutors(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Lcom/google/android/material/button/MaterialButton;

    .line 536
    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->stopScheduledExecutors()V

    .line 537
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressCount:I

    .line 538
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mRepetitiveKeys:Ljava/util/List;

    invoke-virtual {p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 542
    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda3;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V

    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressTimeout:I

    int-to-long v3, v0

    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    int-to-long v5, v0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {p0, p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 551
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/shared/termux/extrakeys/SpecialButton;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    .line 552
    .local v0, "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    if-nez v0, :cond_1

    return-void

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 554
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mHandler:Landroid/os/Handler;

    .line 555
    :cond_2
    new-instance v1, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    invoke-direct {v1, p0, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/SpecialButtonState;)V

    iput-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    .line 556
    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    iget v3, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 558
    .end local v0    # "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    :cond_3
    :goto_0
    return-void
.end method

.method public stopScheduledExecutors()V
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 563
    iput-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 568
    iput-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    .line 570
    :cond_1
    return-void
.end method

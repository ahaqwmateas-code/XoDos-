.class public final Lcom/termux/x11/extrakeys/TermuxExtraKeysView;
.super Landroid/widget/GridLayout;
.source "TermuxExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/extrakeys/TermuxExtraKeysView$IExtraKeysView;,
        Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;
    }
.end annotation


# static fields
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
.field private mButtonActiveBackgroundColor:I

.field private mButtonActiveTextColor:I

.field private mButtonBackgroundColor:I

.field private mButtonTextAllCaps:Z

.field private mButtonTextColor:I

.field private mExtraKeysViewClient:Lcom/termux/x11/extrakeys/TermuxExtraKeysView$IExtraKeysView;

.field private mHandler:Landroid/os/Handler;

.field private mLongPressCount:I

.field private mLongPressRepeatDelay:I

.field private mLongPressTimeout:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRepetitiveKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mSpecialButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;",
            "Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialButtonsKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialButtonsLongHoldRunnable:Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 196
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonTextAllCaps:Z

    .line 198
    sget-object v0, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysConstants;->PRIMARY_REPETITIVE_KEYS:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->setRepetitiveKeys(Ljava/util/List;)V

    .line 199
    invoke-virtual {p0, p0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->getDefaultSpecialButtons(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->setSpecialButtons(Ljava/util/Map;)V

    .line 201
    const/4 v0, 0x0

    const v1, -0x808081

    const/4 v2, -0x1

    const v3, -0x7f2116

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->setButtonColors(IIII)V

    .line 203
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->setLongPressTimeout(I)V

    .line 204
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->setLongPressRepeatDelay(I)V

    .line 205
    return-void
.end method

.method static synthetic access$008(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)I
    .locals 2
    .param p0, "x0"    # Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    .line 74
    iget v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressCount:I

    return v0
.end method

.method public static maximumLength([[Ljava/lang/Object;)I
    .locals 5
    .param p0, "matrix"    # [[Ljava/lang/Object;

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "m":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 573
    .local v3, "row":[Ljava/lang/Object;
    array-length v4, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 572
    .end local v3    # "row":[Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 574
    :cond_0
    return v0
.end method


# virtual methods
.method public createSpecialButton(Ljava/lang/String;Z)Landroid/widget/Button;
    .locals 5
    .param p1, "buttonKey"    # Ljava/lang/String;
    .param p2, "needUpdate"    # Z

    .line 556
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-static {p1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    .line 557
    .local v0, "state":Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 558
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->setIsCreated(Z)V

    .line 559
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x101032f

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, v2

    .line 560
    .local v1, "button":Landroid/widget/Button;
    iget-boolean v2, v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->isActive:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonActiveTextColor:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonTextColor:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 561
    if-eqz p2, :cond_2

    .line 562
    iget-object v2, v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->buttons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_2
    return-object v1
.end method

.method public dismissPopup()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 521
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 522
    iput-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 523
    return-void
.end method

.method public getButtonActiveTextColor()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonActiveTextColor:I

    return v0
.end method

.method public getButtonTextColor()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonTextColor:I

    return v0
.end method

.method public getDefaultSpecialButtons(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)Ljava/util/Map;
    .locals 1
    .param p1, "termuxExtraKeysView"    # Lcom/termux/x11/extrakeys/TermuxExtraKeysView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/x11/extrakeys/TermuxExtraKeysView;",
            ")",
            "Ljava/util/Map<",
            "Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;",
            "Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$1;

    invoke-direct {v0, p0, p1}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$1;-><init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)V

    return-object v0
.end method

.method public isSpecialButton(Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;)Z
    .locals 2
    .param p1, "button"    # Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

    .line 527
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mSpecialButtonsKeys:Ljava/util/Set;

    iget-object v1, p1, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$reload$0$com-termux-x11-extrakeys-TermuxExtraKeysView(Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0
    .param p1, "buttonInfo"    # Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;
    .param p2, "button"    # Landroid/widget/Button;
    .param p3, "view"    # Landroid/view/View;

    .line 329
    invoke-virtual {p0, p3, p1, p2}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V

    .line 330
    invoke-virtual {p0, p3, p1, p2}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->onAnyExtraKeyButtonClick(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V

    .line 331
    return-void
.end method

.method synthetic lambda$reload$1$com-termux-x11-extrakeys-TermuxExtraKeysView(Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "buttonInfo"    # Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;
    .param p2, "button"    # Landroid/widget/Button;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .line 334
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 379
    return v1

    .line 357
    :pswitch_0
    iget v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 358
    invoke-virtual {p0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->stopScheduledExecutors()V

    .line 359
    return v1

    .line 342
    :pswitch_1
    iget-object v0, p1, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->popup:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->stopScheduledExecutors()V

    .line 346
    iget v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 347
    iget-object v0, p1, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->popup:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

    invoke-virtual {p0, p3, v0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->showPopup(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 350
    iget v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonActiveBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 351
    invoke-virtual {p0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->dismissPopup()V

    .line 354
    :cond_1
    return v1

    .line 362
    :pswitch_2
    iget v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 363
    invoke-virtual {p0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->stopScheduledExecutors()V

    .line 365
    iget v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressCount:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    .line 368
    invoke-virtual {p0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->dismissPopup()V

    .line 369
    iget-object v0, p1, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->popup:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

    if-eqz v0, :cond_4

    .line 370
    iget-object v0, p1, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->popup:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

    invoke-virtual {p0, p3, v0, p2}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->onAnyExtraKeyButtonClick(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V

    goto :goto_0

    .line 373
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->performClick()Z

    .line 376
    :cond_4
    :goto_0
    return v1

    .line 336
    :pswitch_3
    iget v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonActiveBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 338
    invoke-virtual {p0, p3, p1, p2}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->startScheduledExecutors(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V

    .line 339
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

.method synthetic lambda$startScheduledExecutors$2$com-termux-x11-extrakeys-TermuxExtraKeysView(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;

    .line 445
    iget v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressCount:I

    .line 446
    invoke-virtual {p0, p1, p2, p3}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V

    .line 447
    return-void
.end method

.method public onAnyExtraKeyButtonClick(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;

    .line 423
    invoke-virtual {p0, p2}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->isSpecialButton(Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    iget v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressCount:I

    if-lez v0, :cond_0

    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    iget-object v1, p2, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    .line 426
    .local v0, "state":Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;
    if-nez v0, :cond_1

    return-void

    .line 429
    :cond_1
    iget-boolean v1, v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->isActive:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->setIsActive(Z)V

    .line 430
    iget-boolean v1, v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->isActive:Z

    if-nez v1, :cond_2

    .line 431
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->setIsLocked(Z)V

    .line 432
    .end local v0    # "state":Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;
    :cond_2
    goto :goto_0

    .line 433
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V

    .line 435
    :goto_0
    return-void
.end method

.method public onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;

    .line 397
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mExtraKeysViewClient:Lcom/termux/x11/extrakeys/TermuxExtraKeysView$IExtraKeysView;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mExtraKeysViewClient:Lcom/termux/x11/extrakeys/TermuxExtraKeysView$IExtraKeysView;

    invoke-interface {v0, p1, p2, p3}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$IExtraKeysView;->onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V

    .line 399
    :cond_0
    return-void
.end method

.method public performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;

    .line 402
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mExtraKeysViewClient:Lcom/termux/x11/extrakeys/TermuxExtraKeysView$IExtraKeysView;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mExtraKeysViewClient:Lcom/termux/x11/extrakeys/TermuxExtraKeysView$IExtraKeysView;

    invoke-interface {v0, p1, p2, p3}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$IExtraKeysView;->performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    return-void

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v3, 0x3

    if-lt v0, v1, :cond_1

    .line 412
    invoke-virtual {p3, v3}, Landroid/widget/Button;->performHapticFeedback(I)Z

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 416
    invoke-virtual {p3, v3}, Landroid/widget/Button;->performHapticFeedback(I)Z

    .line 420
    :cond_2
    :goto_0
    return-void
.end method

.method public readSpecialButton(Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;Z)Ljava/lang/Boolean;
    .locals 3
    .param p1, "termuxX11SpecialButton"    # Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;
    .param p2, "autoSetInActive"    # Z

    .line 542
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    .line 543
    .local v0, "state":Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 545
    :cond_0
    iget-boolean v1, v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->isCreated:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->isActive:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 549
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v1, v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->isLocked:Z

    if-nez v1, :cond_2

    .line 550
    invoke-virtual {v0, v2}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->setIsActive(Z)V

    .line 552
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 546
    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public reload(Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;F)V
    .locals 8
    .param p1, "termuxX11ExtraKeysInfo"    # Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;
    .param p2, "heightPx"    # F

    .line 290
    if-nez p1, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mSpecialButtons:Ljava/util/Map;

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

    check-cast v1, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    .line 294
    .local v1, "state":Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->buttons:Ljava/util/List;

    .end local v1    # "state":Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;
    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->removeAllViews()V

    .line 298
    invoke-virtual {p1}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;->getMatrix()[[Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

    move-result-object v0

    .line 300
    .local v0, "buttons":[[Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->setRowCount(I)V

    .line 301
    invoke-static {v0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->maximumLength([[Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->setColumnCount(I)V

    .line 303
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 304
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_2
    aget-object v3, v0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 305
    aget-object v3, v0, v1

    aget-object v3, v3, v2

    .line 308
    .local v3, "buttonInfo":Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;
    invoke-virtual {p0, v3}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->isSpecialButton(Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 309
    iget-object v4, v3, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->key:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->createSpecialButton(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v4

    .line 310
    .local v4, "button":Landroid/widget/Button;
    if-nez v4, :cond_3

    return-void

    .line 312
    .end local v4    # "button":Landroid/widget/Button;
    :cond_2
    new-instance v4, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x101032f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 315
    .restart local v4    # "button":Landroid/widget/Button;
    :cond_3
    new-instance v5, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$2;

    const/high16 v6, -0x1000000

    invoke-direct {v5, p0, v6}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$2;-><init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v5, v3, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->display:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget v5, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 325
    iget-boolean v5, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonTextAllCaps:Z

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 326
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 328
    new-instance v6, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v3, v4}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    new-instance v6, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v3, v4}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda1;-><init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 383
    new-instance v6, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v6}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 384
    .local v6, "param":Landroid/widget/GridLayout$LayoutParams;
    iput v5, v6, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 385
    iput v5, v6, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 386
    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 387
    sget-object v5, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v2, v5, v7}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    iput-object v5, v6, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 388
    sget-object v5, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    invoke-static {v1, v5, v7}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    iput-object v5, v6, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 389
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    invoke-virtual {p0, v4}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->addView(Landroid/view/View;)V

    .line 304
    .end local v3    # "buttonInfo":Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;
    .end local v4    # "button":Landroid/widget/Button;
    .end local v6    # "param":Landroid/widget/GridLayout$LayoutParams;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 303
    .end local v2    # "col":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 394
    .end local v1    # "row":I
    :cond_5
    return-void
.end method

.method public setButtonColors(IIII)V
    .locals 0
    .param p1, "buttonTextColor"    # I
    .param p2, "buttonActiveTextColor"    # I
    .param p3, "buttonBackgroundColor"    # I
    .param p4, "buttonActiveBackgroundColor"    # I

    .line 234
    iput p1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonTextColor:I

    .line 235
    iput p2, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonActiveTextColor:I

    .line 236
    iput p3, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonBackgroundColor:I

    .line 237
    iput p4, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonActiveBackgroundColor:I

    .line 238
    return-void
.end method

.method public setExtraKeysViewClient(Lcom/termux/x11/extrakeys/TermuxExtraKeysView$IExtraKeysView;)V
    .locals 0
    .param p1, "extraKeysViewClient"    # Lcom/termux/x11/extrakeys/TermuxExtraKeysView$IExtraKeysView;

    .line 210
    iput-object p1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mExtraKeysViewClient:Lcom/termux/x11/extrakeys/TermuxExtraKeysView$IExtraKeysView;

    .line 211
    return-void
.end method

.method public setLongPressRepeatDelay(I)V
    .locals 2
    .param p1, "longPressRepeatDelay"    # I

    .line 262
    iget v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressRepeatDelay:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressRepeatDelay:I

    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_0

    .line 263
    iput p1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressRepeatDelay:I

    goto :goto_0

    .line 265
    :cond_0
    const/16 v0, 0x50

    iput v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressRepeatDelay:I

    .line 267
    :goto_0
    return-void
.end method

.method public setLongPressTimeout(I)V
    .locals 1
    .param p1, "longPressDuration"    # I

    .line 253
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0xbb8

    if-gt p1, v0, :cond_0

    .line 254
    iput p1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressTimeout:I

    goto :goto_0

    .line 256
    :cond_0
    const/16 v0, 0x190

    iput v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressTimeout:I

    .line 258
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

    .line 215
    .local p1, "repetitiveKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mRepetitiveKeys:Ljava/util/List;

    .line 216
    return-void
.end method

.method public setSpecialButtons(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;",
            "Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p1, "specialButtons":Ljava/util/Map;, "Ljava/util/Map<Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;>;"
    iput-object p1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    .line 221
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mSpecialButtonsKeys:Ljava/util/Set;

    .line 222
    return-void
.end method

.method showPopup(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "extraButton"    # Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 491
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 493
    .local v1, "height":I
    invoke-virtual {p0, p2}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->isSpecialButton(Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 494
    iget-object v2, p2, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->key:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->createSpecialButton(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v2

    .line 495
    .local v2, "button":Landroid/widget/Button;
    if-nez v2, :cond_1

    return-void

    .line 497
    .end local v2    # "button":Landroid/widget/Button;
    :cond_0
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x101032f

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 498
    .restart local v2    # "button":Landroid/widget/Button;
    iget v4, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 500
    :cond_1
    iget-object v4, p2, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->display:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-boolean v4, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonTextAllCaps:Z

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 502
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 503
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinHeight(I)V

    .line 504
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinWidth(I)V

    .line 505
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 506
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 507
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setWidth(I)V

    .line 508
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setHeight(I)V

    .line 509
    iget v4, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mButtonActiveBackgroundColor:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 510
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 511
    iget-object v4, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 512
    iget-object v4, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 513
    iget-object v4, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 514
    iget-object v4, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 515
    iget-object v4, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 516
    iget-object v4, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    mul-int/lit8 v5, v1, -0x2

    invoke-virtual {v4, p1, v3, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 517
    return-void
.end method

.method public startScheduledExecutors(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;

    .line 438
    invoke-virtual {p0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->stopScheduledExecutors()V

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressCount:I

    .line 440
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mRepetitiveKeys:Ljava/util/List;

    iget-object v1, p2, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 444
    iget-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V

    iget v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressTimeout:I

    int-to-long v3, v0

    iget v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressRepeatDelay:I

    int-to-long v5, v0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {p0, p2}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->isSpecialButton(Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    iget-object v1, p2, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    .line 454
    .local v0, "state":Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;
    if-nez v0, :cond_1

    return-void

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 456
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mHandler:Landroid/os/Handler;

    .line 457
    :cond_2
    new-instance v1, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;

    invoke-direct {v1, p0, v0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;-><init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;)V

    iput-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;

    .line 458
    iget-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;

    iget v3, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mLongPressTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 460
    .end local v0    # "state":Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;
    :cond_3
    :goto_0
    return-void
.end method

.method public stopScheduledExecutors()V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 465
    iput-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 470
    iput-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;

    .line 472
    :cond_1
    return-void
.end method

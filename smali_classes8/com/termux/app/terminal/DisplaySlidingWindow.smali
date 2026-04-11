.class public Lcom/termux/app/terminal/DisplaySlidingWindow;
.super Landroid/widget/HorizontalScrollView;
.source "DisplaySlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/terminal/DisplaySlidingWindow$OnMenuChangeListener;,
        Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;
    }
.end annotation


# static fields
.field public static mLandscape:Z


# instance fields
.field private mContent:Landroid/view/ViewGroup;

.field private mContentType:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

.field private mContentWidth:I

.field private mDownX:F

.field private mDownY:F

.field private mHalfMenuWidth:I

.field private mIsLeftMenuOpen:Z

.field private mIsOperateLeft:Z

.field private mIsOperateRight:Z

.field private mIsRightMenuOpen:Z

.field private mLeftMenu:Landroid/view/ViewGroup;

.field private mLockContentSlider:Z

.field private mMenuRightPadding:I

.field private mMenuSwitchSlider:Z

.field private mMenuWidth:I

.field private mMoving:Z

.field public mOnMenuChangeListener:Lcom/termux/app/terminal/DisplaySlidingWindow$OnMenuChangeListener;

.field private mRefreshEnd:Z

.field private mRightMenu:Landroid/view/ViewGroup;

.field private mStatusHeight:I

.field private mTermuxActivity:Lcom/termux/app/TermuxActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLandscape:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/termux/app/terminal/DisplaySlidingWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/termux/app/terminal/DisplaySlidingWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->setClickable(Z)V

    .line 91
    iput-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLockContentSlider:Z

    .line 92
    sget-object v0, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->CENTER_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    iput-object v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContentType:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    .line 93
    invoke-direct {p0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->remeasure()V

    .line 94
    return-void
.end method

.method private remeasure()V
    .locals 3

    .line 125
    invoke-virtual {p0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/app/terminal/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContentWidth:I

    .line 126
    invoke-static {}, Lcom/termux/app/terminal/utils/ScreenUtils;->getStatusHeight()I

    move-result v0

    iput v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mStatusHeight:I

    .line 127
    invoke-static {}, Lcom/termux/app/TermuxActivity;->getPrefs()Lcom/termux/x11/Prefs;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/x11/Prefs;->hideCutout:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    .line 128
    .local v0, "hideCutout":Z
    sget-boolean v1, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLandscape:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 129
    if-eqz v0, :cond_0

    .line 130
    iput v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mStatusHeight:I

    .line 132
    :cond_0
    iget v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContentWidth:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuRightPadding:I

    goto :goto_0

    .line 134
    :cond_1
    iput v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuRightPadding:I

    .line 137
    :goto_0
    return-void
.end method

.method public static setLandscape(Z)V
    .locals 0
    .param p0, "isLandscape"    # Z

    .line 85
    sput-boolean p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLandscape:Z

    .line 86
    return-void
.end method


# virtual methods
.method public changeLayoutOrientation(I)V
    .locals 2
    .param p1, "landscapeOrientation"    # I

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mRefreshEnd:Z

    .line 300
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLandscape:Z

    .line 301
    invoke-virtual {p0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->requestLayout()V

    .line 302
    return-void
.end method

.method public isContentSwitchSlider()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLockContentSlider:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 151
    sget-boolean v0, Lcom/termux/x11/MainActivity;->mLorieViewConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLockContentSlider:Z

    if-nez v0, :cond_0

    .line 152
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 155
    :cond_0
    iget-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLockContentSlider:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxActivity;->sendTouchEvent(Landroid/view/MotionEvent;)Z

    .line 157
    return v1

    .line 159
    :cond_1
    iget-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuSwitchSlider:Z

    if-eqz v0, :cond_3

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_0
    invoke-virtual {p0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->getScrollX()I

    move-result v0

    .line 171
    .local v0, "scrollX":I
    iput-boolean v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMoving:Z

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mDownX:F

    sub-float/2addr v2, v3

    .line 173
    .local v2, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mDownY:F

    sub-float/2addr v3, v4

    .line 174
    .local v3, "dy":F
    if-gtz v0, :cond_2

    .line 175
    float-to-double v4, v2

    iget v6, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double v6, v6, v8

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 176
    iget-object v4, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v4}, Lcom/termux/app/TermuxActivity;->onEdgeReached()V

    goto :goto_0

    .line 162
    .end local v0    # "scrollX":I
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :pswitch_1
    iget-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMoving:Z

    if-nez v0, :cond_2

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mDownX:F

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mDownY:F

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMoving:Z

    .line 180
    :cond_2
    :goto_0
    return v1

    .line 182
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 141
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 142
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->onResume()V

    .line 146
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mRefreshEnd:Z

    .line 147
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 105
    iget-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mRefreshEnd:Z

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->remeasure()V

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/termux/app/terminal/DisplayWindowLinearLayout;

    .line 108
    .local v1, "mWrapper":Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLeftMenu:Landroid/view/ViewGroup;

    .line 109
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContent:Landroid/view/ViewGroup;

    .line 110
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mRightMenu:Landroid/view/ViewGroup;

    .line 111
    iget v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContentWidth:I

    iget v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuRightPadding:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    .line 112
    iget v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    div-int/2addr v2, v0

    iput v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mHalfMenuWidth:I

    .line 113
    iget-object v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLeftMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 114
    iget-object v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLeftMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    iget-object v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContentWidth:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    iget-object v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    iget-object v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mRightMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 118
    iget-object v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mRightMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    .end local v1    # "mWrapper":Landroid/view/ViewGroup;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 122
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 322
    sget-object v0, Lcom/termux/app/terminal/DisplaySlidingWindow$1;->$SwitchMap$com$termux$app$terminal$DisplaySlidingWindow$ContentType:[I

    iget-object v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContentType:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    invoke-virtual {v1}, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 332
    invoke-virtual {p0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->showContent()V

    goto :goto_0

    .line 328
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->setX11PreferenceSwitchSlider(Z)V

    .line 329
    goto :goto_0

    .line 324
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->setTerminalViewSwitchSlider(Z)V

    .line 325
    nop

    .line 334
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 253
    iget v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, v0, :cond_0

    .line 254
    iput-boolean v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsOperateRight:Z

    .line 255
    iput-boolean v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsOperateLeft:Z

    goto :goto_0

    .line 257
    :cond_0
    iput-boolean v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsOperateRight:Z

    .line 258
    iput-boolean v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsOperateLeft:Z

    .line 260
    :goto_0
    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 261
    .local v0, "scale":F
    iget-object v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContent:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    int-to-float v3, v3

    sub-float v1, v0, v1

    mul-float v3, v3, v1

    invoke-static {v2, v3}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 262
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 188
    .local v0, "action":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 241
    iget-boolean v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLockContentSlider:Z

    if-eqz v2, :cond_8

    .line 242
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_2

    .line 191
    :pswitch_0
    invoke-virtual {p0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->getScrollX()I

    move-result v2

    .line 193
    .local v2, "scrollX":I
    iget-boolean v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsOperateLeft:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 195
    iget v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mHalfMenuWidth:I

    if-le v2, v3, :cond_1

    .line 196
    iget v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    invoke-virtual {p0, v3, v1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->smoothScrollTo(II)V

    .line 198
    iget-boolean v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsLeftMenuOpen:Z

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3, v1, v1}, Lcom/termux/app/TermuxActivity;->onMenuOpen(ZI)V

    .line 200
    sget-object v3, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->CENTER_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    iput-object v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContentType:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    .line 202
    :cond_0
    iput-boolean v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsLeftMenuOpen:Z

    .line 203
    iput-boolean v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLockContentSlider:Z

    .line 204
    iput-boolean v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuSwitchSlider:Z

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->smoothScrollTo(II)V

    .line 208
    iget-boolean v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsLeftMenuOpen:Z

    if-nez v3, :cond_2

    .line 209
    iget-object v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3, v4, v1}, Lcom/termux/app/TermuxActivity;->onMenuOpen(ZI)V

    .line 210
    sget-object v3, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->LEFT_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    iput-object v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContentType:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    .line 212
    :cond_2
    iput-boolean v4, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsLeftMenuOpen:Z

    .line 213
    iput-boolean v4, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuSwitchSlider:Z

    .line 217
    :cond_3
    :goto_0
    iget-boolean v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsOperateRight:Z

    if-eqz v3, :cond_7

    .line 218
    iget v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mHalfMenuWidth:I

    iget v5, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    add-int/2addr v3, v5

    if-le v2, v3, :cond_5

    .line 219
    iget v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    iget v5, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    add-int/2addr v3, v5

    iget v5, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mStatusHeight:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    invoke-virtual {p0, v3, v1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->smoothScrollTo(II)V

    .line 220
    iget-boolean v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsRightMenuOpen:Z

    if-nez v3, :cond_4

    .line 221
    iget-object v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3, v4, v4}, Lcom/termux/app/TermuxActivity;->onMenuOpen(ZI)V

    .line 222
    sget-object v3, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->RIGHT_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    iput-object v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContentType:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    .line 224
    :cond_4
    iput-boolean v4, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsRightMenuOpen:Z

    .line 225
    iput-boolean v4, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuSwitchSlider:Z

    goto :goto_1

    .line 229
    :cond_5
    iget v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    invoke-virtual {p0, v3, v1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->smoothScrollTo(II)V

    .line 230
    iget-boolean v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsRightMenuOpen:Z

    if-eqz v3, :cond_6

    .line 231
    iget-object v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3, v1, v4}, Lcom/termux/app/TermuxActivity;->onMenuOpen(ZI)V

    .line 232
    sget-object v3, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->CENTER_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    iput-object v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContentType:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    .line 234
    :cond_6
    iput-boolean v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsRightMenuOpen:Z

    .line 235
    iput-boolean v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLockContentSlider:Z

    .line 236
    iput-boolean v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuSwitchSlider:Z

    .line 239
    :cond_7
    :goto_1
    return v1

    .line 246
    .end local v2    # "scrollX":I
    :goto_2
    return v1

    .line 244
    :cond_8
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public releaseSlider(Z)V
    .locals 1
    .param p1, "open"    # Z

    .line 305
    iput-boolean p1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLockContentSlider:Z

    .line 306
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuSwitchSlider:Z

    .line 307
    return-void
.end method

.method public setOnMenuOpenListener(Lcom/termux/app/terminal/DisplaySlidingWindow$OnMenuChangeListener;)V
    .locals 0
    .param p1, "mOnMenuChangeListener"    # Lcom/termux/app/terminal/DisplaySlidingWindow$OnMenuChangeListener;

    .line 57
    iput-object p1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mOnMenuChangeListener:Lcom/termux/app/terminal/DisplaySlidingWindow$OnMenuChangeListener;

    .line 58
    return-void
.end method

.method public setTerminalViewSwitchSlider(Z)V
    .locals 3
    .param p1, "openSlider"    # Z

    .line 282
    iput-boolean p1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuSwitchSlider:Z

    .line 283
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 284
    iget v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    invoke-virtual {p0, v1, v0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->smoothScrollTo(II)V

    .line 285
    iget-object v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1, v0, v0}, Lcom/termux/app/TermuxActivity;->onMenuOpen(ZI)V

    .line 286
    sget-object v1, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->CENTER_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    iput-object v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContentType:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    .line 287
    iput-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsLeftMenuOpen:Z

    .line 288
    iput-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLockContentSlider:Z

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->smoothScrollTo(II)V

    .line 291
    iget-object v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/termux/app/TermuxActivity;->onMenuOpen(ZI)V

    .line 292
    sget-object v0, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->LEFT_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    iput-object v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContentType:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    .line 293
    iput-boolean v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsLeftMenuOpen:Z

    .line 294
    iput-boolean v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLockContentSlider:Z

    .line 296
    :goto_0
    return-void
.end method

.method public setTermuxActivity(Lcom/termux/app/TermuxActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/termux/app/TermuxActivity;

    .line 36
    iput-object p1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    .line 37
    return-void
.end method

.method public setX11PreferenceSwitchSlider(Z)V
    .locals 4
    .param p1, "openSlider"    # Z

    .line 265
    iput-boolean p1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuSwitchSlider:Z

    .line 266
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 267
    iget v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    invoke-virtual {p0, v2, v1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->smoothScrollTo(II)V

    .line 268
    iget-object v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2, v1, v0}, Lcom/termux/app/TermuxActivity;->onMenuOpen(ZI)V

    .line 269
    sget-object v0, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->CENTER_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    iput-object v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContentType:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    .line 270
    iput-boolean v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsRightMenuOpen:Z

    .line 271
    iput-boolean v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLockContentSlider:Z

    goto :goto_0

    .line 273
    :cond_0
    iget v2, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    iget v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mStatusHeight:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-virtual {p0, v2, v1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->smoothScrollTo(II)V

    .line 274
    iget-object v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1, v0, v0}, Lcom/termux/app/TermuxActivity;->onMenuOpen(ZI)V

    .line 275
    sget-object v1, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->RIGHT_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    iput-object v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContentType:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    .line 276
    iput-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mIsRightMenuOpen:Z

    .line 277
    iput-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLockContentSlider:Z

    .line 279
    :goto_0
    return-void
.end method

.method public showContent()V
    .locals 2

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mLockContentSlider:Z

    .line 311
    iput-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuSwitchSlider:Z

    .line 312
    iput-boolean v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mRefreshEnd:Z

    .line 313
    invoke-direct {p0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->remeasure()V

    .line 314
    iget v1, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mMenuWidth:I

    invoke-virtual {p0, v1, v0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->smoothScrollTo(II)V

    .line 315
    iget-object v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mOnMenuChangeListener:Lcom/termux/app/terminal/DisplaySlidingWindow$OnMenuChangeListener;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mOnMenuChangeListener:Lcom/termux/app/terminal/DisplaySlidingWindow$OnMenuChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/termux/app/terminal/DisplaySlidingWindow$OnMenuChangeListener;->onMenuOpen(ZI)V

    .line 317
    sget-object v0, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->CENTER_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    iput-object v0, p0, Lcom/termux/app/terminal/DisplaySlidingWindow;->mContentType:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    .line 319
    :cond_0
    return-void
.end method

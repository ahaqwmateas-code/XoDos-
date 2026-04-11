.class public Lcom/termux/view/textselection/TextSelectionHandleView;
.super Landroid/view/View;
.source "TextSelectionHandleView.java"


# static fields
.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2


# instance fields
.field private final mCursorController:Lcom/termux/view/textselection/CursorController;

.field private mHandle:Landroid/widget/PopupWindow;

.field private mHandleDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleHeight:I

.field private final mHandleLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHandleRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleWidth:I

.field private mHotspotX:F

.field private mHotspotY:F

.field private final mInitialOrientation:I

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mLastTime:J

.field private mOrientation:I

.field private mPointX:I

.field private mPointY:I

.field final mTempCoords:[I

.field mTempRect:Landroid/graphics/Rect;

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field private final terminalView:Lcom/termux/view/TerminalView;


# direct methods
.method public constructor <init>(Lcom/termux/view/TerminalView;Lcom/termux/view/textselection/CursorController;I)V
    .locals 2
    .param p1, "terminalView"    # Lcom/termux/view/TerminalView;
    .param p2, "cursorController"    # Lcom/termux/view/textselection/CursorController;
    .param p3, "initialOrientation"    # I

    .line 57
    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 58
    iput-object p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    .line 59
    iput-object p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mCursorController:Lcom/termux/view/textselection/CursorController;

    .line 60
    iput p3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mInitialOrientation:I

    .line 62
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/termux/view/R$drawable;->text_select_handle_left_material:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/termux/view/R$drawable;->text_select_handle_right_material:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mInitialOrientation:I

    invoke-virtual {p0, v0}, Lcom/termux/view/textselection/TextSelectionHandleView;->setOrientation(I)V

    .line 66
    return-void
.end method

.method private checkChangedOrientation(IZ)V
    .locals 11
    .param p1, "posX"    # I
    .param p2, "force"    # Z

    .line 206
    iget-boolean v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 210
    .local v0, "millis":J
    iget-wide v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x32

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    if-nez p2, :cond_1

    .line 211
    return-void

    .line 213
    :cond_1
    iput-wide v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastTime:J

    .line 215
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    .line 216
    .local v2, "hostView":Lcom/termux/view/TerminalView;
    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->getLeft()I

    move-result v3

    .line 217
    .local v3, "left":I
    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->getWidth()I

    move-result v4

    .line 218
    .local v4, "right":I
    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->getTop()I

    move-result v5

    .line 219
    .local v5, "top":I
    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->getHeight()I

    move-result v6

    .line 221
    .local v6, "bottom":I
    iget-object v7, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    if-nez v7, :cond_2

    .line 222
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    .line 224
    :cond_2
    iget-object v7, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    .line 225
    .local v7, "clip":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v8}, Lcom/termux/view/TerminalView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v3

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 226
    iget-object v8, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v8}, Lcom/termux/view/TerminalView;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v5

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 227
    iget-object v8, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v8}, Lcom/termux/view/TerminalView;->getPaddingRight()I

    move-result v8

    sub-int v8, v4, v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 228
    iget-object v8, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v8}, Lcom/termux/view/TerminalView;->getPaddingBottom()I

    move-result v8

    sub-int v8, v6, v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 230
    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .line 231
    .local v8, "parent":Landroid/view/ViewParent;
    if-eqz v8, :cond_6

    const/4 v9, 0x0

    invoke-interface {v8, v2, v7, v9}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    .line 235
    :cond_3
    iget v9, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleWidth:I

    sub-int v9, p1, v9

    iget v10, v7, Landroid/graphics/Rect;->left:I

    if-ge v9, v10, :cond_4

    .line 236
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/termux/view/textselection/TextSelectionHandleView;->changeOrientation(I)V

    goto :goto_0

    .line 237
    :cond_4
    iget v9, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleWidth:I

    add-int/2addr v9, p1

    iget v10, v7, Landroid/graphics/Rect;->right:I

    if-le v9, v10, :cond_5

    .line 238
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/termux/view/textselection/TextSelectionHandleView;->changeOrientation(I)V

    goto :goto_0

    .line 240
    :cond_5
    iget v9, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mInitialOrientation:I

    invoke-virtual {p0, v9}, Lcom/termux/view/textselection/TextSelectionHandleView;->changeOrientation(I)V

    .line 242
    :goto_0
    return-void

    .line 232
    :cond_6
    :goto_1
    return-void
.end method

.method private initHandle()V
    .locals 4

    .line 69
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v1}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10102c8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    .line 71
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 74
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 75
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/16 v2, 0x3ea

    if-lt v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 80
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 81
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-static {v0, v2}, Lcom/termux/view/support/PopupWindowCompatGingerbread;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method private isPositionVisible()Z
    .locals 13

    .line 246
    iget-boolean v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 247
    return v1

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    .line 251
    .local v0, "hostView":Lcom/termux/view/TerminalView;
    const/4 v2, 0x0

    .line 252
    .local v2, "left":I
    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getWidth()I

    move-result v3

    .line 253
    .local v3, "right":I
    const/4 v4, 0x0

    .line 254
    .local v4, "top":I
    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getHeight()I

    move-result v5

    .line 256
    .local v5, "bottom":I
    iget-object v6, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    .line 257
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    .line 259
    :cond_1
    iget-object v6, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    .line 260
    .local v6, "clip":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v7}, Lcom/termux/view/TerminalView;->getPaddingLeft()I

    move-result v7

    const/4 v8, 0x0

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 261
    iget-object v7, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v7}, Lcom/termux/view/TerminalView;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 262
    iget-object v7, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v7}, Lcom/termux/view/TerminalView;->getPaddingRight()I

    move-result v7

    sub-int v7, v3, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 263
    iget-object v7, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v7}, Lcom/termux/view/TerminalView;->getPaddingBottom()I

    move-result v7

    sub-int v7, v5, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 265
    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 266
    .local v7, "parent":Landroid/view/ViewParent;
    if-eqz v7, :cond_4

    const/4 v9, 0x0

    invoke-interface {v7, v0, v6, v9}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    .line 270
    :cond_2
    iget-object v9, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 271
    .local v9, "coords":[I
    invoke-virtual {v0, v9}, Lcom/termux/view/TerminalView;->getLocationInWindow([I)V

    .line 272
    aget v10, v9, v8

    iget v11, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointX:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    float-to-int v11, v11

    add-int/2addr v10, v11

    .line 273
    .local v10, "posX":I
    aget v11, v9, v1

    iget v12, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointY:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotY:F

    float-to-int v12, v12

    add-int/2addr v11, v12

    .line 275
    .local v11, "posY":I
    iget v12, v6, Landroid/graphics/Rect;->left:I

    if-lt v10, v12, :cond_3

    iget v12, v6, Landroid/graphics/Rect;->right:I

    if-gt v10, v12, :cond_3

    iget v12, v6, Landroid/graphics/Rect;->top:I

    if-lt v11, v12, :cond_3

    iget v12, v6, Landroid/graphics/Rect;->bottom:I

    if-gt v11, v12, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 267
    .end local v9    # "coords":[I
    .end local v10    # "posX":I
    .end local v11    # "posY":I
    :cond_4
    :goto_1
    return v8
.end method

.method private moveTo(IIZ)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "forceOrientationCheck"    # Z

    .line 163
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    .line 164
    .local v0, "oldHotspotX":F
    invoke-direct {p0, p1, p3}, Lcom/termux/view/textselection/TextSelectionHandleView;->checkChangedOrientation(IZ)V

    .line 165
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    :goto_0
    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointX:I

    .line 166
    iput p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointY:I

    .line 168
    invoke-direct {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isPositionVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, "coords":[I
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 172
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 173
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v2, v1}, Lcom/termux/view/TerminalView;->getLocationInWindow([I)V

    .line 174
    aget v2, v1, v4

    iget v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointX:I

    add-int/2addr v2, v5

    .line 175
    .local v2, "x1":I
    aget v5, v1, v3

    iget v6, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointY:I

    add-int/2addr v5, v6

    .line 176
    .local v5, "y1":I
    iget-object v6, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_1

    .line 177
    iget-object v6, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->getHeight()I

    move-result v8

    invoke-virtual {v6, v2, v5, v7, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 178
    .end local v2    # "x1":I
    .end local v5    # "y1":I
    :cond_1
    goto :goto_1

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->show()V

    .line 182
    :goto_1
    iget-boolean v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    if-eqz v2, :cond_5

    .line 183
    if-nez v1, :cond_3

    .line 184
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 185
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v2, v1}, Lcom/termux/view/TerminalView;->getLocationInWindow([I)V

    .line 187
    :cond_3
    aget v2, v1, v4

    iget v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentX:I

    if-ne v2, v5, :cond_4

    aget v2, v1, v3

    iget v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentY:I

    if-eq v2, v5, :cond_5

    .line 188
    :cond_4
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetX:F

    aget v5, v1, v4

    iget v6, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v2, v5

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetX:F

    .line 189
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetY:F

    aget v5, v1, v3

    iget v6, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v2, v5

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetY:F

    .line 190
    aget v2, v1, v4

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentX:I

    .line 191
    aget v2, v1, v3

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentY:I

    .line 194
    .end local v1    # "coords":[I
    :cond_5
    goto :goto_2

    .line 195
    :cond_6
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->hide()V

    .line 197
    :goto_2
    return-void
.end method


# virtual methods
.method public changeOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 200
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Lcom/termux/view/textselection/TextSelectionHandleView;->setOrientation(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public getHandleHeight()I
    .locals 1

    .line 330
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleHeight:I

    return v0
.end method

.method public getHandleWidth()I
    .locals 1

    .line 334
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleWidth:I

    return v0
.end method

.method public hide()V
    .locals 1

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    .line 140
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 144
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->removeFromParent()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->invalidate()V

    .line 148
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    return v0
.end method

.method public isParentNull()Z
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0

    .line 341
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 281
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 282
    .local v0, "width":I
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 283
    .local v1, "height":I
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 284
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 285
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 325
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 326
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 325
    invoke-virtual {p0, v0, v1}, Lcom/termux/view/textselection/TextSelectionHandleView;->setMeasuredDimension(II)V

    .line 327
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 290
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 306
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 307
    .local v0, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 309
    .local v1, "rawY":F
    iget v3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetX:F

    sub-float v3, v0, v3

    iget v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    add-float/2addr v3, v4

    .line 310
    .local v3, "newPosX":F
    iget v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetY:F

    sub-float v4, v1, v4

    iget v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotY:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchOffsetY:F

    add-float/2addr v4, v5

    .line 312
    .local v4, "newPosY":F
    iget-object v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mCursorController:Lcom/termux/view/textselection/CursorController;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-interface {v5, p0, v6, v7}, Lcom/termux/view/textselection/CursorController;->updatePosition(Lcom/termux/view/textselection/TextSelectionHandleView;II)V

    .line 313
    goto :goto_0

    .line 318
    .end local v0    # "rawX":F
    .end local v1    # "rawY":F
    .end local v3    # "newPosX":F
    .end local v4    # "newPosY":F
    :pswitch_1
    iput-boolean v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    goto :goto_0

    .line 293
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 294
    .restart local v0    # "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 295
    .local v3, "rawY":F
    iget v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointX:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    iput v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetX:F

    .line 296
    iget v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointY:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    iput v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetY:F

    .line 297
    iget-object v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 298
    .local v4, "coords":[I
    iget-object v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v5, v4}, Lcom/termux/view/TerminalView;->getLocationInWindow([I)V

    .line 299
    aget v1, v4, v1

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentX:I

    .line 300
    aget v1, v4, v2

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentY:I

    .line 301
    iput-boolean v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    .line 302
    nop

    .line 320
    .end local v0    # "rawX":F
    .end local v3    # "rawY":F
    .end local v4    # "coords":[I
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public positionAtCursor(IIZ)V
    .locals 3
    .param p1, "cx"    # I
    .param p2, "cy"    # I
    .param p3, "forceOrientationCheck"    # Z

    .line 157
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->getPointX(I)I

    move-result v0

    .line 158
    .local v0, "x":I
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Lcom/termux/view/TerminalView;->getPointY(I)I

    move-result v1

    .line 159
    .local v1, "y":I
    invoke-direct {p0, v0, v1, p3}, Lcom/termux/view/textselection/TextSelectionHandleView;->moveTo(IIZ)V

    .line 160
    return-void
.end method

.method public removeFromParent()V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isParentNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .line 89
    iput p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mOrientation:I

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "handleWidth":I
    const/high16 v1, 0x40800000    # 4.0f

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleRightDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 102
    int-to-float v2, v0

    div-float/2addr v2, v1

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleLeftDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 95
    mul-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    div-float/2addr v2, v1

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    .line 96
    nop

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleHeight:I

    .line 109
    iput v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleWidth:I

    .line 110
    iget v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float v1, v1, v2

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchOffsetY:F

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotY:F

    .line 112
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->invalidate()V

    .line 113
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 6

    .line 116
    invoke-direct {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isPositionVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->hide()V

    .line 118
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->removeFromParent()V

    .line 125
    invoke-direct {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->initHandle()V

    .line 126
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->invalidate()V

    .line 128
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 129
    .local v0, "coords":[I
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v1, v0}, Lcom/termux/view/TerminalView;->getLocationInWindow([I)V

    .line 130
    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointX:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 131
    const/4 v2, 0x1

    aget v3, v0, v2

    iget v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointY:I

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 133
    iget-object v3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    .line 134
    iget-object v3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    aget v5, v0, v1

    aget v2, v0, v2

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 135
    :cond_1
    return-void
.end method

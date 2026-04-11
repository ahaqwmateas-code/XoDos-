.class public Lcom/termux/view/textselection/TextSelectionCursorController;
.super Ljava/lang/Object;
.source "TextSelectionCursorController.java"

# interfaces
.implements Lcom/termux/view/textselection/CursorController;


# instance fields
.field public final ACTION_COPY:I

.field public final ACTION_MORE:I

.field public final ACTION_PASTE:I

.field private mActionMode:Landroid/view/ActionMode;

.field private final mEndHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

.field private final mHandleHeight:I

.field private mIsSelectingText:Z

.field private mSelX1:I

.field private mSelX2:I

.field private mSelY1:I

.field private mSelY2:I

.field private mShowStartTime:J

.field private final mStartHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

.field private mStoredSelectedText:Ljava/lang/String;

.field private final terminalView:Lcom/termux/view/TerminalView;


# direct methods
.method public constructor <init>(Lcom/termux/view/TerminalView;)V
    .locals 3
    .param p1, "terminalView"    # Lcom/termux/view/TerminalView;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mIsSelectingText:Z

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mShowStartTime:J

    .line 30
    const/4 v1, -0x1

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    .line 33
    const/4 v1, 0x1

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->ACTION_COPY:I

    .line 34
    const/4 v1, 0x2

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->ACTION_PASTE:I

    .line 35
    const/4 v2, 0x3

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->ACTION_MORE:I

    .line 38
    iput-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    .line 39
    new-instance v2, Lcom/termux/view/textselection/TextSelectionHandleView;

    invoke-direct {v2, p1, p0, v0}, Lcom/termux/view/textselection/TextSelectionHandleView;-><init>(Lcom/termux/view/TerminalView;Lcom/termux/view/textselection/CursorController;I)V

    iput-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mStartHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    .line 40
    new-instance v0, Lcom/termux/view/textselection/TextSelectionHandleView;

    invoke-direct {v0, p1, p0, v1}, Lcom/termux/view/textselection/TextSelectionHandleView;-><init>(Lcom/termux/view/TerminalView;Lcom/termux/view/textselection/CursorController;I)V

    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mEndHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    .line 42
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mStartHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionHandleView;->getHandleHeight()I

    move-result v0

    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mEndHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    invoke-virtual {v1}, Lcom/termux/view/textselection/TextSelectionHandleView;->getHandleHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mHandleHeight:I

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;
    .locals 1
    .param p0, "x0"    # Lcom/termux/view/textselection/TextSelectionCursorController;

    .line 21
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/termux/view/textselection/TextSelectionCursorController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/termux/view/textselection/TextSelectionCursorController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mStoredSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/termux/view/textselection/TextSelectionCursorController;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/view/textselection/TextSelectionCursorController;

    .line 21
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    return v0
.end method

.method static synthetic access$300(Lcom/termux/view/textselection/TextSelectionCursorController;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/view/textselection/TextSelectionCursorController;

    .line 21
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    return v0
.end method

.method static synthetic access$400(Lcom/termux/view/textselection/TextSelectionCursorController;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/view/textselection/TextSelectionCursorController;

    .line 21
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    return v0
.end method

.method static synthetic access$500(Lcom/termux/view/textselection/TextSelectionCursorController;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/view/textselection/TextSelectionCursorController;

    .line 21
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    return v0
.end method

.method static synthetic access$600(Lcom/termux/view/textselection/TextSelectionCursorController;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/view/textselection/TextSelectionCursorController;

    .line 21
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mHandleHeight:I

    return v0
.end method

.method private getValidCurX(Lcom/termux/terminal/TerminalBuffer;II)I
    .locals 7
    .param p1, "screen"    # Lcom/termux/terminal/TerminalBuffer;
    .param p2, "cy"    # I
    .param p3, "cx"    # I

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3, p2}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "line":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "col":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 312
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 313
    .local v4, "ch1":C
    if-nez v4, :cond_0

    .line 314
    goto :goto_2

    .line 318
    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v3, :cond_1

    .line 319
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 320
    .local v5, "ch2":C
    invoke-static {v4, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    invoke-static {v6}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v5

    .line 321
    .local v5, "wc":I
    goto :goto_1

    .line 322
    .end local v5    # "wc":I
    :cond_1
    invoke-static {v4}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v5

    .line 325
    .restart local v5    # "wc":I
    :goto_1
    add-int v6, v1, v5

    .line 326
    .local v6, "cend":I
    if-le p3, v1, :cond_2

    if-ge p3, v6, :cond_2

    .line 327
    return v6

    .line 329
    :cond_2
    if-ne v6, v1, :cond_3

    .line 330
    return v1

    .line 332
    :cond_3
    move v1, v6

    .line 311
    .end local v4    # "ch1":C
    .end local v5    # "wc":I
    .end local v6    # "cend":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "col":I
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_4
    :goto_2
    return p3
.end method


# virtual methods
.method public decrementYTextSelectionCursors(I)V
    .locals 1
    .param p1, "decrement"    # I

    .line 339
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    .line 340
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    .line 341
    return-void
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 5

    .line 375
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    iget v4, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/termux/terminal/TerminalEmulator;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectors([I)V
    .locals 2
    .param p1, "sel"    # [I

    .line 363
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    aput v1, p1, v0

    .line 368
    const/4 v0, 0x1

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    aput v1, p1, v0

    .line 369
    const/4 v0, 0x2

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    aput v1, p1, v0

    .line 370
    const/4 v0, 0x3

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    aput v1, p1, v0

    .line 371
    return-void

    .line 364
    :cond_1
    :goto_0
    return-void
.end method

.method public getStoredSelectedText()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mStoredSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method public hide()Z
    .locals 6

    .line 58
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionCursorController;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mShowStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 64
    return v1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mStartHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionHandleView;->hide()V

    .line 68
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mEndHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionHandleView;->hide()V

    .line 70
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 75
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    .line 76
    iput-boolean v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mIsSelectingText:Z

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 359
    iget-boolean v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mIsSelectingText:Z

    return v0
.end method

.method public isSelectionEndDragged()Z
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mEndHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isDragging()Z

    move-result v0

    return v0
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mStartHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isDragging()Z

    move-result v0

    return v0
.end method

.method public onDetached()V
    .locals 0

    .line 355
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .param p1, "isInTouchMode"    # Z

    .line 348
    if-nez p1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 351
    :cond_0
    return-void
.end method

.method public render()V
    .locals 4

    .line 83
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionCursorController;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mStartHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/view/textselection/TextSelectionHandleView;->positionAtCursor(IIZ)V

    .line 86
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mEndHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/view/textselection/TextSelectionHandleView;->positionAtCursor(IIZ)V

    .line 88
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 91
    :cond_1
    return-void
.end method

.method public setActionModeCallBacks()V
    .locals 4

    .line 111
    new-instance v0, Lcom/termux/view/textselection/TextSelectionCursorController$1;

    invoke-direct {v0, p0}, Lcom/termux/view/textselection/TextSelectionCursorController$1;-><init>(Lcom/termux/view/textselection/TextSelectionCursorController;)V

    .line 166
    .local v0, "callback":Landroid/view/ActionMode$Callback;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 167
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v1, v0}, Lcom/termux/view/TerminalView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mActionMode:Landroid/view/ActionMode;

    .line 168
    return-void

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    new-instance v2, Lcom/termux/view/textselection/TextSelectionCursorController$2;

    invoke-direct {v2, p0, v0}, Lcom/termux/view/textselection/TextSelectionCursorController$2;-><init>(Lcom/termux/view/textselection/TextSelectionCursorController;Landroid/view/ActionMode$Callback;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/termux/view/TerminalView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mActionMode:Landroid/view/ActionMode;

    .line 215
    return-void
.end method

.method public setInitialTextSelectionPosition(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 94
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/termux/view/TerminalView;->getColumnAndRow(Landroid/view/MotionEvent;Z)[I

    move-result-object v0

    .line 95
    .local v0, "columnAndRow":[I
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    .line 96
    aget v2, v0, v1

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    .line 98
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v2

    .line 99
    .local v2, "screen":Lcom/termux/terminal/TerminalBuffer;
    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    iget v4, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iget v5, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    iget v6, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 101
    :goto_0
    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    const-string v4, ""

    if-lez v3, :cond_0

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    sub-int/2addr v3, v1

    iget v5, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iget v6, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    sub-int/2addr v6, v1

    iget v7, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    goto :goto_0

    .line 104
    :cond_0
    :goto_1
    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    iget-object v5, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v5, v5, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v5, v5, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v5, v1

    if-ge v3, v5, :cond_1

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    add-int/2addr v3, v1

    iget v5, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iget v6, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    goto :goto_1

    .line 108
    :cond_1
    return-void
.end method

.method public show(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 47
    invoke-virtual {p0, p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->setInitialTextSelectionPosition(Landroid/view/MotionEvent;)V

    .line 48
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mStartHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/view/textselection/TextSelectionHandleView;->positionAtCursor(IIZ)V

    .line 49
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mEndHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    add-int/2addr v1, v3

    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/view/textselection/TextSelectionHandleView;->positionAtCursor(IIZ)V

    .line 51
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionCursorController;->setActionModeCallBacks()V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mShowStartTime:J

    .line 53
    iput-boolean v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mIsSelectingText:Z

    .line 54
    return-void
.end method

.method public unsetStoredSelectedText()V
    .locals 1

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mStoredSelectedText:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public updatePosition(Lcom/termux/view/textselection/TextSelectionHandleView;II)V
    .locals 5
    .param p1, "handle"    # Lcom/termux/view/textselection/TextSelectionHandleView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 219
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    .line 220
    .local v0, "screen":Lcom/termux/terminal/TerminalBuffer;
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v1

    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v1, v2

    .line 221
    .local v1, "scrollRows":I
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mStartHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_8

    .line 222
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    int-to-float v4, p2

    invoke-virtual {v2, v4}, Lcom/termux/view/TerminalView;->getCursorX(F)I

    move-result v2

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    .line 223
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    int-to-float v4, p3

    invoke-virtual {v2, v4}, Lcom/termux/view/TerminalView;->getCursorY(F)I

    move-result v2

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    .line 224
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    if-gez v2, :cond_0

    .line 225
    iput v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    .line 228
    :cond_0
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    neg-int v3, v1

    if-ge v2, v3, :cond_1

    .line 229
    neg-int v2, v1

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    goto :goto_0

    .line 231
    :cond_1
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iget-object v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v3, v3, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v3, v3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_2

    .line 232
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    .line 236
    :cond_2
    :goto_0
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    if-le v2, v3, :cond_3

    .line 237
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    .line 239
    :cond_3
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    if-le v2, v3, :cond_4

    .line 240
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    .line 243
    :cond_4
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v2

    if-nez v2, :cond_7

    .line 244
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->getTopRow()I

    move-result v2

    .line 246
    .local v2, "topRow":I
    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    if-gt v3, v2, :cond_5

    .line 247
    add-int/lit8 v2, v2, -0x1

    .line 248
    neg-int v3, v1

    if-ge v2, v3, :cond_6

    .line 249
    neg-int v2, v1

    goto :goto_1

    .line 251
    :cond_5
    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iget-object v4, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v4, v4, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr v4, v2

    if-lt v3, v4, :cond_6

    .line 252
    add-int/lit8 v2, v2, 0x1

    .line 253
    if-lez v2, :cond_6

    .line 254
    const/4 v2, 0x0

    .line 258
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v3, v2}, Lcom/termux/view/TerminalView;->setTopRow(I)V

    .line 261
    .end local v2    # "topRow":I
    :cond_7
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    invoke-direct {p0, v0, v2, v3}, Lcom/termux/view/textselection/TextSelectionCursorController;->getValidCurX(Lcom/termux/terminal/TerminalBuffer;II)I

    move-result v2

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    goto/16 :goto_4

    .line 264
    :cond_8
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    int-to-float v4, p2

    invoke-virtual {v2, v4}, Lcom/termux/view/TerminalView;->getCursorX(F)I

    move-result v2

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    .line 265
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    int-to-float v4, p3

    invoke-virtual {v2, v4}, Lcom/termux/view/TerminalView;->getCursorY(F)I

    move-result v2

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    .line 266
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    if-gez v2, :cond_9

    .line 267
    iput v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    .line 270
    :cond_9
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    neg-int v3, v1

    if-ge v2, v3, :cond_a

    .line 271
    neg-int v2, v1

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    goto :goto_2

    .line 272
    :cond_a
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    iget-object v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v3, v3, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v3, v3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_b

    .line 273
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    .line 276
    :cond_b
    :goto_2
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    if-le v2, v3, :cond_c

    .line 277
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    .line 279
    :cond_c
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    if-ne v2, v3, :cond_d

    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    if-le v2, v3, :cond_d

    .line 280
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    .line 283
    :cond_d
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v2

    if-nez v2, :cond_10

    .line 284
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->getTopRow()I

    move-result v2

    .line 286
    .restart local v2    # "topRow":I
    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    if-gt v3, v2, :cond_e

    .line 287
    add-int/lit8 v2, v2, -0x1

    .line 288
    neg-int v3, v1

    if-ge v2, v3, :cond_f

    .line 289
    neg-int v2, v1

    goto :goto_3

    .line 291
    :cond_e
    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    iget-object v4, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v4, v4, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr v4, v2

    if-lt v3, v4, :cond_f

    .line 292
    add-int/lit8 v2, v2, 0x1

    .line 293
    if-lez v2, :cond_f

    .line 294
    const/4 v2, 0x0

    .line 298
    :cond_f
    :goto_3
    iget-object v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v3, v2}, Lcom/termux/view/TerminalView;->setTopRow(I)V

    .line 301
    .end local v2    # "topRow":I
    :cond_10
    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    invoke-direct {p0, v0, v2, v3}, Lcom/termux/view/textselection/TextSelectionCursorController;->getValidCurX(Lcom/termux/terminal/TerminalBuffer;II)I

    move-result v2

    iput v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    .line 304
    :goto_4
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 305
    return-void
.end method

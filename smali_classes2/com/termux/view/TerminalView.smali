.class public final Lcom/termux/view/TerminalView;
.super Landroid/view/View;
.source "TerminalView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;
    }
.end annotation


# static fields
.field public static final KEY_EVENT_SOURCE_SOFT_KEYBOARD:I = 0x0

.field public static final KEY_EVENT_SOURCE_VIRTUAL_KEYBOARD:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TerminalView"

.field public static final TERMINAL_CURSOR_BLINK_RATE_MAX:I = 0x7d0

.field public static final TERMINAL_CURSOR_BLINK_RATE_MIN:I = 0x64

.field private static TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z


# instance fields
.field private final mAccessibilityEnabled:Z

.field public mClient:Lcom/termux/view/TerminalViewClient;

.field mCombiningAccent:I

.field private mCursorInvisibleIgnoreOnce:Z

.field mDefaultSelectors:[I

.field public mEmulator:Lcom/termux/terminal/TerminalEmulator;

.field final mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

.field private mMouseScrollStartX:I

.field private mMouseScrollStartY:I

.field private mMouseStartDownTime:J

.field public mRenderer:Lcom/termux/view/TerminalRenderer;

.field mScaleFactor:F

.field mScrollRemainder:F

.field final mScroller:Landroid/widget/Scroller;

.field private final mShowFloatingToolbar:Ljava/lang/Runnable;

.field public mTermSession:Lcom/termux/terminal/TerminalSession;

.field private mTerminalCursorBlinkerHandler:Landroid/os/Handler;

.field private mTerminalCursorBlinkerRate:I

.field private mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

.field private mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

.field mTopRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, -0x1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/termux/view/TerminalView;->mDefaultSelectors:[I

    .line 72
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/termux/view/TerminalView;->mScaleFactor:F

    .line 76
    iput v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    iput v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    .line 1323
    new-instance v0, Lcom/termux/view/TerminalView$3;

    invoke-direct {v0, p0}, Lcom/termux/view/TerminalView$3;-><init>(Lcom/termux/view/TerminalView;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/termux/view/GestureAndScaleRecognizer;

    new-instance v1, Lcom/termux/view/TerminalView$1;

    invoke-direct {v1, p0}, Lcom/termux/view/TerminalView$1;-><init>(Lcom/termux/view/TerminalView;)V

    invoke-direct {v0, p1, v1}, Lcom/termux/view/GestureAndScaleRecognizer;-><init>(Landroid/content/Context;Lcom/termux/view/GestureAndScaleRecognizer$Listener;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    .line 221
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    .line 222
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 223
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/termux/view/TerminalView;->mAccessibilityEnabled:Z

    .line 224
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    return v0
.end method

.method static synthetic access$100(Lcom/termux/view/TerminalView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/termux/view/TerminalView;

    .line 45
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/termux/view/TerminalView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/termux/view/TerminalView;

    .line 45
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method private decrementYTextSelectionCursors(I)V
    .locals 1
    .param p1, "decrement"    # I

    .line 1290
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->decrementYTextSelectionCursors(I)V

    .line 1293
    :cond_0
    return-void
.end method

.method private getText()Ljava/lang/CharSequence;
    .locals 5

    .line 990
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTextSelectionActionMode()Landroid/view/ActionMode;
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 1267
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private hideTextSelectionCursors()Z
    .locals 1

    .line 1228
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getTextSelectionCursorController()Lcom/termux/view/textselection/TextSelectionCursorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->hide()Z

    move-result v0

    return v0
.end method

.method private renderTextSelection()V
    .locals 1

    .line 1232
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->render()V

    .line 1234
    :cond_0
    return-void
.end method

.method private showFloatingToolbar()V
    .locals 4

    .line 1335
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1336
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 1337
    .local v0, "delay":I
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/termux/view/TerminalView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1339
    .end local v0    # "delay":I
    :cond_0
    return-void
.end method

.method private showTextSelectionCursors(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1224
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getTextSelectionCursorController()Lcom/termux/view/textselection/TextSelectionCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->show(Landroid/view/MotionEvent;)V

    .line 1225
    return-void
.end method

.method private stopTerminalCursorBlinker()V
    .locals 3

    .line 1162
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    if-eqz v0, :cond_1

    .line 1163
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    const-string v2, "Stopping cursor blinker"

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1167
    :cond_1
    return-void
.end method


# virtual methods
.method public attachSession(Lcom/termux/terminal/TerminalSession;)Z
    .locals 2
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;

    .line 253
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 254
    :cond_0
    iput v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 256
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 258
    iput v1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 260
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->setVerticalScrollBarEnabled(Z)V

    .line 265
    return v0
.end method

.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 2
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 1028
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 1031
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v1, v1, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    :goto_0
    return v0
.end method

.method doScroll(Landroid/view/MotionEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rowsDown"    # I

    .line 537
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 538
    .local v2, "up":Z
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 539
    .local v3, "amount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_7

    .line 540
    iget-object v5, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 541
    if-eqz v2, :cond_1

    const/16 v5, 0x40

    goto :goto_2

    :cond_1
    const/16 v5, 0x41

    :goto_2
    invoke-virtual {p0, p1, v5, v1}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_5

    .line 542
    :cond_2
    iget-object v5, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 545
    if-eqz v2, :cond_3

    const/16 v5, 0x13

    goto :goto_3

    :cond_3
    const/16 v5, 0x14

    :goto_3
    invoke-virtual {p0, v5, v0}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    goto :goto_5

    .line 547
    :cond_4
    iget-object v5, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v5

    neg-int v5, v5

    iget v6, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz v2, :cond_5

    const/4 v7, -0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x1

    :goto_4
    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 548
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->awakenScrollBars()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 539
    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 551
    .end local v4    # "i":I
    :cond_7
    return-void
.end method

.method public getAutofillType()I
    .locals 1

    .line 1036
    const/4 v0, 0x1

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    .line 1042
    const-string v0, ""

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0
.end method

.method public getColumnAndRow(Landroid/view/MotionEvent;Z)[I
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "relativeToScroll"    # Z

    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 510
    .local v0, "column":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 511
    .local v1, "row":I
    if-eqz p2, :cond_0

    .line 512
    iget v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr v1, v2

    .line 514
    :cond_0
    filled-new-array {v0, v1}, [I

    move-result-object v2

    return-object v2
.end method

.method public getCurrentSession()Lcom/termux/terminal/TerminalSession;
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    return-object v0
.end method

.method public getCursorX(F)I
    .locals 1
    .param p1, "x"    # F

    .line 994
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float v0, p1, v0

    float-to-int v0, v0

    return v0
.end method

.method public getCursorY(F)I
    .locals 2
    .param p1, "y"    # F

    .line 998
    const/high16 v0, 0x42200000    # 40.0f

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPointX(I)I
    .locals 2
    .param p1, "cx"    # I

    .line 1002
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-le p1, v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p1, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 1005
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getPointY(I)I
    .locals 2
    .param p1, "cy"    # I

    .line 1009
    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int v0, v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    .line 1246
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1249
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoredSelectedText()Ljava/lang/String;
    .locals 1

    .line 1255
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getStoredSelectedText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getTextSelectionCursorController()Lcom/termux/view/textselection/TextSelectionCursorController;
    .locals 2

    .line 1211
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-nez v0, :cond_0

    .line 1212
    new-instance v0, Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-direct {v0, p0}, Lcom/termux/view/textselection/TextSelectionCursorController;-><init>(Lcom/termux/view/TerminalView;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    .line 1214
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1215
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1216
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1220
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    return-object v0
.end method

.method public getTopRow()I
    .locals 1

    .line 1013
    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    return v0
.end method

.method public handleKeyCode(II)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "keyMod"    # I

    .line 873
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkState(Z)V

    .line 876
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->handleKeyCodeAction(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 877
    return v1

    .line 879
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    .line 880
    .local v0, "term":Lcom/termux/terminal/TerminalEmulator;
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isCursorKeysApplicationMode()Z

    move-result v2

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isKeypadApplicationMode()Z

    move-result v3

    invoke-static {p1, p2, v2, v3}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, "code":Ljava/lang/String;
    if-nez v2, :cond_2

    const/4 v1, 0x0

    return v1

    .line 882
    :cond_2
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 883
    return v1
.end method

.method public handleKeyCodeAction(II)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "keyMod"    # I

    .line 887
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 889
    .local v0, "shiftDown":Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 894
    :pswitch_0
    if-eqz v0, :cond_2

    .line 895
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 896
    .local v11, "time":J
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v3, v11

    move-wide v5, v11

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 897
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    const/16 v3, 0x5c

    if-ne p1, v3, :cond_1

    const/4 v3, -0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    .line 898
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 899
    return v2

    .line 903
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    .end local v11    # "time":J
    :cond_2
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method hideFloatingToolbar()V
    .locals 3

    .line 1343
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1345
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 1347
    :cond_0
    return-void
.end method

.method public inputCodePoint(IIZZ)V
    .locals 5
    .param p1, "eventSource"    # I
    .param p2, "codePoint"    # I
    .param p3, "controlDownFromEvent"    # Z
    .param p4, "leftAltDownFromEvent"    # Z

    .line 806
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inputCodePoint(eventSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", codePoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", controlDownFromEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", leftAltDownFromEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-nez v0, :cond_1

    return-void

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 815
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkState(Z)V

    .line 817
    :cond_2
    const/4 v0, 0x0

    if-nez p3, :cond_4

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v2}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    .line 818
    .local v2, "controlDown":Z
    :goto_1
    if-nez p4, :cond_5

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v3}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const/4 v0, 0x1

    .line 820
    .local v0, "altDown":Z
    :cond_6
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v3, p2, v2, v4}, Lcom/termux/view/TerminalViewClient;->onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    .line 822
    :cond_7
    if-eqz v2, :cond_16

    .line 823
    const/16 v3, 0x61

    if-lt p2, v3, :cond_8

    const/16 v3, 0x7a

    if-gt p2, v3, :cond_8

    .line 824
    add-int/lit8 v3, p2, -0x61

    add-int/lit8 p2, v3, 0x1

    goto/16 :goto_8

    .line 825
    :cond_8
    const/16 v3, 0x41

    if-lt p2, v3, :cond_9

    const/16 v3, 0x5a

    if-gt p2, v3, :cond_9

    .line 826
    add-int/lit8 v3, p2, -0x41

    add-int/lit8 p2, v3, 0x1

    goto :goto_8

    .line 827
    :cond_9
    const/16 v1, 0x20

    if-eq p2, v1, :cond_15

    const/16 v1, 0x32

    if-ne p2, v1, :cond_a

    goto :goto_7

    .line 829
    :cond_a
    const/16 v1, 0x5b

    if-eq p2, v1, :cond_14

    const/16 v1, 0x33

    if-ne p2, v1, :cond_b

    goto :goto_6

    .line 831
    :cond_b
    const/16 v1, 0x5c

    if-eq p2, v1, :cond_13

    const/16 v1, 0x34

    if-ne p2, v1, :cond_c

    goto :goto_5

    .line 833
    :cond_c
    const/16 v1, 0x5d

    if-eq p2, v1, :cond_12

    const/16 v1, 0x35

    if-ne p2, v1, :cond_d

    goto :goto_4

    .line 835
    :cond_d
    const/16 v1, 0x5e

    if-eq p2, v1, :cond_11

    const/16 v1, 0x36

    if-ne p2, v1, :cond_e

    goto :goto_3

    .line 837
    :cond_e
    const/16 v1, 0x5f

    if-eq p2, v1, :cond_10

    const/16 v1, 0x37

    if-eq p2, v1, :cond_10

    const/16 v1, 0x2f

    if-ne p2, v1, :cond_f

    goto :goto_2

    .line 841
    :cond_f
    const/16 v1, 0x38

    if-ne p2, v1, :cond_16

    .line 842
    const/16 p2, 0x7f

    goto :goto_8

    .line 840
    :cond_10
    :goto_2
    const/16 p2, 0x1f

    goto :goto_8

    .line 836
    :cond_11
    :goto_3
    const/16 p2, 0x1e

    goto :goto_8

    .line 834
    :cond_12
    :goto_4
    const/16 p2, 0x1d

    goto :goto_8

    .line 832
    :cond_13
    :goto_5
    const/16 p2, 0x1c

    goto :goto_8

    .line 830
    :cond_14
    :goto_6
    const/16 p2, 0x1b

    goto :goto_8

    .line 828
    :cond_15
    :goto_7
    const/4 p2, 0x0

    .line 846
    :cond_16
    :goto_8
    const/4 v1, -0x1

    if-le p2, v1, :cond_18

    .line 848
    if-lez p1, :cond_17

    .line 852
    sparse-switch p2, :sswitch_data_0

    goto :goto_9

    .line 854
    :sswitch_0
    const/16 p2, 0x7e

    .line 855
    goto :goto_9

    .line 857
    :sswitch_1
    const/16 p2, 0x60

    .line 858
    goto :goto_9

    .line 860
    :sswitch_2
    const/16 p2, 0x5e

    .line 866
    :cond_17
    :goto_9
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v1, v0, p2}, Lcom/termux/terminal/TerminalSession;->writeCodePoint(ZI)V

    .line 868
    :cond_18
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c6 -> :sswitch_2
        0x2cb -> :sswitch_1
        0x2dc -> :sswitch_0
    .end sparse-switch
.end method

.method public isOpaque()Z
    .locals 1

    .line 494
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectingText()Z
    .locals 1

    .line 1237
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->isActive()Z

    move-result v0

    return v0

    .line 1240
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1297
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1299
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1300
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1302
    :cond_0
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .line 489
    const/4 v0, 0x1

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 468
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->unsetStoredSelectedText()V

    .line 469
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 274
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->isTerminalViewSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldEnforceCharBasedInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const v0, 0x80090

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 292
    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 296
    :cond_1
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 301
    :goto_0
    const/high16 v0, 0x2000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 303
    new-instance v0, Lcom/termux/view/TerminalView$2;

    invoke-direct {v0, p0, p0, v1}, Lcom/termux/view/TerminalView$2;-><init>(Lcom/termux/view/TerminalView;Landroid/view/View;Z)V

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1306
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1308
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1311
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 1313
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1314
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->onDetached()V

    .line 1316
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 969
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    .line 970
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mDefaultSelectors:[I

    .line 974
    .local v0, "sel":[I
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v1, :cond_1

    .line 975
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v1, v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getSelectors([I)V

    .line 978
    :cond_1
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v5, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    const/4 v1, 0x0

    aget v6, v0, v1

    const/4 v1, 0x1

    aget v7, v0, v1

    const/4 v1, 0x2

    aget v8, v0, v1

    const/4 v1, 0x3

    aget v9, v0, v1

    move-object v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/termux/view/TerminalRenderer;->render(Lcom/termux/terminal/TerminalEmulator;Landroid/graphics/Canvas;IIIII)V

    .line 981
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->renderTextSelection()V

    .line 983
    .end local v0    # "sel":[I
    :goto_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 556
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 558
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 559
    .local v0, "up":Z
    if-eqz v0, :cond_1

    const/4 v1, -0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    .line 560
    return v3

    .line 562
    .end local v0    # "up":Z
    :cond_2
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 17
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 731
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    sget-boolean v3, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    const-string v4, "TerminalView"

    if-eqz v3, :cond_0

    .line 732
    iget-object v3, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onKeyDown(keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSystem()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_0
    iget-object v3, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v5, 0x1

    if-nez v3, :cond_1

    return v5

    .line 734
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 738
    :cond_2
    iget-object v3, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v6, v0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v3, v1, v2, v6}, Lcom/termux/view/TerminalViewClient;->onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 740
    return v5

    .line 741
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v3}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    .line 742
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 743
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    if-nez v1, :cond_6

    .line 744
    iget-object v3, v0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 745
    return v5

    .line 748
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 749
    .local v3, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v6}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v6, 0x1

    .line 750
    .local v6, "controlDown":Z
    :goto_1
    and-int/lit8 v8, v3, 0x10

    if-nez v8, :cond_a

    iget-object v8, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v8}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v8, 0x1

    .line 751
    .local v8, "leftAltDown":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v9}, Lcom/termux/view/TerminalViewClient;->readShiftKey()Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v9, 0x1

    .line 752
    .local v9, "shiftDown":Z
    :goto_5
    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    goto :goto_6

    :cond_d
    const/4 v10, 0x0

    .line 754
    .local v10, "rightAltDownFromEvent":Z
    :goto_6
    const/4 v11, 0x0

    .line 755
    .local v11, "keyMod":I
    if-eqz v6, :cond_e

    const/high16 v12, 0x40000000    # 2.0f

    or-int/2addr v11, v12

    .line 756
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v12

    const/high16 v13, -0x80000000

    if-nez v12, :cond_f

    if-eqz v8, :cond_10

    :cond_f
    or-int/2addr v11, v13

    .line 757
    :cond_10
    if-eqz v9, :cond_11

    const/high16 v12, 0x20000000

    or-int/2addr v11, v12

    .line 758
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isNumLockOn()Z

    move-result v12

    if-eqz v12, :cond_12

    const/high16 v12, 0x10000000

    or-int/2addr v11, v12

    .line 760
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isFunctionPressed()Z

    move-result v12

    if-nez v12, :cond_14

    invoke-virtual {v0, v1, v11}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 761
    sget-boolean v7, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v7, :cond_13

    iget-object v7, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v12, "handleKeyCode() took key event"

    invoke-interface {v7, v4, v12}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_13
    return v5

    .line 766
    :cond_14
    const/16 v12, 0x7000

    .line 767
    .local v12, "bitsToClear":I
    if-eqz v10, :cond_15

    goto :goto_7

    .line 771
    :cond_15
    or-int/lit8 v12, v12, 0x12

    .line 773
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v14

    not-int v15, v12

    and-int/2addr v14, v15

    .line 775
    .local v14, "effectiveMetaState":I
    if-eqz v9, :cond_16

    or-int/lit8 v14, v14, 0x41

    .line 776
    :cond_16
    iget-object v15, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v15}, Lcom/termux/view/TerminalViewClient;->readFnKey()Z

    move-result v15

    if-eqz v15, :cond_17

    or-int/lit8 v14, v14, 0x8

    .line 778
    :cond_17
    invoke-virtual {v2, v14}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v15

    .line 779
    .local v15, "result":I
    sget-boolean v16, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v16, :cond_18

    .line 780
    iget-object v5, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyEvent#getUnicodeChar("

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, ") returned: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_18
    if-nez v15, :cond_19

    .line 782
    const/4 v4, 0x0

    return v4

    .line 785
    :cond_19
    iget v4, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 786
    .local v4, "oldCombiningAccent":I
    const/high16 v5, -0x80000000

    and-int/2addr v5, v15

    if-eqz v5, :cond_1b

    .line 788
    iget v5, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eqz v5, :cond_1a

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    iget v7, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    invoke-virtual {v0, v5, v7, v6, v8}, Lcom/termux/view/TerminalView;->inputCodePoint(IIZZ)V

    .line 790
    :cond_1a
    const v5, 0x7fffffff

    and-int/2addr v5, v15

    iput v5, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    goto :goto_8

    .line 792
    :cond_1b
    iget v5, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eqz v5, :cond_1d

    .line 793
    iget v5, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    invoke-static {v5, v15}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v5

    .line 794
    .local v5, "combinedChar":I
    if-lez v5, :cond_1c

    move v7, v5

    move v15, v7

    .line 795
    :cond_1c
    const/4 v7, 0x0

    iput v7, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 797
    .end local v5    # "combinedChar":I
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {v0, v5, v15, v6, v8}, Lcom/termux/view/TerminalView;->inputCodePoint(IIZZ)V

    .line 800
    :goto_8
    iget v5, v0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eq v5, v4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 802
    :cond_1e
    const/4 v5, 0x1

    return v5
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 609
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyPreIme(keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 612
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 614
    const/4 v0, 0x1

    return v0

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 621
    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 619
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldUseCtrlSpaceWorkaround()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_3

    .line 625
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 628
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 630
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 915
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp(keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return v1

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0, p1, p2}, Lcom/termux/view/TerminalViewClient;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 924
    return v1

    .line 925
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 927
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 930
    :cond_3
    return v1
.end method

.method public onScreenUpdated()V
    .locals 1

    .line 416
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->onScreenUpdated(Z)V

    .line 417
    return-void
.end method

.method public onScreenUpdated(Z)V
    .locals 3
    .param p1, "skipScrolling"    # Z

    .line 420
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    .line 423
    .local v0, "rowsInHistory":I
    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    neg-int v2, v0

    if-ge v1, v2, :cond_1

    neg-int v1, v0

    iput v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalEmulator;->isAutoScrollDisabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalEmulator;->getScrollCounter()I

    move-result v1

    .line 429
    .local v1, "rowShift":I
    iget v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    neg-int v2, v2

    add-int/2addr v2, v1

    if-le v2, v0, :cond_4

    .line 432
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 433
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 435
    :cond_3
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalEmulator;->isAutoScrollDisabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 436
    neg-int v2, v0

    iput v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 437
    const/4 p1, 0x1

    goto :goto_0

    .line 440
    :cond_4
    const/4 p1, 0x1

    .line 441
    iget v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 442
    invoke-direct {p0, v1}, Lcom/termux/view/TerminalView;->decrementYTextSelectionCursors(I)V

    .line 446
    .end local v1    # "rowShift":I
    :cond_5
    :goto_0
    if-nez p1, :cond_7

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz v1, :cond_7

    .line 448
    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    const/4 v2, -0x3

    if-ge v1, v2, :cond_6

    .line 452
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->awakenScrollBars()Z

    .line 454
    :cond_6
    const/4 v1, 0x0

    iput v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 457
    :cond_7
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalEmulator;->clearScrollCounter()V

    .line 459
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 460
    iget-boolean v1, p0, Lcom/termux/view/TerminalView;->mAccessibilityEnabled:Z

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/termux/view/TerminalView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 461
    :cond_8
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 939
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 940
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 569
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 570
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 572
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 573
    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 574
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v2, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 575
    return v1

    .line 576
    :cond_1
    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 577
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 578
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    .line 579
    :cond_2
    return v1

    .line 580
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 581
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "clipboard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 582
    .local v2, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v4

    .line 583
    .local v4, "clipData":Landroid/content/ClipData;
    if-eqz v4, :cond_6

    .line 584
    invoke-virtual {v4, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 585
    .local v3, "clipItem":Landroid/content/ClipData$Item;
    if-eqz v3, :cond_6

    .line 586
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 587
    .local v5, "text":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    goto :goto_1

    .line 590
    .end local v2    # "clipboardManager":Landroid/content/ClipboardManager;
    .end local v3    # "clipItem":Landroid/content/ClipData$Item;
    .end local v4    # "clipData":Landroid/content/ClipData;
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_4
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 597
    :pswitch_0
    const/16 v2, 0x20

    invoke-virtual {p0, p1, v2, v1}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_2

    .line 594
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, p1, v3, v2}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    .line 595
    goto :goto_2

    .line 590
    :cond_6
    :goto_1
    nop

    .line 603
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v2, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 604
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method sendMouseEventCode(Landroid/view/MotionEvent;IZ)V
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "button"    # I
    .param p3, "pressed"    # Z

    .line 519
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/termux/view/TerminalView;->getColumnAndRow(Landroid/view/MotionEvent;Z)[I

    move-result-object v1

    .line 520
    .local v1, "columnAndRow":[I
    aget v0, v1, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 521
    .local v0, "x":I
    aget v3, v1, v2

    add-int/2addr v3, v2

    .line 522
    .local v3, "y":I
    if-eqz p3, :cond_2

    const/16 v2, 0x41

    if-eq p2, v2, :cond_0

    const/16 v2, 0x40

    if-ne p2, v2, :cond_2

    .line 523
    :cond_0
    iget-wide v4, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 524
    iget v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 525
    iget v3, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    goto :goto_0

    .line 527
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    .line 528
    iput v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 529
    iput v3, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    .line 532
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2, p2, v0, v3, p3}, Lcom/termux/terminal/TerminalEmulator;->sendMouseEvent(IIIZ)V

    .line 533
    return-void
.end method

.method public setIsTerminalViewKeyLoggingEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 242
    sput-boolean p1, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    .line 243
    return-void
.end method

.method public declared-synchronized setTerminalCursorBlinkerRate(I)Z
    .locals 4
    .param p1, "blinkRate"    # I

    monitor-enter p0

    .line 1061
    if-eqz p1, :cond_1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7d0

    if-le p1, v0, :cond_1

    .line 1062
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The cursor blink rate must be in between 100-2000: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    .line 1064
    const/4 v0, 0x0

    .local v0, "result":Z
    goto :goto_0

    .line 1066
    .end local v0    # "result":Z
    .end local p0    # "this":Lcom/termux/view/TerminalView;
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting cursor blinker rate to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iput p1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    .line 1068
    const/4 v0, 0x1

    .line 1071
    .restart local v0    # "result":Z
    :goto_0
    iget v1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    if-nez v1, :cond_2

    .line 1072
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v2, "TerminalView"

    const-string v3, "Cursor blinker disabled"

    invoke-interface {v1, v2, v3}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->stopTerminalCursorBlinker()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    :cond_2
    monitor-exit p0

    return v0

    .line 1060
    .end local v0    # "result":Z
    .end local p1    # "blinkRate":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setTerminalCursorBlinkerState(ZZ)V
    .locals 4
    .param p1, "start"    # Z
    .param p2, "startOnlyIfCursorEnabled"    # Z

    monitor-enter p0

    .line 1130
    :try_start_0
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->stopTerminalCursorBlinker()V

    .line 1132
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 1134
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkingEnabled(Z)V

    .line 1136
    if-eqz p1, :cond_7

    .line 1138
    iget v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_6

    iget v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 1141
    :cond_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isCursorEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1142
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_2

    .line 1143
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    const-string v2, "Ignoring call to start cursor blinker since cursor is not enabled"

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1144
    .end local p0    # "this":Lcom/termux/view/TerminalView;
    :cond_2
    monitor-exit p0

    return-void

    .line 1148
    :cond_3
    :try_start_2
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_4

    .line 1149
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting cursor blinker with the blink rate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    :cond_4
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 1151
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    .line 1152
    :cond_5
    new-instance v0, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    invoke-direct {v0, p0, v1, v2}, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;-><init>(Lcom/termux/view/TerminalView;Lcom/termux/terminal/TerminalEmulator;I)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    .line 1153
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkingEnabled(Z)V

    .line 1154
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1139
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 1156
    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    .line 1129
    .end local p1    # "start":Z
    .end local p2    # "startOnlyIfCursorEnabled":Z
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public setTerminalViewClient(Lcom/termux/view/TerminalViewClient;)V
    .locals 0
    .param p1, "client"    # Lcom/termux/view/TerminalViewClient;

    .line 233
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    .line 234
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I

    .line 477
    new-instance v0, Lcom/termux/view/TerminalRenderer;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget-object v1, v1, Lcom/termux/view/TerminalRenderer;->mTypeface:Landroid/graphics/Typeface;

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/termux/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    .line 478
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 479
    return-void
.end method

.method public setTopRow(I)V
    .locals 0
    .param p1, "mTopRow"    # I

    .line 1017
    iput p1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 1018
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "newTypeface"    # Landroid/graphics/Typeface;

    .line 482
    new-instance v0, Lcom/termux/view/TerminalRenderer;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mTextSize:I

    invoke-direct {v0, v1, p1}, Lcom/termux/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    .line 483
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 484
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 485
    return-void
.end method

.method public startTextSelectionMode(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1272
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    return-void

    .line 1276
    :cond_0
    invoke-direct {p0, p1}, Lcom/termux/view/TerminalView;->showTextSelectionCursors(Landroid/view/MotionEvent;)V

    .line 1277
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/termux/view/TerminalViewClient;->copyModeChanged(Z)V

    .line 1279
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 1280
    return-void
.end method

.method public stopTextSelectionMode()V
    .locals 2

    .line 1283
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->hideTextSelectionCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/termux/view/TerminalViewClient;->copyModeChanged(Z)V

    .line 1285
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 1287
    :cond_0
    return-void
.end method

.method public unsetStoredSelectedText()V
    .locals 1

    .line 1260
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->unsetStoredSelectedText()V

    .line 1261
    :cond_0
    return-void
.end method

.method public updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1350
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1353
    :pswitch_0
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->hideFloatingToolbar()V

    .line 1354
    goto :goto_0

    .line 1357
    :pswitch_1
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->showFloatingToolbar()V

    .line 1360
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateSize()V
    .locals 6

    .line 944
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getWidth()I

    move-result v0

    .line 945
    .local v0, "viewWidth":I
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getHeight()I

    move-result v1

    .line 946
    .local v1, "viewHeight":I
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-nez v2, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    int-to-float v2, v0

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 950
    .local v2, "newColumns":I
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v4, v4, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    sub-int v4, v1, v4

    iget-object v5, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v5, v5, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    div-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 952
    .local v3, "newRows":I
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-eq v3, v4, :cond_3

    .line 953
    :cond_1
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v4, v2, v3}, Lcom/termux/terminal/TerminalSession;->updateSize(II)V

    .line 954
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v4

    iput-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 955
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v4}, Lcom/termux/view/TerminalViewClient;->onEmulatorSet()V

    .line 958
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    if-eqz v4, :cond_2

    .line 959
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    iget-object v5, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4, v5}, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->setEmulator(Lcom/termux/terminal/TerminalEmulator;)V

    .line 961
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 962
    invoke-virtual {p0, v4, v4}, Lcom/termux/view/TerminalView;->scrollTo(II)V

    .line 963
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 965
    :cond_3
    return-void

    .line 946
    .end local v2    # "newColumns":I
    .end local v3    # "newRows":I
    :cond_4
    :goto_0
    return-void
.end method

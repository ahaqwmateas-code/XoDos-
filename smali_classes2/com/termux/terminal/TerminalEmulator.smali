.class public final Lcom/termux/terminal/TerminalEmulator;
.super Ljava/lang/Object;
.source "TerminalEmulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/terminal/TerminalEmulator$SavedScreenState;
    }
.end annotation


# static fields
.field private static final DECSET_BIT_APPLICATION_CURSOR_KEYS:I = 0x1

.field private static final DECSET_BIT_APPLICATION_KEYPAD:I = 0x20

.field private static final DECSET_BIT_AUTOWRAP:I = 0x8

.field private static final DECSET_BIT_BRACKETED_PASTE_MODE:I = 0x400

.field private static final DECSET_BIT_CURSOR_ENABLED:I = 0x10

.field private static final DECSET_BIT_LEFTRIGHT_MARGIN_MODE:I = 0x800

.field private static final DECSET_BIT_MOUSE_PROTOCOL_SGR:I = 0x200

.field private static final DECSET_BIT_MOUSE_TRACKING_BUTTON_EVENT:I = 0x80

.field private static final DECSET_BIT_MOUSE_TRACKING_PRESS_RELEASE:I = 0x40

.field private static final DECSET_BIT_ORIGIN_MODE:I = 0x4

.field private static final DECSET_BIT_RECTANGULAR_CHANGEATTRIBUTE:I = 0x1000

.field private static final DECSET_BIT_REVERSE_VIDEO:I = 0x2

.field private static final DECSET_BIT_SEND_FOCUS_EVENTS:I = 0x100

.field public static final DEFAULT_TERMINAL_CURSOR_STYLE:I = 0x0

.field public static final DEFAULT_TERMINAL_TRANSCRIPT_ROWS:I = 0x7d0

.field private static final ESC:I = 0x1

.field private static final ESC_CSI:I = 0x6

.field private static final ESC_CSI_ARGS_ASTERIX:I = 0x10

.field private static final ESC_CSI_ARGS_SPACE:I = 0xf

.field private static final ESC_CSI_BIGGERTHAN:I = 0xc

.field private static final ESC_CSI_DOLLAR:I = 0x8

.field private static final ESC_CSI_DOUBLE_QUOTE:I = 0x11

.field private static final ESC_CSI_EXCLAMATION:I = 0x13

.field private static final ESC_CSI_QUESTIONMARK:I = 0x7

.field private static final ESC_CSI_QUESTIONMARK_ARG_DOLLAR:I = 0xe

.field private static final ESC_CSI_SINGLE_QUOTE:I = 0x12

.field private static final ESC_NONE:I = 0x0

.field private static final ESC_OSC:I = 0xa

.field private static final ESC_OSC_ESC:I = 0xb

.field private static final ESC_P:I = 0xd

.field private static final ESC_PERCENT:I = 0x9

.field private static final ESC_POUND:I = 0x2

.field private static final ESC_SELECT_LEFT_PAREN:I = 0x3

.field private static final ESC_SELECT_RIGHT_PAREN:I = 0x4

.field private static final LOG_ESCAPE_SEQUENCES:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "TerminalEmulator"

.field private static final MAX_ESCAPE_PARAMETERS:I = 0x10

.field private static final MAX_OSC_STRING_LENGTH:I = 0x2000

.field public static final MOUSE_LEFT_BUTTON:I = 0x0

.field public static final MOUSE_LEFT_BUTTON_MOVED:I = 0x20

.field public static final MOUSE_WHEELDOWN_BUTTON:I = 0x41

.field public static final MOUSE_WHEELUP_BUTTON:I = 0x40

.field public static final TERMINAL_CURSOR_STYLES_LIST:[Ljava/lang/Integer;

.field public static final TERMINAL_CURSOR_STYLE_BAR:I = 0x2

.field public static final TERMINAL_CURSOR_STYLE_BLOCK:I = 0x0

.field public static final TERMINAL_CURSOR_STYLE_UNDERLINE:I = 0x1

.field public static final TERMINAL_TRANSCRIPT_ROWS_MAX:I = 0xc350

.field public static final TERMINAL_TRANSCRIPT_ROWS_MIN:I = 0x64

.field public static final UNICODE_REPLACEMENT_CHAR:I = 0xfffd


# instance fields
.field private mAboutToAutoWrap:Z

.field final mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

.field private mArgIndex:I

.field private final mArgs:[I

.field private mAutoScrollDisabled:Z

.field mBackColor:I

.field private mBottomMargin:I

.field mClient:Lcom/termux/terminal/TerminalSessionClient;

.field public final mColors:Lcom/termux/terminal/TerminalColors;

.field public mColumns:I

.field private mContinueSequence:Z

.field private mCurrentDecSetFlags:I

.field private mCursorBlinkState:Z

.field private mCursorBlinkingEnabled:Z

.field private mCursorCol:I

.field private mCursorRow:I

.field private mCursorStyle:I

.field private mEffect:I

.field private mEscapeState:I

.field mForeColor:I

.field private mInsertMode:Z

.field private mIsCSIStart:Z

.field private mLastCSIArg:Ljava/lang/Integer;

.field private mLastEmittedCodePoint:I

.field private mLeftMargin:I

.field private final mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

.field private final mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

.field private mRightMargin:I

.field public mRows:I

.field private mSavedDecSetFlags:I

.field private final mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

.field private final mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

.field private mScreen:Lcom/termux/terminal/TerminalBuffer;

.field private mScrollCounter:I

.field private final mSession:Lcom/termux/terminal/TerminalOutput;

.field private mTabStop:[Z

.field private mTitle:Ljava/lang/String;

.field private final mTitleStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTopMargin:I

.field private mUseLineDrawingG0:Z

.field private mUseLineDrawingG1:Z

.field private mUseLineDrawingUsesG0:Z

.field private mUtf8Index:B

.field private final mUtf8InputBuffer:[B

.field private mUtf8ToFollow:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 152
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Integer;

    aput-object v1, v6, v0

    aput-object v3, v6, v2

    aput-object v5, v6, v4

    sput-object v6, Lcom/termux/terminal/TerminalEmulator;->TERMINAL_CURSOR_STYLES_LIST:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/termux/terminal/TerminalOutput;IILjava/lang/Integer;Lcom/termux/terminal/TerminalSessionClient;)V
    .locals 2
    .param p1, "session"    # Lcom/termux/terminal/TerminalOutput;
    .param p2, "columns"    # I
    .param p3, "rows"    # I
    .param p4, "transcriptRows"    # Ljava/lang/Integer;
    .param p5, "client"    # Lcom/termux/terminal/TerminalSessionClient;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 178
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    .line 192
    new-instance v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    invoke-direct {v1}, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 193
    new-instance v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    invoke-direct {v1}, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 196
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 253
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    .line 259
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    .line 260
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    .line 262
    new-instance v0, Lcom/termux/terminal/TerminalColors;

    invoke-direct {v0}, Lcom/termux/terminal/TerminalColors;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    .line 319
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    .line 320
    new-instance v0, Lcom/termux/terminal/TerminalBuffer;

    invoke-direct {p0, p4}, Lcom/termux/terminal/TerminalEmulator;->getTerminalTranscriptRows(Ljava/lang/Integer;)I

    move-result v1

    invoke-direct {v0, p2, v1, p3}, Lcom/termux/terminal/TerminalBuffer;-><init>(III)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    .line 321
    new-instance v0, Lcom/termux/terminal/TerminalBuffer;

    invoke-direct {v0, p2, p3, p3}, Lcom/termux/terminal/TerminalBuffer;-><init>(III)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    .line 322
    iput-object p5, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    .line 323
    iput p3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 324
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 325
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 326
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 327
    return-void
.end method

.method private blockClear(III)V
    .locals 1
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I

    .line 2046
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 2047
    return-void
.end method

.method private blockClear(IIII)V
    .locals 8
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 2050
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/16 v5, 0x20

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 2051
    return-void
.end method

.method private collectOSCArgs(I)V
    .locals 2
    .param p1, "b"    # I

    .line 2176
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 2178
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 2180
    :cond_0
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 2182
    :goto_0
    return-void
.end method

.method private continueSequence(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1307
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 1308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 1309
    return-void
.end method

.method private doCsi(I)V
    .locals 11
    .param p1, "b"    # I

    .line 1445
    const/16 v0, 0xc

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 1759
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    goto/16 :goto_7

    .line 1753
    :sswitch_0
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    .line 1754
    goto/16 :goto_7

    .line 1710
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1749
    :pswitch_0
    goto/16 :goto_7

    .line 1745
    :pswitch_1
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1738
    :pswitch_2
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_8

    .line 1741
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1732
    :pswitch_3
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b]l\u001b\\"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1733
    goto/16 :goto_7

    .line 1729
    :pswitch_4
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b]LIconLabel\u001b\\"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1730
    goto/16 :goto_7

    .line 1726
    :pswitch_5
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    aput-object v6, v1, v3

    const-string v2, "\u001b[9;%d;%dt"

    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1727
    goto/16 :goto_7

    .line 1722
    :pswitch_6
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    aput-object v6, v1, v3

    const-string v2, "\u001b[8;%d;%dt"

    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1723
    goto/16 :goto_7

    .line 1719
    :pswitch_7
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    mul-int/lit8 v6, v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    mul-int/lit8 v7, v7, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v2

    aput-object v0, v1, v3

    const-string v0, "\u001b[4;%d;%dt"

    invoke-static {v5, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1720
    goto/16 :goto_7

    .line 1715
    :pswitch_8
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[3;0;0t"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1716
    goto/16 :goto_7

    .line 1712
    :pswitch_9
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[1t"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1713
    goto/16 :goto_7

    .line 1698
    :sswitch_2
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1700
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    sub-int/2addr v0, v3

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1701
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    add-int/2addr v0, v3

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 1703
    invoke-direct {p0, v2, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_7

    .line 1706
    :cond_0
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    .line 1708
    goto/16 :goto_7

    .line 1690
    :sswitch_3
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 1691
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 1694
    invoke-direct {p0, v2, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1696
    goto/16 :goto_7

    .line 1666
    :sswitch_4
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1678
    goto/16 :goto_7

    .line 1675
    :pswitch_a
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    aput-object v6, v1, v3

    const-string v2, "\u001b[%d;%dR"

    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1676
    goto/16 :goto_7

    .line 1669
    :pswitch_b
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 1670
    .local v0, "dsr":[B
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/termux/terminal/TerminalOutput;->write([BII)V

    .line 1671
    goto/16 :goto_7

    .line 1662
    .end local v0    # "dsr":[B
    :sswitch_5
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->selectGraphicRendition()V

    .line 1663
    goto/16 :goto_7

    .line 1659
    :sswitch_6
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->doSetMode(Z)V

    .line 1660
    goto/16 :goto_7

    .line 1656
    :sswitch_7
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->doSetMode(Z)V

    .line 1657
    goto/16 :goto_7

    .line 1641
    :sswitch_8
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 1652
    goto/16 :goto_7

    .line 1646
    :sswitch_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v0, v1, :cond_1

    .line 1647
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aput-boolean v2, v1, v0

    .line 1646
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1649
    .end local v0    # "i":I
    :cond_1
    goto/16 :goto_7

    .line 1643
    :sswitch_a
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    aput-boolean v2, v0, v1

    .line 1644
    goto/16 :goto_7

    .line 1637
    :sswitch_b
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1638
    goto/16 :goto_7

    .line 1634
    :sswitch_c
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    .line 1635
    goto/16 :goto_7

    .line 1631
    :sswitch_d
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[?64;1;2;6;9;15;18;21;22c"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1623
    :sswitch_e
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto/16 :goto_7

    .line 1624
    :cond_2
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1625
    .local v0, "numRepeat":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1626
    .end local v1    # "i":I
    :cond_3
    goto/16 :goto_7

    .line 1620
    .end local v0    # "numRepeat":I
    :sswitch_f
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorColRespectingOriginMode(I)V

    .line 1621
    goto/16 :goto_7

    .line 1602
    :sswitch_10
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1603
    .local v0, "numberOfTabs":I
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1604
    .local v1, "newCol":I
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_5

    .line 1605
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_4

    .line 1606
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_4

    .line 1607
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1608
    goto :goto_3

    .line 1604
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1611
    .end local v2    # "i":I
    :cond_5
    :goto_3
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 1612
    goto/16 :goto_7

    .line 1598
    .end local v0    # "numberOfTabs":I
    .end local v1    # "newCol":I
    :sswitch_11
    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1599
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v7, 0x20

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v8

    const/4 v6, 0x1

    move v3, v0

    invoke-virtual/range {v2 .. v9}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1600
    goto/16 :goto_7

    .line 1582
    :sswitch_12
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-nez v0, :cond_6

    .line 1587
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1588
    .local v0, "linesToScrollArg":I
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v1, v3

    .line 1589
    .local v1, "linesBetweenTopAndBottomMargins":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1590
    .local v3, "linesToScroll":I
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int v8, v1, v3

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    add-int v10, v5, v3

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1591
    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v2, v4, v5, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1592
    .end local v0    # "linesToScrollArg":I
    .end local v1    # "linesBetweenTopAndBottomMargins":I
    .end local v3    # "linesToScroll":I
    goto/16 :goto_7

    .line 1594
    :cond_6
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unimplementedSequence(I)V

    .line 1596
    goto/16 :goto_7

    .line 1576
    :sswitch_13
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1577
    .local v0, "linesToScroll":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_7

    .line 1578
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    .line 1577
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1579
    .end local v1    # "i":I
    :cond_7
    goto/16 :goto_7

    .line 1567
    .end local v0    # "linesToScroll":I
    :sswitch_14
    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1568
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v0, v1

    .line 1569
    .local v0, "cellsAfterCursor":I
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1570
    .local v1, "cellsToDelete":I
    sub-int v9, v0, v1

    .line 1571
    .local v9, "cellsToMove":I
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v8, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    const/4 v6, 0x1

    move v5, v9

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1572
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v2, v9

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2, v3, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1574
    .end local v0    # "cellsAfterCursor":I
    .end local v1    # "cellsToDelete":I
    .end local v9    # "cellsToMove":I
    goto/16 :goto_7

    .line 1552
    :sswitch_15
    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1553
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v0, v1

    .line 1554
    .local v0, "linesAfterCursor":I
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1555
    .local v1, "linesToDelete":I
    sub-int v10, v0, v1

    .line 1556
    .local v10, "linesToMove":I
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int v5, v4, v1

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    const/4 v4, 0x0

    move v7, v10

    invoke-virtual/range {v3 .. v9}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1557
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v3, v10

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1559
    .end local v0    # "linesAfterCursor":I
    .end local v1    # "linesToDelete":I
    .end local v10    # "linesToMove":I
    goto/16 :goto_7

    .line 1543
    :sswitch_16
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v0, v1

    .line 1544
    .restart local v0    # "linesAfterCursor":I
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1545
    .local v1, "linesToInsert":I
    sub-int v10, v0, v1

    .line 1546
    .restart local v10    # "linesToMove":I
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int v9, v4, v1

    const/4 v4, 0x0

    const/4 v8, 0x0

    move v7, v10

    invoke-virtual/range {v3 .. v9}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1547
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1549
    .end local v0    # "linesAfterCursor":I
    .end local v1    # "linesToInsert":I
    .end local v10    # "linesToMove":I
    goto/16 :goto_7

    .line 1525
    :sswitch_17
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 1536
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1537
    return-void

    .line 1533
    :pswitch_c
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v2, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1534
    goto :goto_5

    .line 1530
    :pswitch_d
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v1, v3

    invoke-direct {p0, v2, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1531
    goto :goto_5

    .line 1527
    :pswitch_e
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1528
    nop

    .line 1539
    :goto_5
    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1540
    goto/16 :goto_7

    .line 1502
    :sswitch_18
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 1519
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1520
    return-void

    .line 1516
    :pswitch_f
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->clearTranscript()V

    .line 1517
    goto :goto_6

    .line 1513
    :pswitch_10
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1514
    goto :goto_6

    .line 1508
    :pswitch_11
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1509
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v1, v3

    invoke-direct {p0, v2, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1510
    goto :goto_6

    .line 1504
    :pswitch_12
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v0, v1, v4}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1505
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v0, v3

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v5, v3

    sub-int/2addr v4, v5

    invoke-direct {p0, v2, v0, v1, v4}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1506
    nop

    .line 1522
    :goto_6
    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1523
    goto/16 :goto_7

    .line 1498
    :sswitch_19
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->nextTabStop(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1499
    goto/16 :goto_7

    .line 1495
    :sswitch_1a
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    sub-int/2addr v1, v3

    invoke-direct {p0, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1496
    goto/16 :goto_7

    .line 1491
    :sswitch_1b
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1492
    goto/16 :goto_7

    .line 1488
    :sswitch_1c
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1489
    goto/16 :goto_7

    .line 1485
    :sswitch_1d
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1486
    goto/16 :goto_7

    .line 1482
    :sswitch_1e
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1483
    goto/16 :goto_7

    .line 1479
    :sswitch_1f
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v0, v3

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1480
    goto/16 :goto_7

    .line 1475
    :sswitch_20
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v0, v3

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    .line 1476
    goto :goto_7

    .line 1472
    :sswitch_21
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    .line 1473
    goto :goto_7

    .line 1463
    :sswitch_22
    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1464
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v0, v1

    .line 1465
    .local v0, "columnsAfterCursor":I
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1466
    .local v1, "spacesToInsert":I
    sub-int v9, v0, v1

    .line 1467
    .local v9, "charsToMove":I
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v7, v5, v1

    iget v8, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    const/4 v6, 0x1

    move v5, v9

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1468
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2, v3, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1470
    .end local v0    # "columnsAfterCursor":I
    .end local v1    # "spacesToInsert":I
    .end local v9    # "charsToMove":I
    goto :goto_7

    .line 1614
    :sswitch_23
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1615
    goto :goto_7

    .line 1617
    :sswitch_24
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1618
    goto :goto_7

    .line 1459
    :sswitch_25
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1460
    goto :goto_7

    .line 1453
    :sswitch_26
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1454
    goto :goto_7

    .line 1456
    :sswitch_27
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1457
    goto :goto_7

    .line 1450
    :sswitch_28
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1451
    goto :goto_7

    .line 1447
    :sswitch_29
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1448
    goto :goto_7

    .line 1756
    :sswitch_2a
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1757
    nop

    .line 1762
    :cond_8
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2a
        0x21 -> :sswitch_29
        0x22 -> :sswitch_28
        0x24 -> :sswitch_27
        0x27 -> :sswitch_26
        0x2a -> :sswitch_25
        0x3e -> :sswitch_24
        0x3f -> :sswitch_23
        0x40 -> :sswitch_22
        0x41 -> :sswitch_21
        0x42 -> :sswitch_20
        0x43 -> :sswitch_1f
        0x44 -> :sswitch_1e
        0x45 -> :sswitch_1d
        0x46 -> :sswitch_1c
        0x47 -> :sswitch_1b
        0x48 -> :sswitch_1a
        0x49 -> :sswitch_19
        0x4a -> :sswitch_18
        0x4b -> :sswitch_17
        0x4c -> :sswitch_16
        0x4d -> :sswitch_15
        0x50 -> :sswitch_14
        0x53 -> :sswitch_13
        0x54 -> :sswitch_12
        0x58 -> :sswitch_11
        0x5a -> :sswitch_10
        0x60 -> :sswitch_f
        0x61 -> :sswitch_1f
        0x62 -> :sswitch_e
        0x63 -> :sswitch_d
        0x64 -> :sswitch_c
        0x65 -> :sswitch_b
        0x66 -> :sswitch_1a
        0x67 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_3
        0x73 -> :sswitch_2
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_a
        0x3 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :array_0
    .array-data 1
        0x1bt
        0x5bt
        0x30t
        0x6et
    .end array-data
.end method

.method private doCsiBiggerThan(I)V
    .locals 4
    .param p1, "b"    # I

    .line 1204
    sparse-switch p1, :sswitch_data_0

    .line 1278
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    goto :goto_0

    .line 1275
    :sswitch_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(ignored) CSI > MODIFY RESOURCE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalEmulator"

    invoke-static {v0, v2, v1}, Lcom/termux/terminal/Logger;->logError(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    goto :goto_0

    .line 1216
    :sswitch_1
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v1, "\u001b[>41;320;0c"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1217
    nop

    .line 1281
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_1
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method private doCsiQuestionMark(I)V
    .locals 18
    .param p1, "b"    # I

    .line 1020
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 1099
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    goto/16 :goto_c

    .line 1080
    :sswitch_0
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v6, v6

    if-lt v5, v6, :cond_0

    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v5, v5

    sub-int/2addr v5, v4

    iput v5, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 1081
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v5, v6, :cond_4

    .line 1082
    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v6, v6, v5

    .line 1083
    .local v6, "externalBit":I
    invoke-static {v6}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v7

    .line 1084
    .local v7, "internalBit":I
    if-ne v7, v2, :cond_1

    .line 1085
    iget-object v8, v0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring request to save/recall decset bit="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TerminalEmulator"

    invoke-static {v8, v10, v9}, Lcom/termux/terminal/Logger;->logWarn(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1087
    :cond_1
    const/16 v8, 0x73

    if-ne v1, v8, :cond_2

    .line 1088
    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    or-int/2addr v8, v7

    iput v8, v0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    goto :goto_2

    .line 1090
    :cond_2
    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    and-int/2addr v8, v7

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v0, v8, v6}, Lcom/termux/terminal/TerminalEmulator;->doDecSetOrReset(ZI)V

    .line 1081
    .end local v6    # "externalBit":I
    .end local v7    # "internalBit":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1094
    .end local v5    # "i":I
    :cond_4
    goto/16 :goto_c

    .line 1068
    :sswitch_1
    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1074
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 1075
    return-void

    .line 1071
    :pswitch_0
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v3

    aput-object v7, v8, v4

    const-string v3, "\u001b[?%d;%d;1R"

    invoke-static {v5, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1072
    goto/16 :goto_c

    .line 1063
    :sswitch_2
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v5, v5

    if-lt v2, v5, :cond_5

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v2, v2

    sub-int/2addr v2, v4

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 1064
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v2, v5, :cond_7

    .line 1065
    const/16 v5, 0x68

    if-ne v1, v5, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v6, v6, v2

    invoke-virtual {v0, v5, v6}, Lcom/termux/terminal/TerminalEmulator;->doDecSetOrReset(ZI)V

    .line 1064
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1066
    .end local v2    # "i":I
    :cond_7
    goto/16 :goto_c

    .line 1023
    :sswitch_3
    iput-boolean v3, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1024
    const/16 v2, 0x20

    .line 1025
    .local v2, "fillChar":I
    const/4 v5, -0x1

    .line 1026
    .local v5, "startCol":I
    const/4 v6, -0x1

    .line 1027
    .local v6, "startRow":I
    const/4 v7, -0x1

    .line 1028
    .local v7, "endCol":I
    const/4 v8, -0x1

    .line 1029
    .local v8, "endRow":I
    const/16 v9, 0x4b

    if-ne v1, v9, :cond_8

    const/4 v9, 0x1

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    :goto_5
    move v11, v9

    .line 1030
    .local v11, "justRow":Z
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v9

    packed-switch v9, :pswitch_data_1

    .line 1050
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    move v3, v5

    move v4, v6

    move v12, v7

    move v13, v8

    goto :goto_8

    .line 1044
    :pswitch_1
    const/4 v5, 0x0

    .line 1045
    if-eqz v11, :cond_9

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    :cond_9
    move v6, v3

    .line 1046
    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 1047
    if-eqz v11, :cond_a

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v3, v4

    goto :goto_6

    :cond_a
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_6
    move v8, v3

    .line 1048
    move v3, v5

    move v4, v6

    move v12, v7

    move v13, v8

    goto :goto_8

    .line 1038
    :pswitch_2
    const/4 v5, 0x0

    .line 1039
    if-eqz v11, :cond_b

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    :cond_b
    move v6, v3

    .line 1040
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v7, v3, 0x1

    .line 1041
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v8, v3, 0x1

    .line 1042
    move v3, v5

    move v4, v6

    move v12, v7

    move v13, v8

    goto :goto_8

    .line 1032
    :pswitch_3
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 1033
    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 1034
    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 1035
    if-eqz v11, :cond_c

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v3, v4

    goto :goto_7

    :cond_c
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_7
    move v8, v3

    .line 1036
    move v3, v5

    move v4, v6

    move v12, v7

    move v13, v8

    .line 1053
    .end local v5    # "startCol":I
    .end local v6    # "startRow":I
    .end local v7    # "endCol":I
    .end local v8    # "endRow":I
    .local v3, "startCol":I
    .local v4, "startRow":I
    .local v12, "endCol":I
    .local v13, "endRow":I
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v14

    .line 1054
    .local v14, "style":J
    move v5, v4

    move v9, v5

    .local v9, "row":I
    :goto_9
    if-ge v9, v13, :cond_f

    .line 1055
    move v5, v3

    move v10, v5

    .local v10, "col":I
    :goto_a
    if-ge v10, v12, :cond_e

    .line 1056
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v5, v9, v10}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_d

    .line 1057
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    move v6, v10

    move v7, v9

    move v8, v2

    move/from16 v16, v9

    move/from16 v17, v10

    .end local v9    # "row":I
    .end local v10    # "col":I
    .local v16, "row":I
    .local v17, "col":I
    move-wide v9, v14

    invoke-virtual/range {v5 .. v10}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    goto :goto_b

    .line 1056
    .end local v16    # "row":I
    .end local v17    # "col":I
    .restart local v9    # "row":I
    .restart local v10    # "col":I
    :cond_d
    move/from16 v16, v9

    move/from16 v17, v10

    .line 1055
    .end local v9    # "row":I
    .end local v10    # "col":I
    .restart local v16    # "row":I
    .restart local v17    # "col":I
    :goto_b
    add-int/lit8 v10, v17, 0x1

    move/from16 v9, v16

    .end local v17    # "col":I
    .restart local v10    # "col":I
    goto :goto_a

    .end local v16    # "row":I
    .restart local v9    # "row":I
    :cond_e
    move/from16 v16, v9

    move/from16 v17, v10

    .line 1054
    .end local v9    # "row":I
    .end local v10    # "col":I
    .restart local v16    # "row":I
    add-int/lit8 v9, v16, 0x1

    .end local v16    # "row":I
    .restart local v9    # "row":I
    goto :goto_9

    :cond_f
    move/from16 v16, v9

    .line 1060
    .end local v9    # "row":I
    goto :goto_c

    .line 1096
    .end local v2    # "fillChar":I
    .end local v3    # "startCol":I
    .end local v4    # "startRow":I
    .end local v11    # "justRow":Z
    .end local v12    # "endCol":I
    .end local v13    # "endRow":I
    .end local v14    # "style":J
    :sswitch_4
    const/16 v2, 0xe

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1097
    return-void

    .line 1101
    :goto_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_4
        0x4a -> :sswitch_3
        0x4b -> :sswitch_3
        0x68 -> :sswitch_2
        0x6c -> :sswitch_2
        0x6e -> :sswitch_1
        0x72 -> :sswitch_0
        0x73 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private doDeviceControl(I)V
    .locals 18
    .param p1, "b"    # I

    .line 891
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 1001
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v4, 0x2000

    if-le v0, v4, :cond_9

    .line 1003
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1004
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    goto/16 :goto_d

    .line 894
    :pswitch_0
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 896
    .local v4, "dcs":Ljava/lang/String;
    const-string v0, "$q"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "\'"

    const-string v6, "\u001b\\"

    if-eqz v0, :cond_1

    .line 897
    const-string v0, "$q\"p"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    const-string v0, "64;1\"p"

    .line 900
    .local v0, "csiString":Ljava/lang/String;
    iget-object v3, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u001bP1$r"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 901
    .end local v0    # "csiString":Ljava/lang/String;
    goto/16 :goto_c

    .line 902
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized DECRQSS string: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 904
    :cond_1
    const-string v0, "+q"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 942
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_8

    aget-object v11, v8, v10

    .line 943
    .local v11, "part":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/2addr v0, v7

    const-string v12, "TerminalEmulator"

    if-nez v0, :cond_7

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v0

    .line 946
    .local v13, "transBuffer":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v14, v0, :cond_2

    .line 948
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0x"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, ""

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v8

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    long-to-int v0, v7

    int-to-char v0, v0

    .line 952
    .local v0, "c":C
    nop

    .line 953
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 949
    .end local v0    # "c":C
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v16, v8

    .line 950
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_2
    iget-object v7, v1, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid device termcap/terminfo encoded name \""

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, "\""

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v12, v8, v0}, Lcom/termux/terminal/Logger;->logStackTraceWithMessage(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 951
    nop

    .line 946
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    add-int/lit8 v14, v14, 0x2

    move-object/from16 v8, v16

    const/4 v7, 0x2

    goto :goto_1

    :cond_2
    move-object/from16 v16, v8

    .line 956
    .end local v14    # "i":I
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, "trans":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    const/4 v14, 0x1

    sparse-switch v7, :sswitch_data_0

    :cond_3
    goto :goto_4

    :sswitch_0
    const-string v7, "name"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x3

    goto :goto_5

    :sswitch_1
    const-string v7, "TN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    goto :goto_5

    :sswitch_2
    const-string v7, "Co"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_5

    :sswitch_3
    const-string v7, "colors"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_5

    :goto_4
    const/4 v7, -0x1

    :goto_5
    packed-switch v7, :pswitch_data_1

    .line 968
    invoke-direct {v1, v14}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v7

    .line 969
    const/16 v15, 0x20

    invoke-direct {v1, v15}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v15

    .line 968
    invoke-static {v0, v7, v15}, Lcom/termux/terminal/KeyHandler;->getCodeFromTermcap(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    .local v7, "responseValue":Ljava/lang/String;
    goto :goto_6

    .line 965
    .end local v7    # "responseValue":Ljava/lang/String;
    :pswitch_1
    const-string v7, "xterm"

    .line 966
    .restart local v7    # "responseValue":Ljava/lang/String;
    goto :goto_6

    .line 961
    .end local v7    # "responseValue":Ljava/lang/String;
    :pswitch_2
    const-string v7, "256"

    .line 962
    .restart local v7    # "responseValue":Ljava/lang/String;
    nop

    .line 972
    :goto_6
    if-nez v7, :cond_5

    .line 973
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :cond_4
    goto :goto_7

    :sswitch_4
    const-string v15, "&8"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v8, 0x1

    goto :goto_7

    :sswitch_5
    const-string v14, "%1"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v8, 0x0

    :goto_7
    packed-switch v8, :pswitch_data_2

    .line 978
    iget-object v8, v1, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unhandled termcap/terminfo name: \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v12, v14}, Lcom/termux/terminal/Logger;->logWarn(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 976
    :pswitch_3
    nop

    .line 981
    :goto_8
    iget-object v8, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u001bP0+r"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_a

    .line 983
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 984
    .local v8, "hexEncoded":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v12, v15, :cond_6

    .line 985
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v17, v0

    .end local v0    # "trans":Ljava/lang/String;
    .local v17, "trans":Ljava/lang/String;
    new-array v0, v14, [Ljava/lang/Object;

    aput-object v15, v0, v3

    const-string v15, "%02X"

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v17

    goto :goto_9

    .end local v17    # "trans":Ljava/lang/String;
    .restart local v0    # "trans":Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v0

    .line 987
    .end local v0    # "trans":Ljava/lang/String;
    .end local v12    # "j":I
    .restart local v17    # "trans":Ljava/lang/String;
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u001bP1+r"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 989
    .end local v7    # "responseValue":Ljava/lang/String;
    .end local v8    # "hexEncoded":Ljava/lang/StringBuilder;
    .end local v13    # "transBuffer":Ljava/lang/StringBuilder;
    .end local v17    # "trans":Ljava/lang/String;
    :goto_a
    goto :goto_b

    .line 990
    :cond_7
    move-object/from16 v16, v8

    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid device termcap/terminfo name of odd length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v12, v7}, Lcom/termux/terminal/Logger;->logError(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    .end local v11    # "part":Ljava/lang/String;
    :goto_b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v16

    const/4 v7, 0x2

    goto/16 :goto_0

    .line 997
    :cond_8
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 999
    .end local v4    # "dcs":Ljava/lang/String;
    goto :goto_d

    .line 1006
    :cond_9
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1007
    iget v0, v1, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {v1, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1010
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x50c14290 -> :sswitch_3
        0x88c -> :sswitch_2
        0xa7a -> :sswitch_1
        0x337a8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x4ac -> :sswitch_5
        0x4d2 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private doEsc(I)V
    .locals 12
    .param p1, "b"    # I

    .line 1324
    const/16 v0, 0x20

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 1410
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 1359
    :sswitch_0
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 1360
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->clearTranscript()V

    .line 1361
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1362
    invoke-direct {p0, v2, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 1363
    goto/16 :goto_0

    .line 1403
    :sswitch_1
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1404
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1405
    goto/16 :goto_0

    .line 1395
    :sswitch_2
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1396
    iput-boolean v3, p0, Lcom/termux/terminal/TerminalEmulator;->mIsCSIStart:Z

    .line 1397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLastCSIArg:Ljava/lang/Integer;

    .line 1398
    goto/16 :goto_0

    .line 1391
    :sswitch_3
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1392
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1393
    goto/16 :goto_0

    .line 1380
    :sswitch_4
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    if-gt v0, v1, :cond_0

    .line 1381
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    add-int/2addr v1, v3

    sub-int v8, v0, v1

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    add-int/lit8 v10, v0, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1382
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v2, v0, v1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_0

    .line 1384
    :cond_0
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 1386
    goto/16 :goto_0

    .line 1375
    :sswitch_5
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    aput-boolean v3, v0, v1

    .line 1376
    goto/16 :goto_0

    .line 1372
    :sswitch_6
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    sub-int/2addr v0, v3

    invoke-direct {p0, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 1373
    goto/16 :goto_0

    .line 1368
    :sswitch_7
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    :cond_1
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1369
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    .line 1370
    goto/16 :goto_0

    .line 1365
    :sswitch_8
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    .line 1366
    goto/16 :goto_0

    .line 1407
    :sswitch_9
    invoke-direct {p0, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1408
    goto/16 :goto_0

    .line 1400
    :sswitch_a
    invoke-direct {p0, v0, v3}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1401
    goto/16 :goto_0

    .line 1350
    :sswitch_b
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    .line 1351
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto/16 :goto_0

    .line 1353
    :cond_2
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v0, v1

    .line 1354
    .local v0, "rows":I
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    sub-int/2addr v1, v7

    add-int/lit8 v7, v1, -0x1

    iget v9, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v10, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    move v8, v0

    invoke-virtual/range {v4 .. v10}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1355
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    invoke-static {v1, v3, v2}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v10

    const/4 v7, 0x1

    const/16 v9, 0x20

    invoke-virtual/range {v4 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1357
    .end local v0    # "rows":I
    goto :goto_0

    .line 1347
    :sswitch_c
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    .line 1348
    goto :goto_0

    .line 1344
    :sswitch_d
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    .line 1345
    goto :goto_0

    .line 1335
    :sswitch_e
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    if-le v0, v1, :cond_3

    .line 1336
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto :goto_0

    .line 1338
    :cond_3
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v0, v1

    .line 1339
    .restart local v0    # "rows":I
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    sub-int/2addr v1, v7

    add-int/lit8 v7, v1, -0x1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    add-int/lit8 v9, v1, 0x1

    iget v10, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    move v8, v0

    invoke-virtual/range {v4 .. v10}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1340
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    invoke-static {v1, v3, v2}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v10

    const/4 v7, 0x1

    const/16 v9, 0x20

    invoke-virtual/range {v4 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1342
    .end local v0    # "rows":I
    goto :goto_0

    .line 1389
    :sswitch_f
    goto :goto_0

    .line 1332
    :sswitch_10
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1333
    goto :goto_0

    .line 1329
    :sswitch_11
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1330
    goto :goto_0

    .line 1326
    :sswitch_12
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1327
    nop

    .line 1413
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_12
        0x28 -> :sswitch_11
        0x29 -> :sswitch_10
        0x30 -> :sswitch_f
        0x36 -> :sswitch_e
        0x37 -> :sswitch_d
        0x38 -> :sswitch_c
        0x39 -> :sswitch_b
        0x3d -> :sswitch_a
        0x3e -> :sswitch_9
        0x44 -> :sswitch_8
        0x45 -> :sswitch_7
        0x46 -> :sswitch_6
        0x48 -> :sswitch_5
        0x4d -> :sswitch_4
        0x4e -> :sswitch_f
        0x50 -> :sswitch_3
        0x5b -> :sswitch_2
        0x5d -> :sswitch_1
        0x63 -> :sswitch_0
    .end sparse-switch
.end method

.method private doEscPound(I)V
    .locals 8
    .param p1, "b"    # I

    .line 1312
    packed-switch p1, :pswitch_data_0

    .line 1317
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_0

    .line 1314
    :pswitch_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/16 v5, 0x45

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1315
    nop

    .line 1320
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method private doLinefeed()V
    .locals 5

    .line 1290
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1291
    .local v0, "belowScrollingRegion":Z
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v1, v2

    .line 1292
    .local v1, "newCursorRow":I
    if-eqz v0, :cond_1

    .line 1294
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v4, v2

    if-eq v3, v4, :cond_3

    .line 1295
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    goto :goto_1

    .line 1298
    :cond_1
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    if-ne v1, v3, :cond_2

    .line 1299
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    .line 1300
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v1, v3, -0x1

    .line 1302
    :cond_2
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    .line 1304
    :cond_3
    :goto_1
    return-void
.end method

.method private doOsc(I)V
    .locals 1
    .param p1, "b"    # I

    .line 1872
    sparse-switch p1, :sswitch_data_0

    .line 1880
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    goto :goto_0

    .line 1877
    :sswitch_0
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    .line 1878
    goto :goto_0

    .line 1874
    :sswitch_1
    const-string v0, "\u0007"

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    .line 1875
    nop

    .line 1883
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method private doOscEsc(I)V
    .locals 1
    .param p1, "b"    # I

    .line 1886
    packed-switch p1, :pswitch_data_0

    .line 1893
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    .line 1894
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    .line 1895
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1888
    :pswitch_0
    const-string v0, "\u001b\\"

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    .line 1889
    nop

    .line 1898
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method private doOscSetTextParameters(Ljava/lang/String;)V
    .locals 23
    .param p1, "bellOrStringTerminator"    # Ljava/lang/String;

    .line 1902
    move-object/from16 v1, p0

    const-string v2, "/"

    const-string v3, "%04x"

    const/4 v0, -0x1

    .line 1903
    .local v0, "value":I
    const-string v4, ""

    .line 1905
    .local v4, "textParameter":Ljava/lang/String;
    const/4 v5, 0x0

    move/from16 v22, v5

    move v5, v0

    move/from16 v0, v22

    .local v0, "mOSCArgTokenizerIndex":I
    .local v5, "value":I
    :goto_0
    iget-object v6, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v7, 0x39

    const/16 v8, 0x30

    const/16 v9, 0x3b

    const/4 v10, 0x0

    if-ge v0, v6, :cond_3

    .line 1906
    iget-object v6, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 1907
    .local v6, "b":C
    if-ne v6, v9, :cond_0

    .line 1908
    iget-object v11, v1, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1909
    goto :goto_2

    .line 1910
    :cond_0
    if-lt v6, v8, :cond_2

    if-gt v6, v7, :cond_2

    .line 1911
    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v10, v5, 0xa

    :goto_1
    add-int/lit8 v7, v6, -0x30

    add-int v5, v10, v7

    .line 1905
    .end local v6    # "b":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1913
    .restart local v6    # "b":C
    :cond_2
    invoke-direct {v1, v6}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1914
    return-void

    .line 1918
    .end local v0    # "mOSCArgTokenizerIndex":I
    .end local v6    # "b":C
    :cond_3
    :goto_2
    const/16 v6, 0xff

    const/4 v11, 0x1

    sparse-switch v5, :sswitch_data_0

    .line 2039
    move-object/from16 v9, p1

    invoke-direct {v1, v5}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto/16 :goto_13

    .line 2037
    :sswitch_0
    move-object/from16 v9, p1

    goto/16 :goto_13

    .line 2033
    :sswitch_1
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    add-int/lit8 v2, v5, -0x6e

    add-int/lit16 v2, v2, 0x100

    invoke-virtual {v0, v2}, Lcom/termux/terminal/TerminalColors;->reset(I)V

    .line 2034
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    .line 2035
    move-object/from16 v9, p1

    goto/16 :goto_13

    .line 2008
    :sswitch_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2009
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 2010
    iget-object v0, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    move-object/from16 v9, p1

    goto/16 :goto_13

    .line 2012
    :cond_4
    const/4 v0, 0x0

    .line 2013
    .local v0, "lastIndex":I
    const/4 v2, 0x0

    move v3, v2

    move v2, v0

    .line 2014
    .end local v0    # "lastIndex":I
    .local v2, "lastIndex":I
    .local v3, "charIndex":I
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v3, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    move v6, v0

    .line 2015
    .local v6, "endOfInput":Z
    if-nez v6, :cond_6

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_8

    .line 2017
    :cond_6
    :try_start_0
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2018
    .local v0, "colorToReset":I
    iget-object v7, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v7, v0}, Lcom/termux/terminal/TerminalColors;->reset(I)V

    .line 2019
    iget-object v7, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v7}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2020
    if-eqz v6, :cond_7

    .line 2029
    .end local v0    # "colorToReset":I
    .end local v2    # "lastIndex":I
    .end local v3    # "charIndex":I
    .end local v6    # "endOfInput":Z
    move-object/from16 v9, p1

    goto/16 :goto_13

    .line 2021
    .restart local v0    # "colorToReset":I
    .restart local v2    # "lastIndex":I
    .restart local v3    # "charIndex":I
    .restart local v6    # "endOfInput":Z
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 2022
    move v0, v3

    .line 2025
    .end local v2    # "lastIndex":I
    .local v0, "lastIndex":I
    move v2, v0

    goto :goto_5

    .line 2023
    .end local v0    # "lastIndex":I
    .restart local v2    # "lastIndex":I
    :catch_0
    move-exception v0

    .line 2013
    .end local v6    # "endOfInput":Z
    :cond_8
    :goto_5
    add-int/2addr v3, v11

    goto :goto_3

    .line 1995
    .end local v2    # "lastIndex":I
    .end local v3    # "charIndex":I
    :sswitch_3
    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 1997
    .local v2, "startIndex":I
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1998
    .local v0, "clipboardText":Ljava/lang/String;
    iget-object v3, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v3, v0}, Lcom/termux/terminal/TerminalOutput;->onCopyTextToClipboard(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2001
    .end local v0    # "clipboardText":Ljava/lang/String;
    move-object/from16 v9, p1

    goto/16 :goto_13

    .line 1999
    :catch_1
    move-exception v0

    .line 2000
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OSC Manipulate selection, invalid string \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TerminalEmulator"

    invoke-static {v3, v7, v6}, Lcom/termux/terminal/Logger;->logError(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    .end local v0    # "e":Ljava/lang/Exception;
    move-object/from16 v9, p1

    goto/16 :goto_13

    .line 1965
    .end local v2    # "startIndex":I
    :sswitch_4
    add-int/lit8 v0, v5, -0xa

    add-int/lit16 v0, v0, 0x100

    .line 1966
    .local v0, "specialIndex":I
    const/4 v7, 0x0

    .line 1967
    .local v7, "lastSemiIndex":I
    const/4 v8, 0x0

    move v12, v8

    move v8, v7

    move v7, v0

    .line 1968
    .end local v0    # "specialIndex":I
    .local v7, "specialIndex":I
    .local v8, "lastSemiIndex":I
    .local v12, "charIndex":I
    :goto_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v12, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    move v13, v0

    .line 1969
    .local v13, "endOfInput":Z
    if-nez v13, :cond_b

    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_a

    goto :goto_8

    :cond_a
    move-object/from16 v9, p1

    const/4 v14, 0x0

    goto/16 :goto_c

    .line 1971
    :cond_b
    :goto_8
    :try_start_2
    invoke-virtual {v4, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1972
    .local v0, "colorSpec":Ljava/lang/String;
    const-string v14, "?"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1974
    iget-object v14, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v14, v14, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aget v14, v14, v7

    .line 1975
    .local v14, "rgb":I
    const/high16 v15, 0xff0000

    and-int/2addr v15, v14

    shr-int/lit8 v15, v15, 0x10

    const v16, 0xffff

    mul-int v15, v15, v16

    div-int/2addr v15, v6

    .line 1976
    .local v15, "r":I
    const v17, 0xff00

    and-int v17, v14, v17

    shr-int/lit8 v17, v17, 0x8

    mul-int v9, v17, v16

    div-int/2addr v9, v6

    .line 1977
    .local v9, "g":I
    and-int/lit16 v10, v14, 0xff

    mul-int v10, v10, v16

    div-int/2addr v10, v6

    .line 1978
    .local v10, "b":I
    iget-object v6, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5

    move/from16 v18, v8

    .end local v8    # "lastSemiIndex":I
    .local v18, "lastSemiIndex":I
    :try_start_3
    const-string v8, "\u001b]"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ";rgb:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move/from16 v20, v14

    move/from16 v21, v15

    const/4 v14, 0x1

    .end local v14    # "rgb":I
    .end local v15    # "r":I
    .local v20, "rgb":I
    .local v21, "r":I
    new-array v15, v14, [Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v14, 0x0

    :try_start_4
    aput-object v19, v15, v14
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-static {v11, v3, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v19, v9

    const/4 v15, 0x1

    .end local v9    # "g":I
    .local v19, "g":I
    new-array v9, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v14, v9, v15

    invoke-static {v11, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1979
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v14, 0x0

    :try_start_6
    aput-object v11, v15, v14

    invoke-static {v9, v3, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v9, p1

    :try_start_7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1978
    invoke-virtual {v6, v8}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 1980
    .end local v10    # "b":I
    .end local v19    # "g":I
    .end local v20    # "rgb":I
    .end local v21    # "r":I
    goto :goto_9

    .line 1988
    .end local v0    # "colorSpec":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v9, p1

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v9, p1

    const/4 v14, 0x0

    goto :goto_b

    .line 1981
    .end local v18    # "lastSemiIndex":I
    .restart local v0    # "colorSpec":Ljava/lang/String;
    .restart local v8    # "lastSemiIndex":I
    :cond_c
    move-object/from16 v9, p1

    move/from16 v18, v8

    const/4 v14, 0x0

    .end local v8    # "lastSemiIndex":I
    .restart local v18    # "lastSemiIndex":I
    iget-object v6, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v6, v7, v0}, Lcom/termux/terminal/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    .line 1982
    iget-object v6, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v6}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    .line 1984
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 1985
    if-nez v13, :cond_d

    const/16 v6, 0x102

    if-gt v7, v6, :cond_d

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    if-lt v12, v6, :cond_e

    :cond_d
    goto :goto_a

    .line 1987
    :cond_e
    move v0, v12

    .line 1990
    .end local v18    # "lastSemiIndex":I
    .local v0, "lastSemiIndex":I
    move v8, v0

    goto :goto_c

    .line 1986
    .local v0, "colorSpec":Ljava/lang/String;
    .restart local v18    # "lastSemiIndex":I
    :goto_a
    nop

    .line 1993
    .end local v0    # "colorSpec":Ljava/lang/String;
    .end local v12    # "charIndex":I
    .end local v13    # "endOfInput":Z
    goto/16 :goto_13

    .line 1988
    .restart local v12    # "charIndex":I
    .restart local v13    # "endOfInput":Z
    :catch_4
    move-exception v0

    goto :goto_b

    .end local v18    # "lastSemiIndex":I
    .restart local v8    # "lastSemiIndex":I
    :catch_5
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v18, v8

    const/4 v14, 0x0

    .end local v8    # "lastSemiIndex":I
    .restart local v18    # "lastSemiIndex":I
    :goto_b
    move/from16 v8, v18

    .line 1967
    .end local v13    # "endOfInput":Z
    .end local v18    # "lastSemiIndex":I
    .restart local v8    # "lastSemiIndex":I
    :goto_c
    const/4 v6, 0x1

    add-int/2addr v12, v6

    const/16 v6, 0xff

    const/16 v9, 0x3b

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_6

    .line 1932
    .end local v7    # "specialIndex":I
    .end local v8    # "lastSemiIndex":I
    .end local v12    # "charIndex":I
    :sswitch_5
    move-object/from16 v9, p1

    const/4 v6, 0x1

    const/4 v14, 0x0

    const/4 v0, -0x1

    .line 1933
    .local v0, "colorIndex":I
    const/4 v2, -0x1

    .line 1934
    .local v2, "parsingPairStart":I
    const/4 v3, 0x0

    .line 1935
    .local v3, "i":I
    :goto_d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v3, v10, :cond_f

    const/4 v10, 0x1

    goto :goto_e

    :cond_f
    const/4 v10, 0x0

    .line 1936
    .local v10, "endOfInput":Z
    :goto_e
    if-eqz v10, :cond_10

    const/16 v11, 0x3b

    goto :goto_f

    :cond_10
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1937
    .local v11, "b":C
    :goto_f
    const/16 v12, 0x3b

    if-ne v11, v12, :cond_14

    .line 1938
    if-gez v2, :cond_11

    .line 1939
    add-int/lit8 v2, v3, 0x1

    const/16 v13, 0xff

    goto :goto_12

    .line 1941
    :cond_11
    if-ltz v0, :cond_13

    const/16 v13, 0xff

    if-le v0, v13, :cond_12

    goto :goto_10

    .line 1945
    :cond_12
    iget-object v15, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v0, v6}, Lcom/termux/terminal/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    .line 1946
    iget-object v6, v1, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v6}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    .line 1947
    const/4 v0, -0x1

    .line 1948
    const/4 v2, -0x1

    goto :goto_12

    .line 1942
    :cond_13
    :goto_10
    invoke-direct {v1, v11}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1943
    return-void

    .line 1951
    :cond_14
    const/16 v13, 0xff

    if-ltz v2, :cond_15

    goto :goto_12

    .line 1953
    :cond_15
    if-gez v2, :cond_18

    if-lt v11, v8, :cond_18

    if-gt v11, v7, :cond_18

    .line 1954
    if-gez v0, :cond_16

    const/4 v6, 0x0

    goto :goto_11

    :cond_16
    mul-int/lit8 v6, v0, 0xa

    :goto_11
    add-int/lit8 v15, v11, -0x30

    add-int/2addr v6, v15

    move v0, v6

    .line 1959
    :goto_12
    if-eqz v10, :cond_17

    .line 1961
    .end local v3    # "i":I
    .end local v10    # "endOfInput":Z
    .end local v11    # "b":C
    goto :goto_13

    .line 1934
    .restart local v3    # "i":I
    :cond_17
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    goto :goto_d

    .line 1956
    .restart local v10    # "endOfInput":Z
    .restart local v11    # "b":C
    :cond_18
    invoke-direct {v1, v11}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 1957
    return-void

    .line 1922
    .end local v0    # "colorIndex":I
    .end local v2    # "parsingPairStart":I
    .end local v3    # "i":I
    .end local v10    # "endOfInput":Z
    .end local v11    # "b":C
    :sswitch_6
    move-object/from16 v9, p1

    invoke-direct {v1, v4}, Lcom/termux/terminal/TerminalEmulator;->setTitle(Ljava/lang/String;)V

    .line 1923
    nop

    .line 2042
    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 2043
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x4 -> :sswitch_5
        0xa -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0x34 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6e -> :sswitch_1
        0x6f -> :sswitch_1
        0x70 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method private doSetMode(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .line 2059
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 2060
    .local v0, "modeBit":I
    sparse-switch v0, :sswitch_data_0

    .line 2073
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto :goto_0

    .line 2071
    :sswitch_0
    goto :goto_0

    .line 2065
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    .line 2067
    goto :goto_0

    .line 2062
    :sswitch_2
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    .line 2063
    nop

    .line 2076
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x14 -> :sswitch_1
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method private emitCodePoint(I)V
    .locals 20
    .param p1, "codePoint"    # I

    .line 2239
    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    .line 2240
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    if-eqz v2, :cond_1

    .line 2242
    :goto_0
    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    .line 2340
    :sswitch_0
    const/16 v1, 0xb7

    .end local p1    # "codePoint":I
    .local v1, "codePoint":I
    goto/16 :goto_1

    .line 2337
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1
    const/16 v1, 0xa3

    .line 2338
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2334
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_2
    const/16 v1, 0x2260

    .line 2335
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2331
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_3
    const/16 v1, 0x3c0

    .line 2332
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2328
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_4
    const/16 v1, 0x2265

    .line 2329
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2325
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_5
    const/16 v1, 0x2264

    .line 2326
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2322
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_6
    const/16 v1, 0x2502

    .line 2323
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto/16 :goto_1

    .line 2319
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_7
    const/16 v1, 0x252c

    .line 2320
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2316
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_8
    const/16 v1, 0x2534

    .line 2317
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2313
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_9
    const/16 v1, 0x2524

    .line 2314
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2310
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_a
    const/16 v1, 0x251c

    .line 2311
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2307
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_b
    const/16 v1, 0x23bd

    .line 2308
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2304
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_c
    const/16 v1, 0x23bc

    .line 2305
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2301
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_d
    const/16 v1, 0x2500

    .line 2302
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2298
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_e
    const/16 v1, 0x23bb

    .line 2299
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2295
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_f
    const/16 v1, 0x23ba

    .line 2296
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2292
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_10
    const/16 v1, 0x253c

    .line 2293
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2289
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_11
    const/16 v1, 0x2514

    .line 2290
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2286
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_12
    const/16 v1, 0x250c

    .line 2287
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2283
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_13
    const/16 v1, 0x2510

    .line 2284
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2280
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_14
    const/16 v1, 0x2518

    .line 2281
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2277
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_15
    const/16 v1, 0x240b

    .line 2278
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2274
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_16
    const/16 v1, 0xa

    .line 2275
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2271
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_17
    const/16 v1, 0xb1

    .line 2272
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2268
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_18
    const/16 v1, 0xb0

    .line 2269
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2265
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_19
    const/16 v1, 0x240a

    .line 2266
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2262
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1a
    const/16 v1, 0xd

    .line 2263
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2259
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1b
    const/16 v1, 0x240c

    .line 2260
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2256
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1c
    const/16 v1, 0x2409

    .line 2257
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2253
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1d
    const/16 v1, 0x2592

    .line 2254
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2247
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1e
    const/16 v1, 0x25c6

    .line 2248
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2244
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_1f
    const/16 v1, 0x20

    .line 2245
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    goto :goto_1

    .line 2250
    .end local v1    # "codePoint":I
    .restart local p1    # "codePoint":I
    :sswitch_20
    const/16 v1, 0x2588

    .line 2251
    .end local p1    # "codePoint":I
    .restart local v1    # "codePoint":I
    nop

    .line 2345
    :cond_1
    :goto_1
    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v8

    .line 2346
    .local v8, "autoWrap":Z
    invoke-static {v1}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v9

    .line 2347
    .local v9, "displayWidth":I
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    const/4 v11, 0x0

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move v12, v2

    .line 2349
    .local v12, "cursorInLastColumn":Z
    const/4 v2, 0x2

    if-eqz v8, :cond_6

    .line 2350
    if-eqz v12, :cond_7

    iget-boolean v3, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-eqz v3, :cond_3

    if-eq v9, v10, :cond_4

    :cond_3
    if-ne v9, v2, :cond_7

    .line 2351
    :cond_4
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-virtual {v2, v3}, Lcom/termux/terminal/TerminalBuffer;->setLineWrap(I)V

    .line 2352
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2353
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v2, v10

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    if-ge v2, v3, :cond_5

    .line 2354
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v2, v10

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    goto :goto_3

    .line 2356
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    goto :goto_3

    .line 2359
    :cond_6
    if-eqz v12, :cond_7

    if-ne v9, v2, :cond_7

    .line 2362
    return-void

    .line 2365
    :cond_7
    :goto_3
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    if-eqz v2, :cond_8

    if-lez v9, :cond_8

    .line 2367
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v2, v9

    .line 2368
    .local v2, "destCol":I
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    if-ge v2, v3, :cond_8

    .line 2369
    iget-object v13, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v14, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v15, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int v16, v3, v2

    const/16 v17, 0x1

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-virtual/range {v13 .. v19}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 2372
    .end local v2    # "destCol":I
    :cond_8
    if-gtz v9, :cond_9

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    if-lez v2, :cond_9

    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    move v13, v2

    .line 2373
    .local v13, "offsetDueToCombiningChar":I
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v13

    .line 2379
    .local v2, "column":I
    if-gez v2, :cond_a

    const/4 v2, 0x0

    :cond_a
    move v14, v2

    .line 2380
    .end local v2    # "column":I
    .local v14, "column":I
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    move v3, v14

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    .line 2382
    if-eqz v8, :cond_c

    if-lez v9, :cond_c

    .line 2383
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v3, v9

    if-ne v2, v3, :cond_b

    const/4 v11, 0x1

    :cond_b
    iput-boolean v11, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2385
    :cond_c
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v2, v9

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2386
    return-void

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_20
        0x5f -> :sswitch_1f
        0x60 -> :sswitch_1e
        0x61 -> :sswitch_1d
        0x62 -> :sswitch_1c
        0x63 -> :sswitch_1b
        0x64 -> :sswitch_1a
        0x65 -> :sswitch_19
        0x66 -> :sswitch_18
        0x67 -> :sswitch_17
        0x68 -> :sswitch_16
        0x69 -> :sswitch_15
        0x6a -> :sswitch_14
        0x6b -> :sswitch_13
        0x6c -> :sswitch_12
        0x6d -> :sswitch_11
        0x6e -> :sswitch_10
        0x6f -> :sswitch_f
        0x70 -> :sswitch_e
        0x71 -> :sswitch_d
        0x72 -> :sswitch_c
        0x73 -> :sswitch_b
        0x74 -> :sswitch_a
        0x75 -> :sswitch_9
        0x76 -> :sswitch_8
        0x77 -> :sswitch_7
        0x78 -> :sswitch_6
        0x79 -> :sswitch_5
        0x7a -> :sswitch_4
        0x7b -> :sswitch_3
        0x7c -> :sswitch_2
        0x7d -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method private finishSequence()V
    .locals 1

    .line 2230
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 2231
    return-void
.end method

.method private finishSequenceAndLogError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .line 2226
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 2227
    return-void
.end method

.method private getArg(IIZ)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I
    .param p3, "treatZeroAsDefault"    # Z

    .line 2168
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v0, v0, p1

    .line 2169
    .local v0, "result":I
    if-ltz v0, :cond_0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 2170
    :cond_0
    move v0, p2

    .line 2172
    :cond_1
    return v0
.end method

.method private getArg0(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    .line 2160
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v0

    return v0
.end method

.method private getArg1(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .line 2164
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v0

    return v0
.end method

.method private getStyle()J
    .locals 3

    .line 2054
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    invoke-static {v0, v1, v2}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTerminalTranscriptRows(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "transcriptRows"    # Ljava/lang/Integer;

    .line 344
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xc350

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 345
    :cond_1
    :goto_0
    const/16 v0, 0x7d0

    return v0
.end method

.method private isDecsetInternalBitSet(I)Z
    .locals 1
    .param p1, "bit"    # I

    .line 267
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logError(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorType"    # Ljava/lang/String;

    .line 2222
    return-void
.end method

.method static mapDecSetBitToInternalBit(I)I
    .locals 1
    .param p0, "decsetBit"    # I

    .line 287
    sparse-switch p0, :sswitch_data_0

    .line 313
    const/4 v0, -0x1

    return v0

    .line 311
    :sswitch_0
    const/16 v0, 0x400

    return v0

    .line 309
    :sswitch_1
    const/16 v0, 0x200

    return v0

    .line 307
    :sswitch_2
    const/16 v0, 0x100

    return v0

    .line 305
    :sswitch_3
    const/16 v0, 0x80

    return v0

    .line 303
    :sswitch_4
    const/16 v0, 0x40

    return v0

    .line 301
    :sswitch_5
    const/16 v0, 0x800

    return v0

    .line 299
    :sswitch_6
    const/16 v0, 0x20

    return v0

    .line 297
    :sswitch_7
    const/16 v0, 0x10

    return v0

    .line 295
    :sswitch_8
    const/16 v0, 0x8

    return v0

    .line 293
    :sswitch_9
    const/4 v0, 0x4

    return v0

    .line 291
    :sswitch_a
    const/4 v0, 0x2

    return v0

    .line 289
    :sswitch_b
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x5 -> :sswitch_a
        0x6 -> :sswitch_9
        0x7 -> :sswitch_8
        0x19 -> :sswitch_7
        0x42 -> :sswitch_6
        0x45 -> :sswitch_5
        0x3e8 -> :sswitch_4
        0x3ea -> :sswitch_3
        0x3ec -> :sswitch_2
        0x3ee -> :sswitch_1
        0x7d4 -> :sswitch_0
    .end sparse-switch
.end method

.method private nextTabStop(I)I
    .locals 2
    .param p1, "numTabs"    # I

    .line 1013
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v0, v1, :cond_1

    .line 1014
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 1013
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1015
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private parseArg(I)V
    .locals 11
    .param p1, "inputByte"    # I

    .line 2119
    filled-new-array {p1}, [I

    move-result-object v0

    .line 2122
    .local v0, "bytes":[I
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/4 v2, 0x6

    const/16 v3, 0x30

    const/16 v4, 0x3b

    if-ne v1, v2, :cond_2

    .line 2123
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mIsCSIStart:Z

    if-eqz v1, :cond_0

    if-eq p1, v4, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mIsCSIStart:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLastCSIArg:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLastCSIArg:Ljava/lang/Integer;

    .line 2124
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_2

    if-ne p1, v4, :cond_2

    .line 2125
    :cond_1
    filled-new-array {v3, v4}, [I

    move-result-object v1

    move-object v0, v1

    .line 2129
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mIsCSIStart:Z

    .line 2131
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_9

    aget v5, v0, v1

    .line 2132
    .local v5, "b":I
    if-lt v5, v3, :cond_6

    const/16 v6, 0x39

    if-gt v5, v6, :cond_6

    .line 2133
    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v7, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v7, v7

    if-ge v6, v7, :cond_5

    .line 2134
    iget-object v6, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    aget v6, v6, v7

    .line 2135
    .local v6, "oldValue":I
    add-int/lit8 v7, v5, -0x30

    .line 2137
    .local v7, "thisDigit":I
    if-ltz v6, :cond_3

    .line 2138
    mul-int/lit8 v8, v6, 0xa

    add-int/2addr v8, v7

    .local v8, "value":I
    goto :goto_1

    .line 2140
    .end local v8    # "value":I
    :cond_3
    move v8, v7

    .line 2142
    .restart local v8    # "value":I
    :goto_1
    const/16 v9, 0x270f

    if-le v8, v9, :cond_4

    .line 2143
    const/16 v8, 0x270f

    .line 2144
    :cond_4
    iget-object v9, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    iget v10, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    aput v8, v9, v10

    .line 2146
    .end local v6    # "oldValue":I
    .end local v7    # "thisDigit":I
    .end local v8    # "value":I
    :cond_5
    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v6}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_2

    .line 2147
    :cond_6
    if-ne v5, v4, :cond_8

    .line 2148
    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v7, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v7, v7

    if-ge v6, v7, :cond_7

    .line 2149
    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 2151
    :cond_7
    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, v6}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_2

    .line 2153
    :cond_8
    invoke-direct {p0, v5}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 2155
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/termux/terminal/TerminalEmulator;->mLastCSIArg:Ljava/lang/Integer;

    .line 2131
    .end local v5    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2157
    :cond_9
    return-void
.end method

.method private processByte(B)V
    .locals 10
    .param p1, "byteToProcess"    # B

    .line 491
    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    const v1, 0xfffd

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lez v0, :cond_9

    .line 492
    and-int/lit16 v0, p1, 0xc0

    const/4 v5, 0x0

    const/16 v6, 0x80

    if-ne v0, v6, :cond_8

    .line 494
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v7, v1, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v0, v1

    .line 495
    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    sub-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    if-nez v0, :cond_d

    .line 496
    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-ne v0, v3, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-ne v0, v2, :cond_1

    const/16 v0, 0xf

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    :goto_0
    int-to-byte v0, v0

    .line 497
    .local v0, "firstByteMask":B
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    aget-byte v1, v1, v5

    and-int/2addr v1, v0

    .line 498
    .local v1, "codePoint":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    iget-byte v8, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-ge v7, v8, :cond_2

    .line 499
    shl-int/lit8 v8, v1, 0x6

    iget-object v9, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    aget-byte v9, v9, v7

    and-int/lit8 v9, v9, 0x3f

    or-int v1, v8, v9

    .line 498
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 500
    .end local v7    # "i":I
    :cond_2
    const/16 v7, 0x7f

    if-gt v1, v7, :cond_3

    iget-byte v7, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-gt v7, v4, :cond_5

    :cond_3
    const/16 v4, 0x7ff

    if-ge v1, v4, :cond_4

    iget-byte v4, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-gt v4, v3, :cond_5

    :cond_4
    const v3, 0xffff

    if-ge v1, v3, :cond_6

    iget-byte v3, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-le v3, v2, :cond_6

    .line 503
    :cond_5
    const v1, 0xfffd

    .line 506
    :cond_6
    iput-byte v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 508
    if-lt v1, v6, :cond_7

    const/16 v2, 0x9f

    if-gt v1, v2, :cond_7

    goto :goto_3

    .line 515
    :cond_7
    invoke-static {v1}, Ljava/lang/Character;->getType(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    .line 518
    :sswitch_0
    const v1, 0xfffd

    .line 520
    :goto_2
    invoke-virtual {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    .line 522
    .end local v0    # "firstByteMask":B
    .end local v1    # "codePoint":I
    :goto_3
    goto :goto_5

    .line 525
    :cond_8
    iput-byte v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 526
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    .line 534
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->processByte(B)V

    goto :goto_5

    .line 537
    :cond_9
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_a

    .line 538
    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    .line 539
    return-void

    .line 540
    :cond_a
    and-int/lit16 v0, p1, 0xe0

    const/16 v5, 0xc0

    if-ne v0, v5, :cond_b

    .line 541
    iput-byte v4, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_4

    .line 542
    :cond_b
    and-int/lit16 v0, p1, 0xf0

    const/16 v4, 0xe0

    if-ne v0, v4, :cond_c

    .line 543
    iput-byte v3, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_4

    .line 544
    :cond_c
    and-int/lit16 v0, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_e

    .line 545
    iput-byte v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    .line 551
    :goto_4
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v2, v1, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v0, v1

    .line 553
    :cond_d
    :goto_5
    return-void

    .line 548
    :cond_e
    invoke-virtual {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    .line 549
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method private resizeScreen()V
    .locals 9

    .line 402
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 403
    .local v0, "cursor":[I
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v1, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    :goto_0
    move v4, v1

    .line 404
    .local v4, "newTotalRows":I
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v8

    move-object v5, v0

    invoke-virtual/range {v1 .. v8}, Lcom/termux/terminal/TerminalBuffer;->resize(III[IJZ)V

    .line 405
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 406
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 407
    return-void
.end method

.method private restoreCursor()V
    .locals 4

    .line 1431
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 1432
    .local v0, "state":Lcom/termux/terminal/TerminalEmulator$SavedScreenState;
    :goto_0
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    invoke-direct {p0, v1, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 1433
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    .line 1434
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 1435
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 1436
    const/16 v1, 0xc

    .line 1437
    .local v1, "mask":I
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    not-int v3, v1

    and-int/2addr v2, v3

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    .line 1438
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG0:Z

    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    .line 1439
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG1:Z

    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    .line 1440
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingUsesG0:Z

    iput-boolean v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 1441
    return-void
.end method

.method private saveCursor()V
    .locals 2

    .line 1417
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 1418
    .local v0, "state":Lcom/termux/terminal/TerminalEmulator$SavedScreenState;
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 1419
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    .line 1420
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    .line 1421
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    .line 1422
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    .line 1423
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    .line 1424
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG0:Z

    .line 1425
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG1:Z

    .line 1426
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingUsesG0:Z

    .line 1427
    return-void
.end method

.method private scrollDownOneLine()V
    .locals 21

    .line 2094
    move-object/from16 v0, p0

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    .line 2095
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    if-nez v1, :cond_1

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2101
    :cond_0
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_1

    .line 2097
    :cond_1
    :goto_0
    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    add-int/lit8 v8, v1, 0x1

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    sub-int v9, v1, v2

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v1, v2

    add-int/lit8 v10, v1, -0x1

    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v12, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    invoke-virtual/range {v6 .. v12}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 2099
    iget-object v13, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v14, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v15, v1, -0x1

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    sub-int v16, v1, v2

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    int-to-long v1, v1

    const/16 v17, 0x1

    const/16 v18, 0x20

    move-wide/from16 v19, v1

    invoke-virtual/range {v13 .. v20}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 2103
    :goto_1
    return-void
.end method

.method private selectGraphicRendition()V
    .locals 10

    .line 1766
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v0, v0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 1767
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v0, v1, :cond_26

    .line 1768
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v1, v1, v0

    .line 1769
    .local v1, "code":I
    if-gez v1, :cond_2

    .line 1770
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-lez v3, :cond_1

    .line 1771
    goto/16 :goto_6

    .line 1773
    :cond_1
    const/4 v1, 0x0

    .line 1776
    :cond_2
    const/16 v3, 0x101

    const/16 v4, 0x100

    if-nez v1, :cond_3

    .line 1777
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 1778
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 1779
    const/4 v3, 0x0

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1780
    :cond_3
    if-ne v1, v2, :cond_4

    .line 1781
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1782
    :cond_4
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 1783
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1784
    :cond_5
    const/4 v6, 0x3

    if-ne v1, v6, :cond_6

    .line 1785
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1786
    :cond_6
    const/4 v6, 0x4

    if-ne v1, v6, :cond_7

    .line 1787
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v3, v6

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1788
    :cond_7
    const/4 v6, 0x5

    const/16 v7, 0x8

    if-ne v1, v6, :cond_8

    .line 1789
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v3, v7

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1790
    :cond_8
    const/4 v8, 0x7

    if-ne v1, v8, :cond_9

    .line 1791
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1792
    :cond_9
    if-ne v1, v7, :cond_a

    .line 1793
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1794
    :cond_a
    const/16 v8, 0x9

    if-ne v1, v8, :cond_b

    .line 1795
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1796
    :cond_b
    const/16 v8, 0xa

    if-ne v1, v8, :cond_c

    goto/16 :goto_6

    .line 1798
    :cond_c
    const/16 v8, 0xb

    if-ne v1, v8, :cond_d

    goto/16 :goto_6

    .line 1800
    :cond_d
    const/16 v8, 0x16

    if-ne v1, v8, :cond_e

    .line 1801
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit16 v3, v3, -0x102

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1802
    :cond_e
    const/16 v8, 0x17

    if-ne v1, v8, :cond_f

    .line 1803
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1804
    :cond_f
    const/16 v8, 0x18

    if-ne v1, v8, :cond_10

    .line 1805
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1806
    :cond_10
    const/16 v8, 0x19

    if-ne v1, v8, :cond_11

    .line 1807
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1808
    :cond_11
    const/16 v8, 0x1b

    if-ne v1, v8, :cond_12

    .line 1809
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1810
    :cond_12
    const/16 v8, 0x1c

    if-ne v1, v8, :cond_13

    .line 1811
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1812
    :cond_13
    const/16 v8, 0x1d

    if-ne v1, v8, :cond_14

    .line 1813
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    .line 1814
    :cond_14
    const/16 v8, 0x1e

    if-lt v1, v8, :cond_15

    const/16 v8, 0x25

    if-gt v1, v8, :cond_15

    .line 1815
    add-int/lit8 v3, v1, -0x1e

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_6

    .line 1816
    :cond_15
    const/16 v8, 0x26

    if-eq v1, v8, :cond_1b

    const/16 v9, 0x30

    if-ne v1, v9, :cond_16

    goto :goto_1

    .line 1854
    :cond_16
    const/16 v5, 0x27

    if-ne v1, v5, :cond_17

    .line 1855
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_6

    .line 1856
    :cond_17
    const/16 v4, 0x28

    if-lt v1, v4, :cond_18

    const/16 v4, 0x2f

    if-gt v1, v4, :cond_18

    .line 1857
    add-int/lit8 v3, v1, -0x28

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_6

    .line 1858
    :cond_18
    const/16 v4, 0x31

    if-ne v1, v4, :cond_19

    .line 1859
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_6

    .line 1860
    :cond_19
    const/16 v3, 0x5a

    if-lt v1, v3, :cond_1a

    const/16 v3, 0x61

    if-gt v1, v3, :cond_1a

    .line 1861
    add-int/lit8 v3, v1, -0x5a

    add-int/2addr v3, v7

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_6

    .line 1862
    :cond_1a
    const/16 v3, 0x64

    if-lt v1, v3, :cond_25

    const/16 v3, 0x6b

    if-gt v1, v3, :cond_25

    .line 1863
    add-int/lit8 v3, v1, -0x64

    add-int/2addr v3, v7

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_6

    .line 1820
    :cond_1b
    :goto_1
    add-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-le v3, v4, :cond_1c

    goto/16 :goto_6

    .line 1821
    :cond_1c
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    .line 1822
    .local v3, "firstArg":I
    if-ne v3, v5, :cond_21

    .line 1823
    add-int/lit8 v4, v0, 0x4

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-le v4, v5, :cond_1d

    .line 1824
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too few CSI"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";2 RGB arguments"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TerminalEmulator"

    invoke-static {v4, v6, v5}, Lcom/termux/terminal/Logger;->logWarn(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1826
    :cond_1d
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    add-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    .local v4, "red":I
    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    add-int/lit8 v6, v0, 0x3

    aget v5, v5, v6

    .local v5, "green":I
    iget-object v6, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    add-int/lit8 v7, v0, 0x4

    aget v6, v6, v7

    .line 1827
    .local v6, "blue":I
    if-ltz v4, :cond_20

    if-ltz v5, :cond_20

    if-ltz v6, :cond_20

    const/16 v7, 0xff

    if-gt v4, v7, :cond_20

    if-gt v5, v7, :cond_20

    if-le v6, v7, :cond_1e

    goto :goto_2

    .line 1830
    :cond_1e
    shl-int/lit8 v7, v4, 0x10

    const/high16 v9, -0x1000000

    or-int/2addr v7, v9

    shl-int/lit8 v9, v5, 0x8

    or-int/2addr v7, v9

    or-int/2addr v7, v6

    .line 1831
    .local v7, "argbColor":I
    if-ne v1, v8, :cond_1f

    .line 1832
    iput v7, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto :goto_3

    .line 1834
    :cond_1f
    iput v7, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto :goto_3

    .line 1828
    .end local v7    # "argbColor":I
    :cond_20
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid RGB: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    .line 1837
    :goto_3
    nop

    .end local v4    # "red":I
    .end local v5    # "green":I
    .end local v6    # "blue":I
    add-int/lit8 v0, v0, 0x4

    .line 1838
    goto :goto_5

    .line 1839
    :cond_21
    if-ne v3, v6, :cond_24

    .line 1840
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    add-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    .line 1841
    .local v4, "color":I
    add-int/lit8 v0, v0, 0x2

    .line 1842
    if-ltz v4, :cond_23

    const/16 v5, 0x103

    if-ge v4, v5, :cond_23

    .line 1843
    if-ne v1, v8, :cond_22

    .line 1844
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto :goto_4

    .line 1846
    :cond_22
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 1851
    .end local v4    # "color":I
    :cond_23
    :goto_4
    goto :goto_5

    .line 1852
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid ISO-8613-3 SGR first argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    .line 1854
    .end local v3    # "firstArg":I
    :goto_5
    nop

    .line 1767
    .end local v1    # "code":I
    :cond_25
    :goto_6
    add-int/2addr v0, v2

    goto/16 :goto_0

    .line 1869
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method private setCursorCol(I)V
    .locals 1
    .param p1, "col"    # I

    .line 2394
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2396
    return-void
.end method

.method private setCursorColRespectingOriginMode(I)V
    .locals 1
    .param p1, "col"    # I

    .line 2400
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    .line 2401
    return-void
.end method

.method private setCursorPosition(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2083
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    .line 2084
    .local v0, "originMode":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2085
    .local v2, "effectiveTopMargin":I
    :goto_0
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 2086
    .local v3, "effectiveBottomMargin":I
    :goto_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 2087
    .local v1, "effectiveLeftMargin":I
    :cond_2
    if-eqz v0, :cond_3

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto :goto_2

    :cond_3
    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 2088
    .local v4, "effectiveRightMargin":I
    :goto_2
    add-int v5, v2, p2

    add-int/lit8 v6, v3, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2089
    .local v5, "newRow":I
    add-int v6, v1, p1

    add-int/lit8 v7, v4, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2090
    .local v6, "newCol":I
    invoke-direct {p0, v5, v6}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 2091
    return-void
.end method

.method private setCursorRow(I)V
    .locals 1
    .param p1, "row"    # I

    .line 2389
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 2390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2391
    return-void
.end method

.method private setCursorRowCol(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 2405
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 2406
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2407
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2408
    return-void
.end method

.method private setDecsetinternalBit(IZ)V
    .locals 3
    .param p1, "internalBit"    # I
    .param p2, "set"    # Z

    .line 271
    if-eqz p2, :cond_1

    .line 273
    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0x40

    if-ne p1, v2, :cond_0

    .line 274
    invoke-direct {p0, v1, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto :goto_0

    .line 275
    :cond_0
    if-ne p1, v1, :cond_1

    .line 276
    invoke-direct {p0, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 279
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 280
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    goto :goto_1

    .line 282
    :cond_2
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    .line 284
    :goto_1
    return-void
.end method

.method private setDefaultTabStops()V
    .locals 3

    .line 475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v0, v1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput-boolean v2, v1, v0

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "newTitle"    # Ljava/lang/String;

    .line 2471
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    .line 2472
    .local v0, "oldTitle":Ljava/lang/String;
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    .line 2473
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2474
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1, v0, p1}, Lcom/termux/terminal/TerminalOutput;->titleChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    :cond_0
    return-void
.end method

.method private startEscapeSequence()V
    .locals 2

    .line 1284
    const/4 v0, 0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 1285
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 1286
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1287
    return-void
.end method

.method private unimplementedSequence(I)V
    .locals 4
    .param p1, "b"    # I

    .line 2185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unimplemented sequence char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (U+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "%04x"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2186
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 2187
    return-void
.end method

.method private unknownParameter(I)V
    .locals 2
    .param p1, "parameter"    # I

    .line 2195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2196
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 2197
    return-void
.end method

.method private unknownSequence(I)V
    .locals 2
    .param p1, "b"    # I

    .line 2190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sequence char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (numeric value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2191
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    .line 2192
    return-void
.end method


# virtual methods
.method public append([BI)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .line 486
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 487
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->processByte(B)V

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public clearScrollCounter()V
    .locals 1

    .line 2415
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    .line 2416
    return-void
.end method

.method public doDecSetOrReset(ZI)V
    .locals 11
    .param p1, "setting"    # Z
    .param p2, "externalBit"    # I

    .line 1104
    invoke-static {p2}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v0

    .line 1105
    .local v0, "internalBit":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1106
    invoke-direct {p0, v0, p1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1108
    :cond_0
    const/4 v1, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 1198
    invoke-direct {p0, p2}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto/16 :goto_1

    .line 1196
    :sswitch_0
    goto/16 :goto_1

    .line 1161
    :sswitch_1
    if-eqz p1, :cond_1

    .line 1162
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    goto/16 :goto_1

    .line 1164
    :cond_1
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    .line 1165
    goto/16 :goto_1

    .line 1159
    :sswitch_2
    goto/16 :goto_1

    .line 1145
    :sswitch_3
    if-nez p1, :cond_9

    .line 1146
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1147
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto/16 :goto_1

    .line 1171
    :sswitch_4
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    .line 1172
    .local v2, "newScreen":Lcom/termux/terminal/TerminalBuffer;
    :goto_0
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-eq v2, v3, :cond_9

    .line 1173
    iget v3, v2, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v3, v4, :cond_3

    iget v3, v2, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-eq v3, v4, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 1174
    .local v1, "resized":Z
    :cond_4
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    .line 1175
    :cond_5
    iput-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    .line 1176
    if-nez p1, :cond_6

    .line 1177
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v3, v3, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    .line 1178
    .local v3, "col":I
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 1179
    .local v4, "row":I
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    .line 1180
    if-eqz v1, :cond_6

    .line 1182
    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 1183
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 1187
    .end local v3    # "col":I
    .end local v4    # "row":I
    :cond_6
    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->resizeScreen()V

    .line 1189
    :cond_7
    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v2, v3, :cond_8

    .line 1190
    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/16 v8, 0x20

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v10}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    .line 1191
    .end local v1    # "resized":Z
    :cond_8
    goto :goto_1

    .line 1143
    .end local v2    # "newScreen":Lcom/termux/terminal/TerminalBuffer;
    :sswitch_5
    goto :goto_1

    .line 1137
    :sswitch_6
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    if-eqz v1, :cond_9

    .line 1138
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v1, p1}, Lcom/termux/terminal/TerminalSessionClient;->onTerminalCursorStateChange(Z)V

    goto :goto_1

    .line 1130
    :sswitch_7
    if-eqz p1, :cond_9

    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto :goto_1

    .line 1128
    :sswitch_8
    goto :goto_1

    .line 1126
    :sswitch_9
    goto :goto_1

    .line 1116
    :sswitch_a
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1117
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 1118
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 1120
    const/16 v2, 0x800

    invoke-direct {p0, v2, v1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1122
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v1, v1, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1123
    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 1124
    goto :goto_1

    .line 1110
    :sswitch_b
    nop

    .line 1201
    :cond_9
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x3 -> :sswitch_a
        0x4 -> :sswitch_9
        0x5 -> :sswitch_8
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_6
        0x9 -> :sswitch_6
        0xc -> :sswitch_6
        0x19 -> :sswitch_6
        0x28 -> :sswitch_5
        0x2d -> :sswitch_5
        0x2f -> :sswitch_4
        0x42 -> :sswitch_5
        0x45 -> :sswitch_3
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_2
        0x3ed -> :sswitch_2
        0x3ee -> :sswitch_2
        0x3f7 -> :sswitch_2
        0x40a -> :sswitch_2
        0x417 -> :sswitch_4
        0x418 -> :sswitch_1
        0x419 -> :sswitch_4
        0x7d4 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCursorCol()I
    .locals 1

    .line 414
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    return v0
.end method

.method public getCursorRow()I
    .locals 1

    .line 410
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    return v0
.end method

.method public getCursorStyle()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    return v0
.end method

.method public getScreen()Lcom/termux/terminal/TerminalBuffer;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    return-object v0
.end method

.method public getScrollCounter()I
    .locals 1

    .line 2411
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    return v0
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .locals 1
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .line 2461
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 2466
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAlternateBufferActive()Z
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutoScrollDisabled()Z
    .locals 1

    .line 2419
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAutoScrollDisabled:Z

    return v0
.end method

.method public isCursorEnabled()Z
    .locals 1

    .line 442
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isCursorKeysApplicationMode()Z
    .locals 1

    .line 466
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isKeypadApplicationMode()Z
    .locals 1

    .line 462
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isMouseTrackingActive()Z
    .locals 1

    .line 471
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isReverseVideo()Z
    .locals 1

    .line 436
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public paste(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 2481
    const-string v0, "(\u001b|[\u0080-\u009f])"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2483
    const-string v0, "\r?\n"

    const-string v1, "\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2486
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    .line 2487
    .local v0, "bracketed":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v2, "\u001b[200~"

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 2488
    :cond_0
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1, p1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 2489
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v2, "\u001b[201~"

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 2490
    :cond_1
    return-void
.end method

.method public processCodePoint(I)V
    .locals 28
    .param p1, "b"    # I

    .line 556
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 621
    iput-boolean v3, v0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 622
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/4 v5, -0x1

    const/16 v6, 0x1000

    const/16 v7, 0x7e

    const/16 v8, 0x78

    const/16 v9, 0x70

    const/16 v10, 0x30

    const/16 v11, 0x20

    const/4 v12, 0x2

    packed-switch v2, :pswitch_data_0

    .line 881
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_1a

    .line 611
    :sswitch_0
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    .line 613
    return-void

    .line 614
    :cond_0
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    if-eq v3, v2, :cond_1

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->startEscapeSequence()V

    goto/16 :goto_1b

    .line 617
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    .line 619
    goto/16 :goto_1b

    .line 603
    :sswitch_1
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    if-eqz v2, :cond_2d

    .line 605
    iput v3, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 606
    const/16 v2, 0x7f

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    goto/16 :goto_1b

    .line 599
    :sswitch_2
    iput-boolean v4, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 600
    goto/16 :goto_1b

    .line 596
    :sswitch_3
    iput-boolean v3, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 597
    goto/16 :goto_1b

    .line 593
    :sswitch_4
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 594
    goto/16 :goto_1b

    .line 590
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    .line 591
    goto/16 :goto_1b

    .line 585
    :sswitch_6
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->nextTabStop(I)I

    move-result v2

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 586
    goto/16 :goto_1b

    .line 566
    :sswitch_7
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    if-ne v2, v3, :cond_3

    .line 568
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v2, v4

    .line 569
    .local v2, "previousRow":I
    if-ltz v2, :cond_2

    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalBuffer;->getLineWrap(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalBuffer;->clearLineWrap(I)V

    .line 571
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 573
    .end local v2    # "previousRow":I
    :cond_2
    goto/16 :goto_1b

    .line 574
    :cond_3
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v4

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 576
    goto/16 :goto_1b

    .line 560
    :sswitch_8
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    if-ne v3, v2, :cond_4

    .line 561
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    goto/16 :goto_1b

    .line 563
    :cond_4
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalOutput;->onBell()V

    .line 564
    goto/16 :goto_1b

    .line 558
    :sswitch_9
    goto/16 :goto_1b

    .line 642
    :pswitch_1
    if-ne v1, v9, :cond_5

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    goto/16 :goto_1a

    .line 645
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 647
    goto/16 :goto_1a

    .line 795
    :pswitch_2
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_6

    .line 796
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v5

    .line 797
    .local v2, "columnsAfterCursor":I
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 798
    .local v4, "columnsToInsert":I
    sub-int v12, v2, v4

    .line 799
    .local v12, "columnsToMove":I
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v10, v7, v4

    const/4 v11, 0x0

    const/4 v7, 0x0

    move v8, v12

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 800
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v5, v3, v4, v6}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 801
    .end local v2    # "columnsAfterCursor":I
    .end local v4    # "columnsToInsert":I
    .end local v12    # "columnsToMove":I
    goto/16 :goto_1a

    :cond_6
    if-ne v1, v7, :cond_7

    .line 802
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v5

    .line 803
    .restart local v2    # "columnsAfterCursor":I
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 804
    .local v4, "columnsToDelete":I
    sub-int v12, v2, v4

    .line 805
    .restart local v12    # "columnsToMove":I
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v6, v4

    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    const/4 v11, 0x0

    const/4 v7, 0x0

    move v8, v12

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 806
    .end local v2    # "columnsAfterCursor":I
    .end local v4    # "columnsToDelete":I
    .end local v12    # "columnsToMove":I
    goto/16 :goto_1a

    .line 807
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 809
    goto/16 :goto_1a

    .line 778
    :pswitch_3
    const/16 v2, 0x71

    if-ne v1, v2, :cond_b

    .line 780
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    .line 781
    .local v2, "arg":I
    if-eqz v2, :cond_a

    if-ne v2, v12, :cond_8

    goto :goto_0

    .line 784
    :cond_8
    if-ne v2, v4, :cond_9

    .line 786
    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    .line 788
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_1

    .line 783
    :cond_a
    :goto_0
    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit16 v4, v4, -0x81

    iput v4, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    .line 790
    .end local v2    # "arg":I
    :goto_1
    goto/16 :goto_1a

    .line 791
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 793
    goto/16 :goto_1a

    .line 872
    :pswitch_4
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    .line 873
    .local v2, "attributeChangeExtent":I
    if-ne v1, v8, :cond_d

    if-ltz v2, :cond_d

    if-gt v2, v12, :cond_d

    .line 875
    if-ne v2, v12, :cond_c

    goto :goto_2

    :cond_c
    const/4 v4, 0x0

    :goto_2
    invoke-direct {v0, v6, v4}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto/16 :goto_1a

    .line 877
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 879
    goto/16 :goto_1a

    .line 844
    .end local v2    # "attributeChangeExtent":I
    :pswitch_5
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    .line 845
    .local v2, "arg":I
    packed-switch v1, :pswitch_data_1

    .line 868
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 870
    goto/16 :goto_1a

    .line 866
    :pswitch_7
    goto/16 :goto_1a

    .line 847
    :pswitch_8
    packed-switch v2, :pswitch_data_2

    goto :goto_3

    .line 859
    :pswitch_9
    iput v12, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto :goto_3

    .line 855
    :pswitch_a
    iput v4, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 856
    goto :goto_3

    .line 851
    :pswitch_b
    iput v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 852
    nop

    .line 862
    :goto_3
    goto/16 :goto_1a

    .line 822
    .end local v2    # "arg":I
    :pswitch_c
    if-ne v1, v9, :cond_13

    .line 824
    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    .line 826
    .local v2, "mode":I
    const/16 v6, 0x2f

    if-eq v2, v6, :cond_11

    const/16 v6, 0x417

    if-eq v2, v6, :cond_11

    const/16 v6, 0x419

    if-ne v2, v6, :cond_e

    goto :goto_5

    .line 830
    :cond_e
    invoke-static {v2}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v6

    .line 831
    .local v6, "internalBit":I
    if-eq v6, v5, :cond_10

    .line 832
    invoke-direct {v0, v6}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_4

    :cond_f
    const/4 v5, 0x2

    .local v5, "value":I
    :goto_4
    goto :goto_6

    .line 834
    .end local v5    # "value":I
    :cond_10
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got DECRQM for unrecognized private DEC mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TerminalEmulator"

    invoke-static {v5, v8, v7}, Lcom/termux/terminal/Logger;->logError(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const/4 v5, 0x0

    .restart local v5    # "value":I
    goto :goto_6

    .line 828
    .end local v5    # "value":I
    .end local v6    # "internalBit":I
    :cond_11
    :goto_5
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v5, v6, :cond_12

    const/4 v5, 0x1

    goto :goto_6

    :cond_12
    const/4 v5, 0x2

    .line 838
    .restart local v5    # "value":I
    :goto_6
    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v8, v10, v3

    aput-object v9, v10, v4

    const-string v4, "\u001b[?%d;%d$y"

    invoke-static {v7, v4, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 839
    .end local v2    # "mode":I
    .end local v5    # "value":I
    goto/16 :goto_1a

    .line 840
    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 842
    goto/16 :goto_1a

    .line 819
    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doDeviceControl(I)V

    .line 820
    goto/16 :goto_1a

    .line 652
    :pswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiBiggerThan(I)V

    .line 653
    goto/16 :goto_1a

    .line 816
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOscEsc(I)V

    .line 817
    goto/16 :goto_1a

    .line 813
    :pswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    .line 814
    goto/16 :goto_1a

    .line 811
    :pswitch_11
    goto/16 :goto_1a

    .line 655
    :pswitch_12
    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v9

    .line 656
    .local v9, "originMode":Z
    if-eqz v9, :cond_14

    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    goto :goto_7

    :cond_14
    const/4 v10, 0x0

    .line 657
    .local v10, "effectiveTopMargin":I
    :goto_7
    if-eqz v9, :cond_15

    iget v13, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    goto :goto_8

    :cond_15
    iget v13, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 658
    .local v13, "effectiveBottomMargin":I
    :goto_8
    if-eqz v9, :cond_16

    iget v14, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    goto :goto_9

    :cond_16
    const/4 v14, 0x0

    .line 659
    .local v14, "effectiveLeftMargin":I
    :goto_9
    if-eqz v9, :cond_17

    iget v15, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto :goto_a

    :cond_17
    iget v15, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 660
    .local v15, "effectiveRightMargin":I
    :goto_a
    const/4 v6, 0x3

    packed-switch v1, :pswitch_data_3

    .line 774
    :pswitch_13
    move/from16 v27, v9

    move/from16 v26, v15

    .end local v9    # "originMode":Z
    .end local v15    # "effectiveRightMargin":I
    .local v26, "effectiveRightMargin":I
    .local v27, "originMode":Z
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    .line 776
    goto/16 :goto_1a

    .line 690
    .end local v26    # "effectiveRightMargin":I
    .end local v27    # "originMode":Z
    .restart local v9    # "originMode":Z
    .restart local v15    # "effectiveRightMargin":I
    :pswitch_14
    if-eq v1, v8, :cond_18

    const/4 v2, 0x1

    goto :goto_b

    :cond_18
    const/4 v2, 0x0

    .line 691
    .local v2, "erase":Z
    :goto_b
    const/16 v6, 0x7b

    if-ne v1, v6, :cond_19

    const/4 v6, 0x1

    goto :goto_c

    :cond_19
    const/4 v6, 0x0

    .line 693
    .local v6, "selective":Z
    :goto_c
    if-eqz v2, :cond_1a

    if-eqz v6, :cond_1a

    const/4 v8, 0x1

    goto :goto_d

    :cond_1a
    const/4 v8, 0x0

    .line 694
    .local v8, "keepVisualAttributes":Z
    :goto_d
    const/4 v12, 0x0

    .line 695
    .local v12, "argIndex":I
    if-eqz v2, :cond_1b

    const/16 v5, 0x20

    goto :goto_e

    :cond_1b
    add-int/lit8 v16, v12, 0x1

    .end local v12    # "argIndex":I
    .local v16, "argIndex":I
    invoke-direct {v0, v12, v5, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    move/from16 v12, v16

    .line 698
    .end local v16    # "argIndex":I
    .local v5, "fillChar":I
    .restart local v12    # "argIndex":I
    :goto_e
    if-lt v5, v11, :cond_1c

    if-le v5, v7, :cond_1d

    :cond_1c
    const/16 v7, 0xa0

    if-lt v5, v7, :cond_23

    const/16 v7, 0xff

    if-gt v5, v7, :cond_23

    .line 701
    :cond_1d
    add-int/lit8 v7, v12, 0x1

    .end local v12    # "argIndex":I
    .local v7, "argIndex":I
    invoke-direct {v0, v12, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v11

    add-int/2addr v11, v10

    add-int/lit8 v12, v13, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 702
    .local v11, "top":I
    add-int/lit8 v12, v7, 0x1

    .end local v7    # "argIndex":I
    .restart local v12    # "argIndex":I
    invoke-direct {v0, v7, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v7

    add-int/2addr v7, v14

    add-int/lit8 v3, v15, 0x1

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 703
    .local v3, "left":I
    add-int/lit8 v7, v12, 0x1

    move/from16 v22, v2

    .end local v2    # "erase":Z
    .end local v12    # "argIndex":I
    .restart local v7    # "argIndex":I
    .local v22, "erase":Z
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v12, v2, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    add-int/2addr v2, v10

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 704
    .local v2, "bottom":I
    iget v12, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v7, v12, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v4

    add-int/2addr v4, v14

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 705
    .local v4, "right":I
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v23

    .line 706
    .local v23, "style":J
    add-int/lit8 v12, v11, -0x1

    .local v12, "row":I
    :goto_f
    if-ge v12, v2, :cond_22

    .line 707
    add-int/lit8 v16, v3, -0x1

    move/from16 v25, v2

    move/from16 v2, v16

    .local v2, "col":I
    .local v25, "bottom":I
    :goto_10
    if-ge v2, v4, :cond_21

    .line 708
    if-eqz v6, :cond_1f

    move/from16 v26, v3

    .end local v3    # "left":I
    .local v26, "left":I
    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v3, v12, v2}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1e

    goto :goto_11

    :cond_1e
    move/from16 v27, v4

    goto :goto_13

    .end local v26    # "left":I
    .restart local v3    # "left":I
    :cond_1f
    move/from16 v26, v3

    .line 709
    .end local v3    # "left":I
    .restart local v26    # "left":I
    :goto_11
    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-eqz v8, :cond_20

    move/from16 v27, v4

    .end local v4    # "right":I
    .local v27, "right":I
    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v4, v12, v2}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v16

    move-wide/from16 v20, v16

    goto :goto_12

    .end local v27    # "right":I
    .restart local v4    # "right":I
    :cond_20
    move/from16 v27, v4

    .end local v4    # "right":I
    .restart local v27    # "right":I
    move-wide/from16 v20, v23

    :goto_12
    move-object/from16 v16, v3

    move/from16 v17, v2

    move/from16 v18, v12

    move/from16 v19, v5

    invoke-virtual/range {v16 .. v21}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    .line 707
    :goto_13
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v26

    move/from16 v4, v27

    goto :goto_10

    .end local v26    # "left":I
    .end local v27    # "right":I
    .restart local v3    # "left":I
    .restart local v4    # "right":I
    :cond_21
    move/from16 v26, v3

    move/from16 v27, v4

    .line 706
    .end local v2    # "col":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .restart local v26    # "left":I
    .restart local v27    # "right":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v25

    goto :goto_f

    .end local v25    # "bottom":I
    .end local v26    # "left":I
    .end local v27    # "right":I
    .local v2, "bottom":I
    .restart local v3    # "left":I
    .restart local v4    # "right":I
    :cond_22
    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v4

    .line 710
    .end local v2    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v11    # "top":I
    .end local v12    # "row":I
    .end local v23    # "style":J
    goto/16 :goto_1a

    .line 698
    .end local v7    # "argIndex":I
    .end local v22    # "erase":Z
    .local v2, "erase":Z
    .local v12, "argIndex":I
    :cond_23
    move/from16 v22, v2

    .end local v2    # "erase":Z
    .restart local v22    # "erase":Z
    goto/16 :goto_1a

    .line 671
    .end local v5    # "fillChar":I
    .end local v6    # "selective":Z
    .end local v8    # "keepVisualAttributes":Z
    .end local v12    # "argIndex":I
    .end local v22    # "erase":Z
    :pswitch_15
    const/4 v2, 0x0

    invoke-direct {v0, v2, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v3

    sub-int/2addr v3, v4

    add-int/2addr v3, v10

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 672
    .local v2, "topSource":I
    invoke-direct {v0, v4, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v3

    sub-int/2addr v3, v4

    add-int/2addr v3, v14

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 674
    .local v3, "leftSource":I
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v12, v5, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    add-int/2addr v5, v10

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 675
    .local v5, "bottomSource":I
    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v6, v7, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v6

    add-int/2addr v6, v14

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 677
    .local v6, "rightSource":I
    const/4 v7, 0x5

    invoke-direct {v0, v7, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v7

    sub-int/2addr v7, v4

    add-int/2addr v7, v10

    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 678
    .local v7, "destionationTop":I
    const/4 v8, 0x6

    invoke-direct {v0, v8, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v8

    sub-int/2addr v8, v4

    add-int/2addr v8, v14

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 680
    .local v4, "destinationLeft":I
    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v8, v7

    sub-int v11, v5, v2

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 681
    .local v8, "heightToCopy":I
    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v11, v4

    sub-int v12, v6, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 682
    .local v11, "widthToCopy":I
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    move-object/from16 v16, v12

    move/from16 v17, v3

    move/from16 v18, v2

    move/from16 v19, v11

    move/from16 v20, v8

    move/from16 v21, v4

    move/from16 v22, v7

    invoke-virtual/range {v16 .. v22}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 683
    goto/16 :goto_1a

    .line 716
    .end local v2    # "topSource":I
    .end local v3    # "leftSource":I
    .end local v4    # "destinationLeft":I
    .end local v5    # "bottomSource":I
    .end local v6    # "rightSource":I
    .end local v7    # "destionationTop":I
    .end local v8    # "heightToCopy":I
    .end local v11    # "widthToCopy":I
    :pswitch_16
    const/16 v3, 0x74

    if-ne v1, v3, :cond_24

    const/4 v3, 0x1

    goto :goto_14

    :cond_24
    const/4 v3, 0x0

    .line 718
    .local v3, "reverse":Z
    :goto_14
    const/4 v5, 0x0

    invoke-direct {v0, v5, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v7

    sub-int/2addr v7, v4

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v10

    .line 719
    .local v5, "top":I
    invoke-direct {v0, v4, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v7

    sub-int/2addr v7, v4

    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v7, v14

    .line 720
    .local v7, "left":I
    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v12, v8, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v8

    add-int/2addr v8, v4

    add-int/lit8 v11, v13, -0x1

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v10

    .line 721
    .local v8, "bottom":I
    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v6, v11, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v6

    add-int/2addr v6, v4

    add-int/lit8 v11, v15, -0x1

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v14

    .line 722
    .local v6, "right":I
    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-lt v11, v2, :cond_29

    .line 723
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v11, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v11, v11

    if-lt v2, v11, :cond_25

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v2, v2

    sub-int/2addr v2, v4

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 724
    :cond_25
    const/4 v2, 0x4

    .local v2, "i":I
    :goto_15
    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v2, v4, :cond_28

    .line 725
    const/4 v4, 0x0

    .line 726
    .local v4, "bits":I
    const/4 v11, 0x1

    .line 727
    .local v11, "setOrClear":Z
    const/4 v12, 0x0

    invoke-direct {v0, v2, v12, v12}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v16

    sparse-switch v16, :sswitch_data_1

    goto :goto_16

    .line 758
    :sswitch_a
    const/16 v4, 0x10

    .line 759
    const/4 v11, 0x0

    goto :goto_16

    .line 754
    :sswitch_b
    const/16 v4, 0x8

    .line 755
    const/4 v11, 0x0

    .line 756
    goto :goto_16

    .line 750
    :sswitch_c
    const/4 v4, 0x4

    .line 751
    const/4 v11, 0x0

    .line 752
    goto :goto_16

    .line 746
    :sswitch_d
    const/4 v4, 0x1

    .line 747
    const/4 v11, 0x0

    .line 748
    goto :goto_16

    .line 743
    :sswitch_e
    const/16 v4, 0x10

    .line 744
    goto :goto_16

    .line 740
    :sswitch_f
    const/16 v4, 0x8

    .line 741
    goto :goto_16

    .line 737
    :sswitch_10
    const/4 v4, 0x4

    .line 738
    goto :goto_16

    .line 734
    :sswitch_11
    const/4 v4, 0x1

    .line 735
    goto :goto_16

    .line 729
    :sswitch_12
    const/16 v4, 0x1d

    .line 731
    if-nez v3, :cond_26

    const/4 v11, 0x0

    .line 762
    :cond_26
    :goto_16
    if-eqz v3, :cond_27

    if-nez v11, :cond_27

    move/from16 v27, v9

    move/from16 v26, v15

    const/16 v9, 0x1000

    goto :goto_17

    .line 765
    :cond_27
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    move/from16 v27, v9

    const/16 v9, 0x1000

    .end local v9    # "originMode":Z
    .local v27, "originMode":Z
    invoke-direct {v0, v9}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v19

    move/from16 v26, v15

    .end local v15    # "effectiveRightMargin":I
    .local v26, "effectiveRightMargin":I
    move-object v15, v12

    move/from16 v16, v4

    move/from16 v17, v11

    move/from16 v18, v3

    move/from16 v20, v14

    move/from16 v21, v26

    move/from16 v22, v5

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v6

    invoke-virtual/range {v15 .. v25}, Lcom/termux/terminal/TerminalBuffer;->setOrClearEffect(IZZZIIIIII)V

    .line 724
    .end local v4    # "bits":I
    .end local v11    # "setOrClear":Z
    :goto_17
    add-int/lit8 v2, v2, 0x1

    move/from16 v15, v26

    move/from16 v9, v27

    goto :goto_15

    .end local v26    # "effectiveRightMargin":I
    .end local v27    # "originMode":Z
    .restart local v9    # "originMode":Z
    .restart local v15    # "effectiveRightMargin":I
    :cond_28
    move/from16 v27, v9

    move/from16 v26, v15

    .end local v2    # "i":I
    .end local v9    # "originMode":Z
    .end local v15    # "effectiveRightMargin":I
    .restart local v26    # "effectiveRightMargin":I
    .restart local v27    # "originMode":Z
    goto :goto_1a

    .line 722
    .end local v26    # "effectiveRightMargin":I
    .end local v27    # "originMode":Z
    .restart local v9    # "originMode":Z
    .restart local v15    # "effectiveRightMargin":I
    :cond_29
    move/from16 v27, v9

    move/from16 v26, v15

    .end local v9    # "originMode":Z
    .end local v15    # "effectiveRightMargin":I
    .restart local v26    # "effectiveRightMargin":I
    .restart local v27    # "originMode":Z
    goto :goto_1a

    .line 649
    .end local v3    # "reverse":Z
    .end local v5    # "top":I
    .end local v6    # "right":I
    .end local v7    # "left":I
    .end local v8    # "bottom":I
    .end local v10    # "effectiveTopMargin":I
    .end local v13    # "effectiveBottomMargin":I
    .end local v14    # "effectiveLeftMargin":I
    .end local v26    # "effectiveRightMargin":I
    .end local v27    # "originMode":Z
    :pswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiQuestionMark(I)V

    .line 650
    goto :goto_1a

    .line 639
    :pswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsi(I)V

    .line 640
    goto :goto_1a

    .line 636
    :pswitch_19
    if-ne v1, v10, :cond_2a

    goto :goto_18

    :cond_2a
    const/4 v4, 0x0

    :goto_18
    iput-boolean v4, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    .line 637
    goto :goto_1a

    .line 633
    :pswitch_1a
    if-ne v1, v10, :cond_2b

    goto :goto_19

    :cond_2b
    const/4 v4, 0x0

    :goto_19
    iput-boolean v4, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    .line 634
    goto :goto_1a

    .line 630
    :pswitch_1b
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doEscPound(I)V

    .line 631
    goto :goto_1a

    .line 627
    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doEsc(I)V

    .line 628
    goto :goto_1a

    .line 624
    :pswitch_1d
    if-lt v1, v11, :cond_2c

    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    .line 884
    :cond_2c
    :goto_1a
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 887
    :cond_2d
    :goto_1b
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x9 -> :sswitch_6
        0xa -> :sswitch_5
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_2
        0x18 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x71
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x72
        :pswitch_16
        :pswitch_13
        :pswitch_16
        :pswitch_13
        :pswitch_15
        :pswitch_13
        :pswitch_14
        :pswitch_13
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_12
        0x1 -> :sswitch_11
        0x4 -> :sswitch_10
        0x5 -> :sswitch_f
        0x7 -> :sswitch_e
        0x16 -> :sswitch_d
        0x18 -> :sswitch_c
        0x19 -> :sswitch_b
        0x1b -> :sswitch_a
    .end sparse-switch
.end method

.method public reset()V
    .locals 6

    .line 2429
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->setCursorStyle()V

    .line 2430
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 2431
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 2432
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 2433
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    .line 2434
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 2435
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 2436
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 2437
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2438
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    const/16 v3, 0x100

    iput v3, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 2439
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    const/16 v3, 0x101

    iput v3, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 2440
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->setDefaultTabStops()V

    .line 2442
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    .line 2443
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 2445
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v0, v5, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v0, v4, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v0, v3, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 2446
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v0, v5, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v0, v4, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v0, v3, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 2447
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    .line 2449
    const/16 v2, 0x8

    invoke-direct {p0, v2, v1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 2450
    const/16 v2, 0x10

    invoke-direct {p0, v2, v1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 2451
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    iput v3, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    .line 2454
    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 2456
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 2457
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    .line 2458
    return-void
.end method

.method public resize(II)V
    .locals 5
    .param p1, "columns"    # I
    .param p2, "rows"    # I

    .line 375
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v0, p1, :cond_0

    .line 376
    return-void

    .line 377
    :cond_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_3

    if-lt p2, v0, :cond_3

    .line 381
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/4 v1, 0x0

    if-eq v0, p2, :cond_1

    .line 382
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 383
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 384
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 386
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eq v0, p1, :cond_2

    .line 387
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 388
    .local v0, "oldColumns":I
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 389
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 390
    .local v2, "oldTabStop":[Z
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 391
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->setDefaultTabStops()V

    .line 392
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 393
    .local v3, "toTransfer":I
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 395
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 398
    .end local v0    # "oldColumns":I
    .end local v2    # "oldTabStop":[Z
    .end local v3    # "toTransfer":I
    :cond_2
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->resizeScreen()V

    .line 399
    return-void

    .line 378
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", columns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMouseEvent(IIIZ)V
    .locals 11
    .param p1, "mouseButton"    # I
    .param p2, "column"    # I
    .param p3, "row"    # I
    .param p4, "pressed"    # Z

    .line 354
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    const/4 p2, 0x1

    .line 355
    :cond_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-le p2, v1, :cond_1

    iget p2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 356
    :cond_1
    if-ge p3, v0, :cond_2

    const/4 p3, 0x1

    .line 357
    :cond_2
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-le p3, v1, :cond_3

    iget p3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 359
    :cond_3
    const/16 v1, 0x20

    if-ne p1, v1, :cond_4

    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_4

    .line 361
    :cond_4
    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x4d

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    .line 362
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u001b[<%d;%d;%d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0x6d

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v5

    aput-object v7, v4, v0

    aput-object v8, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 364
    :cond_6
    if-eqz p4, :cond_7

    move v1, p1

    goto :goto_1

    :cond_7
    const/4 v1, 0x3

    :goto_1
    move p1, v1

    .line 366
    const/16 v1, 0xdf

    if-gt p2, v1, :cond_9

    if-le p3, v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v1, 0x1

    .line 367
    .local v1, "out_of_bounds":Z
    :goto_3
    if-nez v1, :cond_a

    .line 368
    add-int/lit8 v6, p1, 0x20

    int-to-byte v6, v6

    add-int/lit8 v7, p2, 0x20

    int-to-byte v7, v7

    add-int/lit8 v8, p3, 0x20

    int-to-byte v8, v8

    const/4 v9, 0x6

    new-array v9, v9, [B

    const/16 v10, 0x1b

    aput-byte v10, v9, v5

    const/16 v10, 0x5b

    aput-byte v10, v9, v0

    aput-byte v3, v9, v2

    aput-byte v6, v9, v4

    const/4 v0, 0x4

    aput-byte v7, v9, v0

    const/4 v0, 0x5

    aput-byte v8, v9, v0

    move-object v0, v9

    .line 369
    .local v0, "data":[B
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    array-length v3, v0

    invoke-virtual {v2, v0, v5, v3}, Lcom/termux/terminal/TerminalOutput;->write([BII)V

    .line 372
    .end local v0    # "data":[B
    .end local v1    # "out_of_bounds":Z
    :cond_a
    :goto_4
    return-void
.end method

.method public setCursorBlinkState(Z)V
    .locals 0
    .param p1, "cursorBlinkState"    # Z

    .line 456
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkState:Z

    .line 457
    return-void
.end method

.method public setCursorBlinkingEnabled(Z)V
    .locals 0
    .param p1, "cursorBlinkingEnabled"    # Z

    .line 452
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkingEnabled:Z

    .line 453
    return-void
.end method

.method public setCursorStyle()V
    .locals 2

    .line 424
    const/4 v0, 0x0

    .line 426
    .local v0, "cursorStyle":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v1}, Lcom/termux/terminal/TerminalSessionClient;->getTerminalCursorStyle()Ljava/lang/Integer;

    move-result-object v0

    .line 429
    :cond_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/termux/terminal/TerminalEmulator;->TERMINAL_CURSOR_STYLES_LIST:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto :goto_1

    .line 430
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    .line 433
    :goto_1
    return-void
.end method

.method public shouldCursorBeVisible()Z
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->isCursorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    const/4 v0, 0x0

    return v0

    .line 448
    :cond_0
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkingEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkState:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TerminalEmulator[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v1, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v1, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", margins={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toggleAutoScrollDisabled()V
    .locals 1

    .line 2423
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAutoScrollDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAutoScrollDisabled:Z

    .line 2424
    return-void
.end method

.method public updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V
    .locals 1
    .param p1, "client"    # Lcom/termux/terminal/TerminalSessionClient;

    .line 330
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    .line 331
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->setCursorStyle()V

    .line 332
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkState(Z)V

    .line 333
    return-void
.end method

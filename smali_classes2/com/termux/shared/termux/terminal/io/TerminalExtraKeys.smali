.class public Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;
.super Ljava/lang/Object;
.source "TerminalExtraKeys.java"

# interfaces
.implements Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;


# instance fields
.field private final mTerminalView:Lcom/termux/view/TerminalView;


# direct methods
.method public constructor <init>(Lcom/termux/view/TerminalView;)V
    .locals 0
    .param p1, "terminalView"    # Lcom/termux/view/TerminalView;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;->mTerminalView:Lcom/termux/view/TerminalView;

    .line 25
    return-void
.end method


# virtual methods
.method synthetic lambda$onTerminalExtraKeyButtonClick$0$com-termux-shared-termux-terminal-io-TerminalExtraKeys(ZZI)V
    .locals 2
    .param p1, "ctrlDown"    # Z
    .param p2, "altDown"    # Z
    .param p3, "codePoint"    # I

    .line 70
    iget-object v0, p0, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;->mTerminalView:Lcom/termux/view/TerminalView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p3, p1, p2}, Lcom/termux/view/TerminalView;->inputCodePoint(IIZZ)V

    .line 71
    return-void
.end method

.method public onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Lcom/google/android/material/button/MaterialButton;

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->isMacro()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 32
    .local v1, "ctrlDown":Z
    const/4 v2, 0x0

    .line 33
    .local v2, "altDown":Z
    const/4 v3, 0x0

    .line 34
    .local v3, "shiftDown":Z
    const/4 v4, 0x0

    .line 35
    .local v4, "fnDown":Z
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v14, v0, v6

    .line 36
    .local v14, "key":Ljava/lang/String;
    sget-object v7, Lcom/termux/shared/termux/extrakeys/SpecialButton;->CTRL:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v7}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 37
    const/4 v1, 0x1

    goto :goto_1

    .line 38
    :cond_0
    sget-object v7, Lcom/termux/shared/termux/extrakeys/SpecialButton;->ALT:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v7}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 39
    const/4 v2, 0x1

    goto :goto_1

    .line 40
    :cond_1
    sget-object v7, Lcom/termux/shared/termux/extrakeys/SpecialButton;->SHIFT:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v7}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 41
    const/4 v3, 0x1

    goto :goto_1

    .line 42
    :cond_2
    sget-object v7, Lcom/termux/shared/termux/extrakeys/SpecialButton;->FN:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    invoke-virtual {v7}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 43
    const/4 v4, 0x1

    goto :goto_1

    .line 45
    :cond_3
    move-object v7, p0

    move-object/from16 v8, p1

    move-object v9, v14

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    invoke-virtual/range {v7 .. v13}, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;->onTerminalExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZ)V

    .line 46
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 35
    .end local v14    # "key":Ljava/lang/String;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "keys":[Ljava/lang/String;
    .end local v1    # "ctrlDown":Z
    .end local v2    # "altDown":Z
    .end local v3    # "shiftDown":Z
    .end local v4    # "fnDown":Z
    :cond_4
    goto :goto_2

    .line 50
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;->onTerminalExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZ)V

    .line 52
    :goto_2
    return-void
.end method

.method protected onTerminalExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZ)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ctrlDown"    # Z
    .param p4, "altDown"    # Z
    .param p5, "shiftDown"    # Z
    .param p6, "fnDown"    # Z

    .line 55
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    sget-object v4, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants;->PRIMARY_KEY_CODES_FOR_STRINGS:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 56
    sget-object v4, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants;->PRIMARY_KEY_CODES_FOR_STRINGS:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 57
    .local v4, "keyCode":Ljava/lang/Integer;
    if-nez v4, :cond_0

    return-void

    .line 58
    :cond_0
    const/4 v5, 0x0

    .line 59
    .local v5, "metaState":I
    if-eqz v2, :cond_1

    or-int/lit16 v5, v5, 0x3000

    .line 60
    :cond_1
    if-eqz v3, :cond_2

    or-int/lit8 v5, v5, 0x12

    .line 61
    :cond_2
    if-eqz p5, :cond_3

    or-int/lit8 v5, v5, 0x41

    .line 62
    :cond_3
    if-eqz p6, :cond_4

    or-int/lit8 v5, v5, 0x8

    .line 64
    :cond_4
    new-instance v15, Landroid/view/KeyEvent;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v6, v15

    move v14, v5

    invoke-direct/range {v6 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 65
    .local v6, "keyEvent":Landroid/view/KeyEvent;
    iget-object v7, v0, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 66
    .end local v4    # "keyCode":Ljava/lang/Integer;
    .end local v5    # "metaState":I
    .end local v6    # "keyEvent":Landroid/view/KeyEvent;
    goto :goto_0

    .line 68
    :cond_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_6

    .line 69
    invoke-static/range {p2 .. p2}, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys$$ExternalSyntheticAPIConversion0;->m(Ljava/lang/String;)Lj$/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v2, v3}, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys$$ExternalSyntheticLambda1;-><init>(Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;ZZ)V

    invoke-interface {v4, v5}, Lj$/util/stream/IntStream;->forEach(Lj$/util/function/IntConsumer;)V

    goto :goto_0

    .line 73
    :cond_6
    iget-object v4, v0, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v4}, Lcom/termux/view/TerminalView;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v4

    .line 74
    .local v4, "session":Lcom/termux/terminal/TerminalSession;
    if-eqz v4, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 75
    invoke-virtual {v4, v1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 78
    .end local v4    # "session":Lcom/termux/terminal/TerminalSession;
    :cond_7
    :goto_0
    return-void
.end method

.method public performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Lcom/google/android/material/button/MaterialButton;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Lcom/google/android/material/button/MaterialButton;

    .line 82
    const/4 v0, 0x0

    return v0
.end method

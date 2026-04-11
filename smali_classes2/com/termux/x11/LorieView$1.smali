.class Lcom/termux/x11/LorieView$1;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "LorieView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LorieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:Lcom/termux/x11/MainActivity;

.field private currentComposingText:Ljava/lang/CharSequence;

.field currentPos:I

.field private mBatchEditNesting:I

.field requestedPos:I

.field resetCursorPosition:Z

.field final synthetic this$0:Lcom/termux/x11/LorieView;


# direct methods
.method constructor <init>(Lcom/termux/x11/LorieView;Landroid/view/View;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/x11/LorieView;
    .param p2, "arg0"    # Landroid/view/View;
    .param p3, "arg1"    # Z

    .line 424
    iput-object p1, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 425
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/LorieView$1;->a:Lcom/termux/x11/MainActivity;

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/LorieView$1;->currentComposingText:Ljava/lang/CharSequence;

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    .line 472
    const/4 v0, 0x1

    iput v0, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 3

    .line 439
    monitor-enter p0

    .line 440
    :try_start_0
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 441
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    .line 442
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    if-ne v0, v2, :cond_0

    .line 443
    iput-boolean v1, p0, Lcom/termux/x11/LorieView$1;->resetCursorPosition:Z

    .line 444
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/x11/LorieView$1;->requestedPos:I

    .line 446
    :cond_0
    monitor-exit p0

    return v2

    .line 448
    :cond_1
    monitor-exit p0

    .line 449
    return v1

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newPos"    # I

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - 1 + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputConnectionWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OLD "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " NEW "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p2, -0x1

    iget v3, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    add-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mBatchEditNesting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    if-lez p2, :cond_0

    .line 594
    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    add-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    goto :goto_0

    .line 596
    :cond_0
    iput-boolean v3, p0, Lcom/termux/x11/LorieView$1;->resetCursorPosition:Z

    .line 597
    :goto_0
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    if-nez v0, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/termux/x11/LorieView$1;->sendCursorPosition()V

    .line 601
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/LorieView$1;->replaceText(Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 3
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 507
    iget v0, p0, Lcom/termux/x11/LorieView$1;->requestedPos:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/termux/x11/LorieView$1;->requestedPos:I

    iget v1, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    if-le v0, v1, :cond_0

    if-lez p1, :cond_0

    .line 511
    iget v0, p0, Lcom/termux/x11/LorieView$1;->requestedPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/termux/x11/LorieView$1;->requestedPos:I

    .line 512
    return v2

    .line 515
    :cond_0
    const/16 v0, 0x43

    if-ne p1, v2, :cond_1

    iget v1, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    if-lez v1, :cond_1

    .line 519
    iget-object v1, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    iget-object v1, v1, Lcom/termux/x11/LorieView;->keyReleaseHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 523
    invoke-virtual {p0, v0}, Lcom/termux/x11/LorieView$1;->sendKey(I)V

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_3

    .line 525
    const/16 v1, 0x70

    invoke-virtual {p0, v1}, Lcom/termux/x11/LorieView$1;->sendKey(I)V

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 527
    .end local v0    # "i":I
    :cond_3
    iget v0, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    .line 528
    iget v0, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    if-gt v0, v2, :cond_4

    .line 529
    iput-boolean v2, p0, Lcom/termux/x11/LorieView$1;->resetCursorPosition:Z

    .line 531
    :cond_4
    return v2
.end method

.method public endBatchEdit()Z
    .locals 3

    .line 454
    monitor-enter p0

    .line 455
    :try_start_0
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 460
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    .line 461
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    if-nez v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/termux/x11/LorieView$1;->sendCursorPosition()V

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/x11/LorieView$1;->requestedPos:I

    .line 465
    :cond_0
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    .line 467
    :cond_2
    monitor-exit p0

    .line 468
    return v1

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finishComposingText()Z
    .locals 1

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/LorieView$1;->currentComposingText:Ljava/lang/CharSequence;

    .line 608
    const/4 v0, 0x1

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .line 431
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .locals 4
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "flags"    # I

    .line 495
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    .line 496
    new-instance v0, Landroid/view/inputmethod/SurroundingText;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "  "

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, " "

    :goto_1
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    return-object v0

    .line 498
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 490
    const-string v0, " "

    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 489
    const-string v0, " "

    return-object v0
.end method

.method replaceText(Ljava/lang/CharSequence;Z)Z
    .locals 6
    .param p1, "newText"    # Ljava/lang/CharSequence;
    .param p2, "reuse"    # Z

    .line 540
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->currentComposingText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->currentComposingText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 541
    .local v0, "oldLen":I
    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 542
    .local v1, "newLen":I
    :cond_1
    const/16 v2, 0x43

    if-lez v0, :cond_5

    if-lez v1, :cond_5

    iget-object v3, p0, Lcom/termux/x11/LorieView$1;->currentComposingText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 543
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/x11/LorieView$1;->currentComposingText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 544
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sub-int v4, v0, v1

    if-ge v3, v4, :cond_3

    .line 545
    invoke-virtual {p0, v2}, Lcom/termux/x11/LorieView$1;->sendKey(I)V

    .line 544
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 546
    .end local v3    # "i":I
    :cond_3
    move v2, v0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 547
    iget-object v3, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/termux/x11/LorieView;->sendTextEvent([B)V

    .line 546
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    :cond_4
    goto :goto_4

    .line 549
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_6

    .line 550
    invoke-virtual {p0, v2}, Lcom/termux/x11/LorieView$1;->sendKey(I)V

    .line 549
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 551
    .end local v3    # "i":I
    :cond_6
    if-eqz p1, :cond_7

    .line 552
    iget-object v2, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/termux/x11/LorieView;->sendTextEvent([B)V

    .line 555
    :cond_7
    :goto_4
    if-eqz p2, :cond_8

    move-object v2, p1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    iput-object v2, p0, Lcom/termux/x11/LorieView$1;->currentComposingText:Ljava/lang/CharSequence;

    .line 557
    iget-object v2, p0, Lcom/termux/x11/LorieView$1;->a:Lcom/termux/x11/MainActivity;

    iget-boolean v2, v2, Lcom/termux/x11/MainActivity;->useTermuxEKBarBehaviour:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/termux/x11/LorieView$1;->a:Lcom/termux/x11/MainActivity;

    iget-object v2, v2, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    if-eqz v2, :cond_9

    .line 558
    iget-object v2, p0, Lcom/termux/x11/LorieView$1;->a:Lcom/termux/x11/MainActivity;

    iget-object v2, v2, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    invoke-virtual {v2}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->unsetSpecialKeys()V

    .line 559
    :cond_9
    iget-object v2, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/termux/x11/LorieView;->commitedText:Z

    .line 560
    return v3
.end method

.method public requestCursorUpdates(I)Z
    .locals 5
    .param p1, "cursorUpdateMode"    # I

    .line 618
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v0}, Lcom/termux/x11/LorieView;->access$000(Lcom/termux/x11/LorieView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    new-instance v2, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    .line 619
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-result-object v2

    iget v3, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    iget v4, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    .line 620
    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-result-object v2

    .line 621
    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v2

    .line 618
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 622
    const/4 v0, 0x1

    return v0
.end method

.method public requestCursorUpdates(II)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I
    .param p2, "cursorUpdateFilter"    # I

    .line 627
    invoke-virtual {p0, p1}, Lcom/termux/x11/LorieView$1;->requestCursorUpdates(I)Z

    move-result v0

    return v0
.end method

.method sendCursorPosition()V
    .locals 7

    .line 475
    iget-boolean v0, p0, Lcom/termux/x11/LorieView$1;->resetCursorPosition:Z

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v0}, Lcom/termux/x11/LorieView;->access$000(Lcom/termux/x11/LorieView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 477
    const/4 v0, 0x1

    iput v0, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v0}, Lcom/termux/x11/LorieView;->access$000(Lcom/termux/x11/LorieView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    iget v3, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    iget v4, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SENDING CURSOR POS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputConnectionWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method sendKey(I)V
    .locals 3
    .param p1, "k"    # I

    .line 502
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 503
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-virtual {v0, v2, p1, v2}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 504
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 613
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-virtual {v0, p1}, Lcom/termux/x11/LorieView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 491
    const/4 v0, 0x1

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 586
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/LorieView$1;->replaceText(Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public setSelection(II)Z
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 566
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 567
    if-ne p1, p2, :cond_1

    .line 568
    if-ge p1, v1, :cond_0

    .line 569
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/termux/x11/LorieView$1;->sendKey(I)V

    goto :goto_0

    .line 570
    :cond_0
    if-le p1, v1, :cond_1

    .line 571
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/termux/x11/LorieView$1;->sendKey(I)V

    .line 574
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v0}, Lcom/termux/x11/LorieView;->access$000(Lcom/termux/x11/LorieView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 575
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v0}, Lcom/termux/x11/LorieView;->access$000(Lcom/termux/x11/LorieView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 576
    iput v1, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    goto :goto_1

    .line 577
    :cond_2
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    if-lez v0, :cond_3

    .line 579
    if-ne p1, p2, :cond_3

    iget v0, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    if-le p1, v0, :cond_3

    .line 580
    iput p1, p0, Lcom/termux/x11/LorieView$1;->requestedPos:I

    .line 582
    :cond_3
    :goto_1
    return v1
.end method

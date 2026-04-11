.class public Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;
.super Ljava/lang/Object;
.source "TermuxExtraKeysView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/extrakeys/TermuxExtraKeysView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpecialButtonsLongHoldRunnable"
.end annotation


# instance fields
.field public final mState:Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

.field final synthetic this$0:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;


# direct methods
.method public constructor <init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/extrakeys/TermuxExtraKeysView;
    .param p2, "state"    # Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    .line 477
    iput-object p1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;->this$0:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p2, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;->mState:Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    .line 479
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;->mState:Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    iget-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;->mState:Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    iget-boolean v1, v1, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->isActive:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->setIsLocked(Z)V

    .line 484
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;->mState:Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    iget-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;->mState:Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    iget-boolean v1, v1, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->isActive:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->setIsActive(Z)V

    .line 485
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$SpecialButtonsLongHoldRunnable;->this$0:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    invoke-static {v0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->access$008(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)I

    .line 486
    return-void
.end method

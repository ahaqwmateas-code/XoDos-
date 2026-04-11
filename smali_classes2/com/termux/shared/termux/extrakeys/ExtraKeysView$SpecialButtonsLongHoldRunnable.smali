.class public Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;
.super Ljava/lang/Object;
.source "ExtraKeysView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/termux/extrakeys/ExtraKeysView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpecialButtonsLongHoldRunnable"
.end annotation


# instance fields
.field public final mState:Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

.field final synthetic this$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;


# direct methods
.method public constructor <init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/SpecialButtonState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/shared/termux/extrakeys/ExtraKeysView;
    .param p2, "state"    # Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    .line 575
    iput-object p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;->this$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;->mState:Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    .line 577
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;->mState:Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;->mState:Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    iget-boolean v1, v1, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isActive:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->setIsLocked(Z)V

    .line 582
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;->mState:Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;->mState:Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    iget-boolean v1, v1, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isActive:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->setIsActive(Z)V

    .line 583
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;->this$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    iget v1, v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressCount:I

    .line 584
    return-void
.end method

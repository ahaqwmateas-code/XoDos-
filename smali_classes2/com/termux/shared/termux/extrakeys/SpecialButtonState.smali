.class public Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
.super Ljava/lang/Object;
.source "SpecialButtonState.java"


# instance fields
.field buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/button/MaterialButton;",
            ">;"
        }
    .end annotation
.end field

.field isActive:Z

.field isCreated:Z

.field isLocked:Z

.field mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;


# direct methods
.method public constructor <init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V
    .locals 1
    .param p1, "extraKeysView"    # Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isCreated:Z

    .line 14
    iput-boolean v0, p0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isActive:Z

    .line 17
    iput-boolean v0, p0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isLocked:Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->buttons:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    .line 31
    return-void
.end method


# virtual methods
.method public setIsActive(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isActive:Z

    .line 41
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->buttons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 42
    .local v1, "button":Lcom/google/android/material/button/MaterialButton;
    iget-object v2, p0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->getButtonActiveTextColor()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->getButtonTextColor()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 43
    .end local v1    # "button":Lcom/google/android/material/button/MaterialButton;
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

.method public setIsCreated(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isCreated:Z

    .line 36
    return-void
.end method

.method public setIsLocked(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isLocked:Z

    .line 49
    return-void
.end method

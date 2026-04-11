.class public Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;
.super Ljava/lang/Object;
.source "TermuxX11SpecialButtonState.java"


# instance fields
.field buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field isActive:Z

.field isCreated:Z

.field isLocked:Z

.field mTermuxExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;


# direct methods
.method public constructor <init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)V
    .locals 1
    .param p1, "termuxExtraKeysView"    # Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->isCreated:Z

    .line 14
    iput-boolean v0, p0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->isActive:Z

    .line 17
    iput-boolean v0, p0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->isLocked:Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->buttons:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->mTermuxExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    .line 31
    return-void
.end method


# virtual methods
.method public setIsActive(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->isActive:Z

    .line 41
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->buttons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 42
    .local v1, "button":Landroid/widget/Button;
    iget-object v2, p0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->mTermuxExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->getButtonActiveTextColor()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->getButtonTextColor()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 43
    .end local v1    # "button":Landroid/widget/Button;
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

.method public setIsCreated(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->isCreated:Z

    .line 36
    return-void
.end method

.method public setIsLocked(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;->isLocked:Z

    .line 49
    return-void
.end method

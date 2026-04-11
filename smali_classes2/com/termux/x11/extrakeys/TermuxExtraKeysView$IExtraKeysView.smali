.class public interface abstract Lcom/termux/x11/extrakeys/TermuxExtraKeysView$IExtraKeysView;
.super Ljava/lang/Object;
.source "TermuxExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/extrakeys/TermuxExtraKeysView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IExtraKeysView"
.end annotation


# virtual methods
.method public abstract onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V
.end method

.method public abstract performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)Z
.end method

.class Lcom/termux/x11/extrakeys/TermuxExtraKeysView$2;
.super Landroid/graphics/drawable/ColorDrawable;
.source "TermuxExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->reload(Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;


# direct methods
.method constructor <init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/extrakeys/TermuxExtraKeysView;
    .param p2, "arg0"    # I

    .line 315
    iput-object p1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$2;->this$0:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public hasFocusStateSpecified()Z
    .locals 1

    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 317
    const/4 v0, 0x1

    return v0
.end method

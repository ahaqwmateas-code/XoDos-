.class Lcom/termux/x11/extrakeys/TermuxExtraKeysView$1;
.super Ljava/util/HashMap;
.source "TermuxExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->getDefaultSpecialButtons(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;",
        "Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

.field final synthetic val$termuxExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;


# direct methods
.method constructor <init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    .line 272
    iput-object p1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$1;->this$0:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    iput-object p2, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$1;->val$termuxExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 273
    sget-object p2, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->CTRL:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    new-instance v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    iget-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$1;->val$termuxExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    invoke-direct {v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;-><init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)V

    invoke-virtual {p0, p2, v0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object p2, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->ALT:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    new-instance v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    iget-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$1;->val$termuxExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    invoke-direct {v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;-><init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)V

    invoke-virtual {p0, p2, v0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object p2, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->SHIFT:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    new-instance v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    iget-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$1;->val$termuxExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    invoke-direct {v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;-><init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)V

    invoke-virtual {p0, p2, v0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object p2, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->META:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    new-instance v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    iget-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$1;->val$termuxExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    invoke-direct {v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;-><init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)V

    invoke-virtual {p0, p2, v0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object p2, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->FN:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    new-instance v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;

    iget-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$1;->val$termuxExtraKeysView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    invoke-direct {v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButtonState;-><init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)V

    invoke-virtual {p0, p2, v0}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    return-void
.end method

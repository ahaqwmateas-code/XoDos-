.class Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;
.super Ljava/util/HashMap;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->getDefaultSpecialButtons(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/termux/shared/termux/extrakeys/SpecialButton;",
        "Lcom/termux/shared/termux/extrakeys/SpecialButtonState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

.field final synthetic val$extraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;


# direct methods
.method constructor <init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    .line 368
    iput-object p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->this$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    iput-object p2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->val$extraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 369
    sget-object p2, Lcom/termux/shared/termux/extrakeys/SpecialButton;->CTRL:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    new-instance v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->val$extraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    invoke-direct {v0, v1}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V

    invoke-virtual {p0, p2, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object p2, Lcom/termux/shared/termux/extrakeys/SpecialButton;->ALT:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    new-instance v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->val$extraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    invoke-direct {v0, v1}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V

    invoke-virtual {p0, p2, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object p2, Lcom/termux/shared/termux/extrakeys/SpecialButton;->SHIFT:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    new-instance v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->val$extraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    invoke-direct {v0, v1}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V

    invoke-virtual {p0, p2, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object p2, Lcom/termux/shared/termux/extrakeys/SpecialButton;->FN:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    new-instance v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->val$extraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    invoke-direct {v0, v1}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V

    invoke-virtual {p0, p2, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    return-void
.end method

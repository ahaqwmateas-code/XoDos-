.class public final synthetic Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

.field public final synthetic f$3:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda3;->f$0:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    iput-object p2, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda3;->f$2:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

    iput-object p4, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda3;->f$3:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda3;->f$0:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    iget-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda3;->f$2:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

    iget-object v3, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda3;->f$3:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->lambda$startScheduledExecutors$2$com-termux-x11-extrakeys-TermuxExtraKeysView(Landroid/view/View;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V

    return-void
.end method

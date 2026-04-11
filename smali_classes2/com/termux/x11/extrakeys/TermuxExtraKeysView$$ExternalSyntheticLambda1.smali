.class public final synthetic Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

.field public final synthetic f$1:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

.field public final synthetic f$2:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda1;->f$0:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    iput-object p2, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda1;->f$1:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

    iput-object p3, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda1;->f$2:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda1;->f$0:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    iget-object v1, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda1;->f$1:Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

    iget-object v2, p0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView$$ExternalSyntheticLambda1;->f$2:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->lambda$reload$1$com-termux-x11-extrakeys-TermuxExtraKeysView(Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;Landroid/widget/Button;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

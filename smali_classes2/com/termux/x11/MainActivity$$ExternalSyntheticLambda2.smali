.class public final synthetic Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/MainActivity;

.field public final synthetic f$1:Landroid/widget/Button;

.field public final synthetic f$2:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/MainActivity;Landroid/widget/Button;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda2;->f$0:Lcom/termux/x11/MainActivity;

    iput-object p2, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda2;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda2;->f$2:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda2;->f$0:Lcom/termux/x11/MainActivity;

    iget-object v1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda2;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda2;->f$2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, p1}, Lcom/termux/x11/MainActivity;->lambda$initStylusAuxButtons$16$com-termux-x11-MainActivity(Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

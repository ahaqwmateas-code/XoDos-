.class public final synthetic Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/Button;

.field public final synthetic f$1:Landroid/widget/Button;

.field public final synthetic f$2:Landroid/widget/Button;

.field public final synthetic f$3:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda28;->f$0:Landroid/widget/Button;

    iput-object p2, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda28;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda28;->f$2:Landroid/widget/Button;

    iput-object p4, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda28;->f$3:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda28;->f$0:Landroid/widget/Button;

    iget-object v1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda28;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda28;->f$2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda28;->f$3:Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/termux/x11/MainActivity;->lambda$initStylusAuxButtons$13(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

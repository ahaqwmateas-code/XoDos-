.class public final synthetic Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/MainActivity;

.field public final synthetic f$1:Landroid/widget/LinearLayout;

.field public final synthetic f$2:Landroid/widget/Button;

.field public final synthetic f$3:Landroid/widget/Button;

.field public final synthetic f$4:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda4;->f$0:Lcom/termux/x11/MainActivity;

    iput-object p2, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda4;->f$1:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda4;->f$2:Landroid/widget/Button;

    iput-object p4, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda4;->f$3:Landroid/widget/Button;

    iput-object p5, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda4;->f$4:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda4;->f$0:Lcom/termux/x11/MainActivity;

    iget-object v1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda4;->f$1:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda4;->f$2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda4;->f$3:Landroid/widget/Button;

    iget-object v4, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda4;->f$4:Landroid/widget/LinearLayout;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/termux/x11/MainActivity;->lambda$initMouseAuxButtons$18$com-termux-x11-MainActivity(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

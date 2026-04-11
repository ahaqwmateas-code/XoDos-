.class public final synthetic Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/MainActivity;

.field public final synthetic f$1:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/MainActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda20;->f$0:Lcom/termux/x11/MainActivity;

    iput-object p2, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda20;->f$1:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda20;->f$0:Lcom/termux/x11/MainActivity;

    iget-object v1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda20;->f$1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/termux/x11/MainActivity;->lambda$initMouseAuxButtons$17$com-termux-x11-MainActivity(Landroid/widget/LinearLayout;)V

    return-void
.end method

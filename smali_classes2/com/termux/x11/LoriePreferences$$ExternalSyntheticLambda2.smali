.class public final synthetic Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/LoriePreferences;

.field public final synthetic f$1:Landroid/widget/Spinner;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/LoriePreferences;Landroid/widget/Spinner;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda2;->f$0:Lcom/termux/x11/LoriePreferences;

    iput-object p2, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda2;->f$1:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda2;->f$0:Lcom/termux/x11/LoriePreferences;

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda2;->f$1:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/termux/x11/LoriePreferences;->lambda$showInputControlsDialog$3$com-termux-x11-LoriePreferences(Landroid/widget/Spinner;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.class public final synthetic Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/LoriePreferences;

.field public final synthetic f$1:Landroid/widget/CheckBox;

.field public final synthetic f$2:Landroid/widget/CheckBox;

.field public final synthetic f$3:Landroid/widget/Spinner;

.field public final synthetic f$4:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/LoriePreferences;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/CheckBox;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda3;->f$0:Lcom/termux/x11/LoriePreferences;

    iput-object p2, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda3;->f$1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda3;->f$2:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda3;->f$3:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda3;->f$4:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda3;->f$0:Lcom/termux/x11/LoriePreferences;

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda3;->f$1:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda3;->f$2:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda3;->f$3:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda3;->f$4:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/termux/x11/LoriePreferences;->lambda$showInputControlsDialog$4$com-termux-x11-LoriePreferences(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/CheckBox;)V

    return-void
.end method

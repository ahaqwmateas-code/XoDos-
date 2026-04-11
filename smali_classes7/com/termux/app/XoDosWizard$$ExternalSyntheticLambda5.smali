.class public final synthetic Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/XoDosWizard;

.field public final synthetic f$1:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/XoDosWizard;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda5;->f$0:Lcom/termux/app/XoDosWizard;

    iput-object p2, p0, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda5;->f$1:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda5;->f$0:Lcom/termux/app/XoDosWizard;

    iget-object v1, p0, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda5;->f$1:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1, p1, p2}, Lcom/termux/app/XoDosWizard;->lambda$showUnifiedDialog$5$com-termux-app-XoDosWizard(Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V

    return-void
.end method

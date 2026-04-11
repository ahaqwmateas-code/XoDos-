.class public final synthetic Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/ProgressDialog;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda3;->f$0:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda3;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda3;->f$0:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda3;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/termux/app/TermuxInstaller$1;->lambda$run$1(Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

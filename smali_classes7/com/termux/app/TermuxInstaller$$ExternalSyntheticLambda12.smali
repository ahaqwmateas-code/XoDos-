.class public final synthetic Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Landroid/app/ProgressDialog;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda12;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda12;->f$1:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda12;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda12;->f$1:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/termux/app/TermuxInstaller;->lambda$startXoDosInstallation$11(Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V

    return-void
.end method

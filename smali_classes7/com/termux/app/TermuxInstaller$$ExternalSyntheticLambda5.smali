.class public final synthetic Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/ProgressDialog;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda5;->f$0:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda5;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda5;->f$0:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda5;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Exception;

    invoke-static {v0, v1, v2, v3}, Lcom/termux/app/TermuxInstaller;->lambda$startXoDosInstallation$10(Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Exception;)V

    return-void
.end method

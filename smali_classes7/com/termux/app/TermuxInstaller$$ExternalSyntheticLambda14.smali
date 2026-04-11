.class public final synthetic Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/ProgressDialog;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/ProgressDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda14;->f$0:Landroid/app/ProgressDialog;

    iput p2, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda14;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda14;->f$0:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda14;->f$1:I

    invoke-static {v0, v1}, Lcom/termux/app/TermuxInstaller;->lambda$startXoDosInstallation$1(Landroid/app/ProgressDialog;I)V

    return-void
.end method

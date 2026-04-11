.class public Lcom/termux/x11/controller/core/DownloadProgressDialog;
.super Ljava/lang/Object;
.source "DownloadProgressDialog.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->activity:Landroid/app/Activity;

    .line 21
    return-void
.end method

.method private create()V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->activity:Landroid/app/Activity;

    const v2, 0x1030011

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    .line 26
    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 27
    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 28
    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 29
    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/termux/x11/R$layout;->download_progress_dialog:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 31
    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 32
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_1

    .line 33
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 34
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 36
    :cond_1
    return-void
.end method

.method static synthetic lambda$show$0(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0
    .param p0, "onCancelCallback"    # Ljava/lang/Runnable;
    .param p1, "v"    # Landroid/view/View;

    .line 59
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 79
    return-void
.end method

.method public closeOnUiThread()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/termux/x11/controller/core/DownloadProgressDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/termux/x11/controller/core/DownloadProgressDialog$$ExternalSyntheticLambda1;-><init>(Lcom/termux/x11/controller/core/DownloadProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .line 66
    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lcom/termux/x11/controller/math/Mathf;->clamp(III)I

    move-result p1

    .line 68
    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/termux/x11/R$id;->CircularProgressIndicator:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->setProgress(I)V

    .line 69
    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/termux/x11/R$id;->TVProgress:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public show()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/core/DownloadProgressDialog;->show(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method

.method public show(I)V
    .locals 1
    .param p1, "textResId"    # I

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/controller/core/DownloadProgressDialog;->show(ILjava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method public show(ILjava/lang/Runnable;)V
    .locals 3
    .param p1, "textResId"    # I
    .param p2, "onCancelCallback"    # Ljava/lang/Runnable;

    .line 51
    invoke-virtual {p0}, Lcom/termux/x11/controller/core/DownloadProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/controller/core/DownloadProgressDialog;->close()V

    .line 53
    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/termux/x11/controller/core/DownloadProgressDialog;->create()V

    .line 55
    :cond_1
    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/termux/x11/R$id;->TextView:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/core/DownloadProgressDialog;->setProgress(I)V

    .line 58
    if-eqz p2, :cond_3

    .line 59
    iget-object v1, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    sget v2, Lcom/termux/x11/R$id;->BTCancel:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/termux/x11/controller/core/DownloadProgressDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/termux/x11/controller/core/DownloadProgressDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v1, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    sget v2, Lcom/termux/x11/R$id;->LLBottomBar:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/termux/x11/controller/core/DownloadProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 63
    return-void
.end method

.method public show(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onCancelCallback"    # Ljava/lang/Runnable;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/termux/x11/controller/core/DownloadProgressDialog;->show(ILjava/lang/Runnable;)V

    .line 48
    return-void
.end method

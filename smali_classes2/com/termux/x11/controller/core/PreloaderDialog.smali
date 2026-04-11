.class public Lcom/termux/x11/controller/core/PreloaderDialog;
.super Ljava/lang/Object;
.source "PreloaderDialog.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->activity:Landroid/app/Activity;

    .line 18
    return-void
.end method

.method private create()V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->activity:Landroid/app/Activity;

    const v2, 0x1030011

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    .line 23
    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 24
    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 25
    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 26
    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/termux/x11/R$layout;->preloader_dialog:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 28
    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 29
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_1

    .line 30
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 31
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 33
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 48
    .end local p0    # "this":Lcom/termux/x11/controller/core/PreloaderDialog;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 53
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 54
    monitor-exit p0

    return-void
.end method

.method public closeOnUiThread()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/termux/x11/controller/core/PreloaderDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/termux/x11/controller/core/PreloaderDialog$$ExternalSyntheticLambda1;-><init>(Lcom/termux/x11/controller/core/PreloaderDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

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

.method synthetic lambda$showOnUiThread$0$com-termux-x11-controller-core-PreloaderDialog(I)V
    .locals 0
    .param p1, "textResId"    # I

    .line 44
    invoke-virtual {p0, p1}, Lcom/termux/x11/controller/core/PreloaderDialog;->show(I)V

    return-void
.end method

.method public declared-synchronized show(I)V
    .locals 2
    .param p1, "textResId"    # I

    monitor-enter p0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/termux/x11/controller/core/PreloaderDialog;->isShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 37
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/termux/x11/controller/core/PreloaderDialog;->close()V

    .line 38
    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/termux/x11/controller/core/PreloaderDialog;->create()V

    .line 39
    .end local p0    # "this":Lcom/termux/x11/controller/core/PreloaderDialog;
    :cond_1
    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    sget v1, Lcom/termux/x11/R$id;->TextView:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 35
    .end local p1    # "textResId":I
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public showOnUiThread(I)V
    .locals 2
    .param p1, "textResId"    # I

    .line 44
    iget-object v0, p0, Lcom/termux/x11/controller/core/PreloaderDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/termux/x11/controller/core/PreloaderDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/termux/x11/controller/core/PreloaderDialog$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/controller/core/PreloaderDialog;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

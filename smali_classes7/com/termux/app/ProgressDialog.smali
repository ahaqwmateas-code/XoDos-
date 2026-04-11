.class Lcom/termux/app/ProgressDialog;
.super Landroid/app/AlertDialog;
.source "XoDosShortcuts.java"


# instance fields
.field private messageView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1412
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 1413
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1414
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090280

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/termux/app/ProgressDialog;->messageView:Landroid/widget/TextView;

    .line 1415
    invoke-virtual {p0, v0}, Lcom/termux/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 1416
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/termux/app/ProgressDialog;->setCancelable(Z)V

    .line 1417
    return-void
.end method


# virtual methods
.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1420
    iget-object v0, p0, Lcom/termux/app/ProgressDialog;->messageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/termux/app/ProgressDialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1423
    :cond_0
    return-void
.end method

.class public final synthetic Lcom/termux/shared/termux/interact/TextInputDialogUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/termux/interact/TextInputDialogUtils$$ExternalSyntheticLambda1;->f$0:Lcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;

    iput-object p2, p0, Lcom/termux/shared/termux/interact/TextInputDialogUtils$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/shared/termux/interact/TextInputDialogUtils$$ExternalSyntheticLambda1;->f$0:Lcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;

    iget-object v1, p0, Lcom/termux/shared/termux/interact/TextInputDialogUtils$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    invoke-static {v0, v1, p1, p2}, Lcom/termux/shared/termux/interact/TextInputDialogUtils;->lambda$textInput$1(Lcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

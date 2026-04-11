.class public final synthetic Lcom/termux/shared/termux/interact/TextInputDialogUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:[Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;Landroid/widget/EditText;[Landroid/app/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/termux/interact/TextInputDialogUtils$$ExternalSyntheticLambda0;->f$0:Lcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;

    iput-object p2, p0, Lcom/termux/shared/termux/interact/TextInputDialogUtils$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/termux/shared/termux/interact/TextInputDialogUtils$$ExternalSyntheticLambda0;->f$2:[Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/termux/shared/termux/interact/TextInputDialogUtils$$ExternalSyntheticLambda0;->f$0:Lcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;

    iget-object v1, p0, Lcom/termux/shared/termux/interact/TextInputDialogUtils$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/termux/shared/termux/interact/TextInputDialogUtils$$ExternalSyntheticLambda0;->f$2:[Landroid/app/AlertDialog;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/termux/interact/TextInputDialogUtils;->lambda$textInput$0(Lcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;Landroid/widget/EditText;[Landroid/app/AlertDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

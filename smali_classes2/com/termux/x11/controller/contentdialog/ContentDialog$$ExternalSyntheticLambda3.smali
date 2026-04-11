.class public final synthetic Lcom/termux/x11/controller/contentdialog/ContentDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Lcom/termux/x11/controller/core/Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Lcom/termux/x11/controller/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog$$ExternalSyntheticLambda3;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog$$ExternalSyntheticLambda3;->f$1:Lcom/termux/x11/controller/core/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog$$ExternalSyntheticLambda3;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog$$ExternalSyntheticLambda3;->f$1:Lcom/termux/x11/controller/core/Callback;

    invoke-static {v0, v1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->lambda$prompt$2(Landroid/widget/EditText;Lcom/termux/x11/controller/core/Callback;)V

    return-void
.end method

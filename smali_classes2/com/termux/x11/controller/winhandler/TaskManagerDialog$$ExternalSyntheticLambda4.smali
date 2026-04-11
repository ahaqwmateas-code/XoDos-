.class public final synthetic Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

.field public final synthetic f$1:Lcom/termux/x11/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;Lcom/termux/x11/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda4;->f$0:Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

    iput-object p2, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda4;->f$1:Lcom/termux/x11/MainActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda4;->f$0:Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda4;->f$1:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0, v1, p1}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->lambda$new$1$com-termux-x11-controller-winhandler-TaskManagerDialog(Lcom/termux/x11/MainActivity;Landroid/view/View;)V

    return-void
.end method

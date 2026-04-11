.class public final synthetic Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

.field public final synthetic f$1:Lcom/termux/x11/controller/winhandler/ProcessInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;Lcom/termux/x11/controller/winhandler/ProcessInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda3;->f$0:Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

    iput-object p2, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda3;->f$1:Lcom/termux/x11/controller/winhandler/ProcessInfo;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda3;->f$0:Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda3;->f$1:Lcom/termux/x11/controller/winhandler/ProcessInfo;

    invoke-virtual {v0, v1, p1}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->lambda$showListItemMenu$4$com-termux-x11-controller-winhandler-TaskManagerDialog(Lcom/termux/x11/controller/winhandler/ProcessInfo;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

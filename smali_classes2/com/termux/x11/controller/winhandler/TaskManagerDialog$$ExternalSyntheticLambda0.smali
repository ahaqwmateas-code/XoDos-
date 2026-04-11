.class public final synthetic Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

.field public final synthetic f$1:Lcom/termux/x11/controller/winhandler/ProcessInfo;

.field public final synthetic f$2:Lcom/termux/x11/controller/widget/CPUListView;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;Lcom/termux/x11/controller/winhandler/ProcessInfo;Lcom/termux/x11/controller/widget/CPUListView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

    iput-object p2, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda0;->f$1:Lcom/termux/x11/controller/winhandler/ProcessInfo;

    iput-object p3, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda0;->f$2:Lcom/termux/x11/controller/widget/CPUListView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda0;->f$1:Lcom/termux/x11/controller/winhandler/ProcessInfo;

    iget-object v2, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda0;->f$2:Lcom/termux/x11/controller/widget/CPUListView;

    invoke-virtual {v0, v1, v2}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->lambda$showProcessorAffinityDialog$5$com-termux-x11-controller-winhandler-TaskManagerDialog(Lcom/termux/x11/controller/winhandler/ProcessInfo;Lcom/termux/x11/controller/widget/CPUListView;)V

    return-void
.end method

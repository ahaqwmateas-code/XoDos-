.class public final synthetic Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/winhandler/WinHandler;

.field public final synthetic f$1:Lcom/termux/x11/controller/winhandler/ProcessInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/winhandler/WinHandler;Lcom/termux/x11/controller/winhandler/ProcessInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$0:Lcom/termux/x11/controller/winhandler/WinHandler;

    iput-object p2, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$1:Lcom/termux/x11/controller/winhandler/ProcessInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$0:Lcom/termux/x11/controller/winhandler/WinHandler;

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;->f$1:Lcom/termux/x11/controller/winhandler/ProcessInfo;

    invoke-static {v0, v1}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->lambda$showListItemMenu$3(Lcom/termux/x11/controller/winhandler/WinHandler;Lcom/termux/x11/controller/winhandler/ProcessInfo;)V

    return-void
.end method

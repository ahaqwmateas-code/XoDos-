.class Lcom/termux/x11/controller/winhandler/TaskManagerDialog$1;
.super Ljava/util/TimerTask;
.source "TaskManagerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/controller/winhandler/TaskManagerDialog;


# direct methods
.method constructor <init>(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

    .line 141
    iput-object p1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$1;->this$0:Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;)V
    .locals 0
    .param p0, "rec$"    # Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

    .line 144
    invoke-static {p0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->access$100(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$1;->this$0:Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

    invoke-static {v0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->access$000(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;)Lcom/termux/x11/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$1;->this$0:Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

    new-instance v2, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$1$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;)V

    invoke-virtual {v0, v2}, Lcom/termux/x11/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.class Lcom/termux/x11/LorieView$4;
.super Landroid/os/Handler;
.source "LorieView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LorieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/LorieView;


# direct methods
.method constructor <init>(Lcom/termux/x11/LorieView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/LorieView;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 820
    iput-object p1, p0, Lcom/termux/x11/LorieView$4;->this$0:Lcom/termux/x11/LorieView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 822
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/termux/x11/LorieView$4;->this$0:Lcom/termux/x11/LorieView;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 824
    :cond_0
    return-void
.end method

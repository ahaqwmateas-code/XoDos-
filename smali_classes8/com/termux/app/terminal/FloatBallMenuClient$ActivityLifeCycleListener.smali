.class public Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;
.super Ljava/lang/Object;
.source "FloatBallMenuClient.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/terminal/FloatBallMenuClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityLifeCycleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/terminal/FloatBallMenuClient;


# direct methods
.method public constructor <init>(Lcom/termux/app/terminal/FloatBallMenuClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 148
    iput-object p1, p0, Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 152
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 178
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 166
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$206(Lcom/termux/app/terminal/FloatBallMenuClient;)I

    .line 167
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->isApplicationInForeground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$300(Lcom/termux/app/terminal/FloatBallMenuClient;Z)V

    .line 170
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 160
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$204(Lcom/termux/app/terminal/FloatBallMenuClient;)I

    .line 161
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$ActivityLifeCycleListener;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$300(Lcom/termux/app/terminal/FloatBallMenuClient;Z)V

    .line 162
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 182
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 156
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 174
    return-void
.end method

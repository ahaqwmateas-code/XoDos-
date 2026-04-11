.class Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TermuxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/TermuxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TermuxActivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/TermuxActivity;

    .line 1536
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1539
    if-nez p2, :cond_0

    return-void

    .line 1541
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->access$800(Lcom/termux/app/TermuxActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1542
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0, p2}, Lcom/termux/app/TermuxActivity;->access$900(Lcom/termux/app/TermuxActivity;Landroid/content/Intent;)V

    .line 1544
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "com.termux.app.notify_app_crash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "com.termux.app.reload_style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "com.termux.app.request_storage_permissions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "TermuxActivity"

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1554
    :pswitch_0
    const-string v0, "Received intent to request storage permissions"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, v2}, Lcom/termux/app/TermuxActivity;->requestStoragePermission(Z)V

    .line 1556
    return-void

    .line 1550
    :pswitch_1
    const-string v0, "Received intent to reload styling"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v1, "com.termux.app.TermuxActivity.EXTRA_RECREATE_ACTIVITY"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/termux/app/TermuxActivity;->access$1000(Lcom/termux/app/TermuxActivity;Z)V

    .line 1552
    return-void

    .line 1546
    :pswitch_2
    const-string v0, "Received intent to notify app crash"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    invoke-static {p1, v1}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->notifyAppCrashFromCrashLogFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 1548
    return-void

    .line 1560
    :cond_2
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a22d40f -> :sswitch_2
        -0x40cd2f36 -> :sswitch_1
        0x27489c52 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

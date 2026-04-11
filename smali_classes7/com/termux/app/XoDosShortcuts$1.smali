.class Lcom/termux/app/XoDosShortcuts$1;
.super Ljava/lang/Object;
.source "XoDosShortcuts.java"

# interfaces
.implements Lcom/termux/app/XoDosShortcuts$ExtractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/XoDosShortcuts;->showLaunchConfirmation(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/XoDosShortcuts;

.field final synthetic val$execPath:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$wineType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/XoDosShortcuts;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 506
    iput-object p1, p0, Lcom/termux/app/XoDosShortcuts$1;->this$0:Lcom/termux/app/XoDosShortcuts;

    iput-object p2, p0, Lcom/termux/app/XoDosShortcuts$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/termux/app/XoDosShortcuts$1;->val$execPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/termux/app/XoDosShortcuts$1;->val$wineType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onExtractionComplete$0$com-termux-app-XoDosShortcuts$1(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "execPath"    # Ljava/lang/String;
    .param p4, "wineType"    # Ljava/lang/String;

    .line 510
    if-eqz p1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts$1;->this$0:Lcom/termux/app/XoDosShortcuts;

    invoke-static {v0}, Lcom/termux/app/XoDosShortcuts;->access$400(Lcom/termux/app/XoDosShortcuts;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Settings applied, launching..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 512
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts$1;->this$0:Lcom/termux/app/XoDosShortcuts;

    invoke-static {v0, p2, p3, p4}, Lcom/termux/app/XoDosShortcuts;->access$500(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts$1;->this$0:Lcom/termux/app/XoDosShortcuts;

    invoke-static {v0}, Lcom/termux/app/XoDosShortcuts;->access$400(Lcom/termux/app/XoDosShortcuts;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Failed to apply some settings, launching anyway..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 515
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts$1;->this$0:Lcom/termux/app/XoDosShortcuts;

    invoke-static {v0, p2, p3, p4}, Lcom/termux/app/XoDosShortcuts;->access$500(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :goto_0
    return-void
.end method

.method public onExtractionComplete(Z)V
    .locals 8
    .param p1, "success"    # Z

    .line 509
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts$1;->this$0:Lcom/termux/app/XoDosShortcuts;

    invoke-static {v0}, Lcom/termux/app/XoDosShortcuts;->access$400(Lcom/termux/app/XoDosShortcuts;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v4, p0, Lcom/termux/app/XoDosShortcuts$1;->val$name:Ljava/lang/String;

    iget-object v5, p0, Lcom/termux/app/XoDosShortcuts$1;->val$execPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/termux/app/XoDosShortcuts$1;->val$wineType:Ljava/lang/String;

    new-instance v7, Lcom/termux/app/XoDosShortcuts$1$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/termux/app/XoDosShortcuts$1$$ExternalSyntheticLambda0;-><init>(Lcom/termux/app/XoDosShortcuts$1;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 518
    return-void
.end method

.class Lcom/termux/app/terminal/FloatBallMenuClient$1;
.super Ljava/lang/Object;
.source "FloatBallMenuClient.java"

# interfaces
.implements Lcom/termux/floatball/FloatBallManager$IFloatBallPermission;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/terminal/FloatBallMenuClient;->setFloatPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/terminal/FloatBallMenuClient;


# direct methods
.method constructor <init>(Lcom/termux/app/terminal/FloatBallMenuClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 120
    iput-object p1, p0, Lcom/termux/app/terminal/FloatBallMenuClient$1;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasFloatBallPermission(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$1;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$100(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/floatball/permission/FloatPermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onRequestFloatBallPermission()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$1;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$000(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/TermuxActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/FloatBallMenuClient$1;->requestFloatBallPermission(Landroid/app/Activity;)V

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public requestFloatBallPermission(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 134
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$1;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$100(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/floatball/permission/FloatPermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/floatball/permission/FloatPermissionManager;->applyPermission(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.class Lcom/termux/floatball/permission/FloatPermissionManager$1;
.super Ljava/lang/Object;
.source "FloatPermissionManager.java"

# interfaces
.implements Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/floatball/permission/FloatPermissionManager;->ROM360PermissionApply(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/floatball/permission/FloatPermissionManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/termux/floatball/permission/FloatPermissionManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/floatball/permission/FloatPermissionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/termux/floatball/permission/FloatPermissionManager$1;->this$0:Lcom/termux/floatball/permission/FloatPermissionManager;

    iput-object p2, p0, Lcom/termux/floatball/permission/FloatPermissionManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirmResult(Z)V
    .locals 2
    .param p1, "confirm"    # Z

    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/termux/floatball/permission/FloatPermissionManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/termux/floatball/permission/rom/QikuUtils;->applyPermission(Landroid/content/Context;)V

    goto :goto_0

    .line 127
    :cond_0
    const-string v0, "FloatPermissionManager"

    const-string v1, "ROM:360, user manually refuse OVERLAY_PERMISSION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void
.end method

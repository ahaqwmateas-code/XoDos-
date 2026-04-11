.class Lcom/termux/floatball/permission/FloatPermissionManager$2;
.super Ljava/lang/Object;
.source "FloatPermissionManager.java"

# interfaces
.implements Lcom/termux/floatball/permission/FloatPermissionManager$OnConfirmResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/floatball/permission/FloatPermissionManager;->huaweiROMPermissionApply(Landroid/content/Context;)V
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

    .line 134
    iput-object p1, p0, Lcom/termux/floatball/permission/FloatPermissionManager$2;->this$0:Lcom/termux/floatball/permission/FloatPermissionManager;

    iput-object p2, p0, Lcom/termux/floatball/permission/FloatPermissionManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirmResult(Z)V
    .locals 2
    .param p1, "confirm"    # Z

    .line 137
    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/termux/floatball/permission/FloatPermissionManager$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/termux/floatball/permission/rom/HuaweiUtils;->applyPermission(Landroid/content/Context;)V

    goto :goto_0

    .line 140
    :cond_0
    const-string v0, "FloatPermissionManager"

    const-string v1, "ROM:huawei, user manually refuse OVERLAY_PERMISSION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void
.end method

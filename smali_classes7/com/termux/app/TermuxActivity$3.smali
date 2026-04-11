.class Lcom/termux/app/TermuxActivity$3;
.super Ljava/lang/Thread;
.source "TermuxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->requestStoragePermission(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/TermuxActivity;

.field final synthetic val$isPermissionCallback:Z


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/TermuxActivity;

    .line 1248
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    iput-boolean p2, p0, Lcom/termux/app/TermuxActivity$3;->val$isPermissionCallback:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1252
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity$3;->val$isPermissionCallback:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    .line 1255
    .local v0, "requestCode":I
    :goto_0
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean v2, p0, Lcom/termux/app/TermuxActivity$3;->val$isPermissionCallback:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/termux/shared/android/PermissionUtils;->checkAndRequestLegacyOrManageExternalStoragePermission(Landroid/content/Context;IZ)Z

    move-result v1

    const-string v2, "TermuxActivity"

    if-eqz v1, :cond_2

    .line 1257
    iget-boolean v1, p0, Lcom/termux/app/TermuxActivity$3;->val$isPermissionCallback:Z

    if-eqz v1, :cond_1

    .line 1258
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v3, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    .line 1259
    const v4, 0x7f1201e5

    invoke-virtual {v3, v4}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1258
    invoke-static {v1, v2, v3}, Lcom/termux/shared/logger/Logger;->logInfoAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    :cond_1
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v1}, Lcom/termux/app/TermuxInstaller;->setupStorageSymlinks(Landroid/content/Context;)V

    goto :goto_1

    .line 1263
    :cond_2
    iget-boolean v1, p0, Lcom/termux/app/TermuxActivity$3;->val$isPermissionCallback:Z

    if-eqz v1, :cond_3

    .line 1264
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v3, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    .line 1265
    const v4, 0x7f1201e7

    invoke-virtual {v3, v4}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1264
    invoke-static {v1, v2, v3}, Lcom/termux/shared/logger/Logger;->logInfoAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :cond_3
    :goto_1
    return-void
.end method

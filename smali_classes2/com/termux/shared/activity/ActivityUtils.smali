.class public Lcom/termux/shared/activity/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/shared/errors/Error;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 24
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;ZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;ZZ)Lcom/termux/shared/errors/Error;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "logErrorMessage"    # Z
    .param p3, "showErrorMessage"    # Z

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Unknown"

    .line 43
    .local v0, "activityName":Ljava/lang/String;
    :goto_0
    const-string v1, "ActivityUtils"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_2

    .line 44
    sget-object v5, Lcom/termux/shared/activity/ActivityErrno;->ERRNO_STARTING_ACTIVITY_WITH_NULL_CONTEXT:Lcom/termux/shared/errors/Errno;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v5, v3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v2

    .line 45
    .local v2, "error":Lcom/termux/shared/errors/Error;
    if-eqz p2, :cond_1

    .line 46
    invoke-virtual {v2, v4, v1}, Lcom/termux/shared/errors/Error;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    :cond_1
    return-object v2

    .line 51
    .end local v2    # "error":Lcom/termux/shared/errors/Error;
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    nop

    .line 59
    return-object v4

    .line 52
    :catch_0
    move-exception v5

    .line 53
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/termux/shared/activity/ActivityErrno;->ERRNO_START_ACTIVITY_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v2

    aput-object v7, v8, v3

    invoke-virtual {v6, v5, v8}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v2

    .line 54
    .restart local v2    # "error":Lcom/termux/shared/errors/Error;
    if-eqz p2, :cond_4

    .line 55
    if-eqz p3, :cond_3

    move-object v4, p0

    :cond_3
    invoke-virtual {v2, v4, v1}, Lcom/termux/shared/errors/Error;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    :cond_4
    return-object v2
.end method

.method public static startActivityForResult(Landroid/content/Context;ILandroid/content/Intent;)Lcom/termux/shared/errors/Error;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 68
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/activity/ActivityUtils;->startActivityForResult(Landroid/content/Context;ILandroid/content/Intent;ZZLandroidx/activity/result/ActivityResultLauncher;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static startActivityForResult(Landroid/content/Context;ILandroid/content/Intent;ZZ)Lcom/termux/shared/errors/Error;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "logErrorMessage"    # Z
    .param p4, "showErrorMessage"    # Z

    .line 76
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/activity/ActivityUtils;->startActivityForResult(Landroid/content/Context;ILandroid/content/Intent;ZZLandroidx/activity/result/ActivityResultLauncher;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static startActivityForResult(Landroid/content/Context;ILandroid/content/Intent;ZZLandroidx/activity/result/ActivityResultLauncher;)Lcom/termux/shared/errors/Error;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "logErrorMessage"    # Z
    .param p4, "showErrorMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/content/Intent;",
            "ZZ",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;)",
            "Lcom/termux/shared/errors/Error;"
        }
    .end annotation

    .line 104
    .local p5, "activityResultLauncher":Landroidx/activity/result/ActivityResultLauncher;, "Landroidx/activity/result/ActivityResultLauncher<Landroid/content/Intent;>;"
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Unknown"

    .line 106
    .local v0, "activityName":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x2

    const-string v2, "ActivityUtils"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p5, :cond_1

    .line 107
    :try_start_0
    invoke-virtual {p5, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_1

    .line 127
    :catch_0
    move-exception v6

    goto :goto_3

    .line 109
    :cond_1
    if-nez p0, :cond_3

    .line 110
    sget-object v6, Lcom/termux/shared/activity/ActivityErrno;->ERRNO_STARTING_ACTIVITY_WITH_NULL_CONTEXT:Lcom/termux/shared/errors/Errno;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-virtual {v6, v7}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v6

    .line 111
    .local v6, "error":Lcom/termux/shared/errors/Error;
    if-eqz p3, :cond_2

    .line 112
    invoke-virtual {v6, v5, v2}, Lcom/termux/shared/errors/Error;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    :cond_2
    return-object v6

    .line 116
    .end local v6    # "error":Lcom/termux/shared/errors/Error;
    :cond_3
    instance-of v6, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v6, :cond_4

    .line 117
    move-object v6, p0

    check-cast v6, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v6, p2, p1}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 118
    :cond_4
    instance-of v6, p0, Landroid/app/Activity;

    if-eqz v6, :cond_5

    .line 119
    move-object v6, p0

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    :goto_1
    nop

    .line 134
    return-object v5

    .line 121
    :cond_5
    sget-object v6, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_PARAMETER_NOT_INSTANCE_OF:Lcom/termux/shared/errors/Errno;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "context"

    aput-object v8, v7, v4

    const-string v8, "startActivityForResult"

    aput-object v8, v7, v3

    const-string v8, "Activity or AppCompatActivity"

    aput-object v8, v7, v1

    invoke-virtual {v6, v7}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v6

    .line 122
    .restart local v6    # "error":Lcom/termux/shared/errors/Error;
    if-eqz p3, :cond_7

    .line 123
    if-eqz p4, :cond_6

    move-object v7, p0

    goto :goto_2

    :cond_6
    move-object v7, v5

    :goto_2
    invoke-virtual {v6, v7, v2}, Lcom/termux/shared/errors/Error;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_7
    return-object v6

    .line 128
    .local v6, "e":Ljava/lang/Exception;
    :goto_3
    sget-object v7, Lcom/termux/shared/activity/ActivityErrno;->ERRNO_START_ACTIVITY_FOR_RESULT_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    aput-object v8, v1, v3

    invoke-virtual {v7, v6, v1}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v1

    .line 129
    .local v1, "error":Lcom/termux/shared/errors/Error;
    if-eqz p3, :cond_9

    .line 130
    if-eqz p4, :cond_8

    move-object v5, p0

    :cond_8
    invoke-virtual {v1, v5, v2}, Lcom/termux/shared/errors/Error;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    :cond_9
    return-object v1
.end method

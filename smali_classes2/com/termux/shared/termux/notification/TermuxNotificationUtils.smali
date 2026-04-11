.class public Lcom/termux/shared/termux/notification/TermuxNotificationUtils;
.super Ljava/lang/Object;
.source "TermuxNotificationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getNextNotificationId(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/termux/shared/termux/notification/TermuxNotificationUtils;

    monitor-enter v0

    .line 29
    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return v1

    .line 31
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .local v2, "preferences":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    if-nez v2, :cond_1

    monitor-exit v0

    return v1

    .line 34
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->getLastNotificationId()I

    move-result v1

    .line 36
    .local v1, "lastNotificationId":I
    add-int/lit8 v3, v1, 0x1

    .line 37
    .local v3, "nextNotificationId":I
    :goto_0
    const/16 v4, 0x539

    if-eq v3, v4, :cond_5

    const/16 v4, 0x53a

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 41
    :cond_2
    const v4, 0x7fffffff

    if-eq v3, v4, :cond_3

    if-gez v3, :cond_4

    .line 42
    :cond_3
    const/4 v3, 0x0

    .line 44
    :cond_4
    invoke-virtual {v2, v3}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->setLastNotificationId(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    monitor-exit v0

    return v3

    .line 38
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    .end local v1    # "lastNotificationId":I
    .end local v2    # "preferences":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    .end local v3    # "nextNotificationId":I
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getTermuxOrPluginAppNotificationBuilder(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;
    .locals 4
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "termuxPackageContext"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "notificationText"    # Ljava/lang/CharSequence;
    .param p6, "notificationBigText"    # Ljava/lang/CharSequence;
    .param p7, "contentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deleteIntent"    # Landroid/app/PendingIntent;
    .param p9, "notificationMode"    # I

    .line 74
    invoke-static/range {p1 .. p9}, Lcom/termux/shared/notification/NotificationUtils;->geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 78
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 81
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 89
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 91
    sget v2, Lcom/termux/shared/R$drawable;->ic_error_notification:I

    invoke-static {p0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 94
    :cond_1
    nop

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 94
    const-string v3, "ic_error_notification"

    invoke-static {p1, v3, v2, v1}, Lcom/termux/shared/android/resource/ResourceUtils;->getDrawableResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v2

    .line 96
    .local v2, "iconResId":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 101
    .end local v2    # "iconResId":Ljava/lang/Integer;
    :cond_2
    :goto_0
    const v2, -0x9f8275

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 104
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 106
    return-object v0
.end method

.class public Lcom/termux/shared/termux/crash/TermuxCrashUtils;
.super Ljava/lang/Object;
.source "TermuxCrashUtils.java"

# interfaces
.implements Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxCrashUtils"


# instance fields
.field private final mType:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;


# direct methods
.method constructor <init>(Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;)V
    .locals 0
    .param p1, "type"    # Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->mType:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    .line 47
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    invoke-static {p0, p1}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->notifyAppCrashFromCrashLogFileInner(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getCrashHandler(Landroid/content/Context;)Lcom/termux/shared/crash/CrashHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/termux/shared/termux/crash/TermuxCrashUtils;

    sget-object v1, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;->CAUGHT_EXCEPTION:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    invoke-direct {v0, v1}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;-><init>(Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;)V

    invoke-static {p0, v0}, Lcom/termux/shared/crash/CrashHandler;->getCrashHandler(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;)Lcom/termux/shared/crash/CrashHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getCrashReportsNotificationBuilder(Landroid/content/Context;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;
    .locals 10
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "termuxPackageContext"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "notificationText"    # Ljava/lang/CharSequence;
    .param p4, "notificationBigText"    # Ljava/lang/CharSequence;
    .param p5, "contentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deleteIntent"    # Landroid/app/PendingIntent;
    .param p7, "notificationMode"    # I

    .line 393
    const-string v2, "termux_crash_reports_notification_channel"

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/termux/shared/termux/notification/TermuxNotificationUtils;->getTermuxOrPluginAppNotificationBuilder(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static logCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 81
    if-nez p1, :cond_0

    return-void

    .line 82
    :cond_0
    new-instance v0, Lcom/termux/shared/termux/crash/TermuxCrashUtils;

    sget-object v1, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;->CAUGHT_EXCEPTION:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    invoke-direct {v0, v1}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;-><init>(Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lcom/termux/shared/crash/CrashHandler;->logCrash(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method public static notifyAppCrashFromCrashLogFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "logTagParam"    # Ljava/lang/String;

    .line 145
    if-nez p0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "currentPackageName":Ljava/lang/String;
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 149
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring call to notifyAppCrash() since failed to get \"com.termux\" package context from \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" context"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TermuxCrashUtils"

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void

    .line 154
    :cond_1
    invoke-static {v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v2

    .line 155
    .local v2, "preferences":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    if-nez v2, :cond_2

    return-void

    .line 158
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->areCrashReportNotificationsEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 159
    return-void

    .line 161
    :cond_3
    new-instance v3, Lcom/termux/shared/termux/crash/TermuxCrashUtils$1;

    invoke-direct {v3, v1, p1}, Lcom/termux/shared/termux/crash/TermuxCrashUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3}, Lcom/termux/shared/termux/crash/TermuxCrashUtils$1;->start()V

    .line 167
    return-void
.end method

.method private static declared-synchronized notifyAppCrashFromCrashLogFileInner(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTagParam"    # Ljava/lang/String;

    const-class v0, Lcom/termux/shared/termux/crash/TermuxCrashUtils;

    monitor-enter v0

    .line 170
    :try_start_0
    const-string v1, "TermuxCrashUtils"

    invoke-static {p1, v1}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    .local v1, "logTag":Ljava/lang/String;
    const-string v2, "/data/data/com.termux/files/home/crash_log.md"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/termux/shared/file/FileUtils;->regularFileExists(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 173
    monitor-exit v0

    return-void

    .line 176
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v2

    .line 179
    .local v11, "reportStringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "crash log"

    const-string v4, "/data/data/com.termux/files/home/crash_log.md"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-static {v2, v4, v5, v11, v3}, Lcom/termux/shared/file/FileUtils;->readTextFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/StringBuilder;Z)Lcom/termux/shared/errors/Error;

    move-result-object v2

    .line 180
    .local v2, "error":Lcom/termux/shared/errors/Error;
    if-eqz v2, :cond_1

    .line 181
    invoke-virtual {v2}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    monitor-exit v0

    return-void

    .line 186
    :cond_1
    :try_start_2
    const-string v3, "crash log"

    const-string v4, "/data/data/com.termux/files/home/crash_log.md"

    const-string v5, "/data/data/com.termux/files/home/crash_log_backup.md"

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/termux/shared/file/FileUtils;->moveRegularFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v3

    move-object v12, v3

    .line 187
    .end local v2    # "error":Lcom/termux/shared/errors/Error;
    .local v12, "error":Lcom/termux/shared/errors/Error;
    if-eqz v12, :cond_2

    .line 188
    invoke-virtual {v12}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "reportString":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    .line 194
    monitor-exit v0

    return-void

    .line 196
    :cond_3
    :try_start_3
    const-string v2, "A crash log file found at \"/data/data/com.termux/files/home/crash_log.md\"."

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v1

    invoke-static/range {v2 .. v10}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZLcom/termux/shared/termux/TermuxUtils$AppInfoMode;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    monitor-exit v0

    return-void

    .line 169
    .end local v1    # "logTag":Ljava/lang/String;
    .end local v6    # "reportString":Ljava/lang/String;
    .end local v11    # "reportStringBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "error":Lcom/termux/shared/errors/Error;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "logTagParam":Ljava/lang/String;
    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "notificationTextString"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 235
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 238
    return-void
.end method

.method public static sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZLcom/termux/shared/termux/TermuxUtils$AppInfoMode;Z)V
    .locals 25
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "notificationTextString"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forceNotification"    # Z
    .param p6, "showToast"    # Z
    .param p7, "appInfoMode"    # Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;
    .param p8, "addDeviceInfo"    # Z

    .line 293
    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p7

    if-nez v8, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 296
    .local v11, "currentPackageName":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v12

    .line 297
    .local v12, "termuxPackageContext":Landroid/content/Context;
    const-string v0, "TermuxCrashUtils"

    if-nez v12, :cond_1

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring call to sendCrashReportNotification() since failed to get \"com.termux\" package context from \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" context"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void

    .line 302
    :cond_1
    invoke-static {v12}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v13

    .line 303
    .local v13, "preferences":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    if-nez v13, :cond_2

    return-void

    .line 306
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->areCrashReportNotificationsEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p5, :cond_3

    .line 307
    return-void

    .line 309
    :cond_3
    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 311
    .end local p1    # "logTag":Ljava/lang/String;
    .local v14, "logTag":Ljava/lang/String;
    if-eqz p6, :cond_4

    .line 312
    invoke-static {v8, v9, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 316
    :cond_4
    if-eqz p2, :cond_6

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    move-object/from16 v15, p2

    goto :goto_1

    .line 317
    :cond_6
    :goto_0
    const-string v0, "Termux Crash Report"

    move-object v15, v0

    .line 319
    .end local p2    # "title":Ljava/lang/CharSequence;
    .local v15, "title":Ljava/lang/CharSequence;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" notification."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 323
    .local v6, "reportString":Ljava/lang/StringBuilder;
    const-string v0, "\n\n"

    if-eqz v10, :cond_7

    .line 324
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8, v10, v11}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_7
    if-eqz p8, :cond_8

    .line 327
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8, v1}, Lcom/termux/shared/android/AndroidUtils;->getDeviceInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_8
    sget-object v2, Lcom/termux/shared/termux/models/UserAction;->CRASH_REPORT:Lcom/termux/shared/termux/models/UserAction;

    invoke-virtual {v2}, Lcom/termux/shared/termux/models/UserAction;->getName()Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, "userActionName":Ljava/lang/String;
    new-instance v2, Lcom/termux/shared/models/ReportInfo;

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v14, v3}, Lcom/termux/shared/models/ReportInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    .line 332
    .local v4, "reportInfo":Lcom/termux/shared/models/ReportInfo;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/termux/shared/models/ReportInfo;->setReportString(Ljava/lang/String;)V

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/termux/shared/termux/TermuxUtils;->getReportIssueMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/termux/shared/models/ReportInfo;->setReportStringSuffix(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v4, v1}, Lcom/termux/shared/models/ReportInfo;->setAddReportInfoHeaderToMarkdown(Z)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Termux-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-static {v2, v1, v1}, Lcom/termux/shared/file/FileUtils;->sanitizeFileName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-virtual {v4, v5, v0}, Lcom/termux/shared/models/ReportInfo;->setReportSaveFileLabelAndPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {v12, v4}, Lcom/termux/shared/activities/ReportActivity;->newInstance(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    move-result-object v3

    .line 340
    .local v3, "result":Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
    iget-object v0, v3, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    if-nez v0, :cond_9

    return-void

    .line 343
    :cond_9
    invoke-static {v12}, Lcom/termux/shared/termux/notification/TermuxNotificationUtils;->getNextNotificationId(Landroid/content/Context;)I

    move-result v2

    .line 345
    .local v2, "nextNotificationId":I
    iget-object v0, v3, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-static {v12, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 347
    .local v16, "contentIntent":Landroid/app/PendingIntent;
    const/4 v0, 0x0

    .line 348
    .local v0, "deleteIntent":Landroid/app/PendingIntent;
    iget-object v1, v3, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->deleteIntent:Landroid/content/Intent;

    if-eqz v1, :cond_a

    .line 349
    iget-object v1, v3, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->deleteIntent:Landroid/content/Intent;

    move-object/from16 p2, v0

    const/high16 v0, 0x8000000

    .end local v0    # "deleteIntent":Landroid/app/PendingIntent;
    .local p2, "deleteIntent":Landroid/app/PendingIntent;
    invoke-static {v12, v2, v1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object/from16 v17, v0

    .end local p2    # "deleteIntent":Landroid/app/PendingIntent;
    .restart local v0    # "deleteIntent":Landroid/app/PendingIntent;
    goto :goto_2

    .line 348
    :cond_a
    move-object/from16 p2, v0

    .end local v0    # "deleteIntent":Landroid/app/PendingIntent;
    .restart local p2    # "deleteIntent":Landroid/app/PendingIntent;
    move-object/from16 v17, p2

    .line 352
    .end local p2    # "deleteIntent":Landroid/app/PendingIntent;
    .local v17, "deleteIntent":Landroid/app/PendingIntent;
    :goto_2
    invoke-static {v12}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->setupCrashReportsNotificationChannel(Landroid/content/Context;)V

    .line 355
    invoke-static {v12, v9}, Lcom/termux/shared/markdown/MarkdownUtils;->getSpannedMarkdownText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    .line 359
    .local v18, "notificationTextCharSequence":Ljava/lang/CharSequence;
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v20, v2

    .end local v2    # "nextNotificationId":I
    .local v20, "nextNotificationId":I
    move-object v2, v15

    move-object/from16 v21, v3

    .end local v3    # "result":Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
    .local v21, "result":Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
    move-object/from16 v3, v18

    move-object/from16 v22, v4

    .end local v4    # "reportInfo":Lcom/termux/shared/models/ReportInfo;
    .local v22, "reportInfo":Lcom/termux/shared/models/ReportInfo;
    move-object/from16 v4, v18

    move-object/from16 v23, v5

    .end local v5    # "userActionName":Ljava/lang/String;
    .local v23, "userActionName":Ljava/lang/String;
    move-object/from16 v5, v16

    move-object/from16 v24, v6

    .end local v6    # "reportString":Ljava/lang/StringBuilder;
    .local v24, "reportString":Ljava/lang/StringBuilder;
    move-object/from16 v6, v17

    move/from16 v7, v19

    invoke-static/range {v0 .. v7}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->getCrashReportsNotificationBuilder(Landroid/content/Context;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 362
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-nez v0, :cond_b

    return-void

    .line 365
    :cond_b
    invoke-static {v12}, Lcom/termux/shared/notification/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    .line 366
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_c

    .line 367
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    move/from16 v3, v20

    .end local v20    # "nextNotificationId":I
    .local v3, "nextNotificationId":I
    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_3

    .line 366
    .end local v3    # "nextNotificationId":I
    .restart local v20    # "nextNotificationId":I
    :cond_c
    move/from16 v3, v20

    .line 368
    .end local v20    # "nextNotificationId":I
    .restart local v3    # "nextNotificationId":I
    :goto_3
    return-void
.end method

.method public static sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 12
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "notificationTextString"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forceNotification"    # Z
    .param p6, "showToast"    # Z
    .param p7, "addDeviceInfo"    # Z

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v10, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v11, p4

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->TERMUX_AND_PLUGIN_PACKAGE:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZLcom/termux/shared/termux/TermuxUtils$AppInfoMode;Z)V

    .line 264
    return-void
.end method

.method public static sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 10
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .line 216
    nop

    .line 218
    invoke-static {p3, p4}, Lcom/termux/shared/logger/Logger;->getMessageAndStackTraceString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 216
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v9}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 220
    return-void
.end method

.method public static setCrashHandler(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/termux/shared/termux/crash/TermuxCrashUtils;

    sget-object v1, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;->CAUGHT_EXCEPTION:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    invoke-direct {v0, v1}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;-><init>(Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;)V

    invoke-static {p0, v0}, Lcom/termux/shared/crash/CrashHandler;->setCrashHandler(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;)V

    .line 63
    return-void
.end method

.method public static setDefaultCrashHandler(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/termux/shared/termux/crash/TermuxCrashUtils;

    sget-object v1, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;->UNCAUGHT_EXCEPTION:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    invoke-direct {v0, v1}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;-><init>(Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;)V

    invoke-static {p0, v0}, Lcom/termux/shared/crash/CrashHandler;->setDefaultCrashHandler(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;)V

    .line 55
    return-void
.end method

.method public static setupCrashReportsNotificationChannel(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 406
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 407
    :cond_0
    const-string v0, "Termux Crash Reports"

    const/4 v1, 0x4

    const-string v2, "termux_crash_reports_notification_channel"

    invoke-static {p0, v2, v0, v1}, Lcom/termux/shared/notification/NotificationUtils;->setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 409
    return-void
.end method


# virtual methods
.method public getAppInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrashLogFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    const-string v0, "/data/data/com.termux/files/home/crash_log.md"

    return-object v0
.end method

.method public onPostLogCrash(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "currentPackageContext"    # Landroid/content/Context;
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 92
    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "currentPackageName":Ljava/lang/String;
    invoke-static {p1}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 97
    .local v1, "context":Landroid/content/Context;
    const-string v2, "TermuxCrashUtils"

    if-nez v1, :cond_1

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring call to onPostLogCrash() since failed to get \"com.termux\" package context from \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" context"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void

    .line 103
    :cond_1
    sget-object v3, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;->UNCAUGHT_EXCEPTION:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    iget-object v4, p0, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->mType:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    invoke-virtual {v3, v4}, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "com.termux"

    if-eqz v3, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    return-void

    .line 106
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.termux.app.TermuxActivity that \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\" app crashed"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "message":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending broadcast to notify "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.termux.app.notify_app_crash"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v5    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 113
    :catch_0
    move-exception v4

    .line 114
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to notify "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onPreLogCrash(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 87
    const/4 v0, 0x0

    return v0
.end method

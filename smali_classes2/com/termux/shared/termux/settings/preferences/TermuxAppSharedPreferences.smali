.class public Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
.super Lcom/termux/shared/settings/preferences/AppSharedPreferences;
.source "TermuxAppSharedPreferences.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxAppSharedPreferences"


# instance fields
.field private DEFAULT_FONTSIZE:I

.field private MAX_FONTSIZE:I

.field private MIN_FONTSIZE:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    nop

    .line 28
    const-string v0, "com.termux_preferences"

    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 30
    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateAndMultiProcessSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    invoke-direct {p0, p1, v1, v0}, Lcom/termux/shared/settings/preferences/AppSharedPreferences;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->setFontVariables(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    const-string v0, "com.termux"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "termuxPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 47
    const/4 v1, 0x0

    return-object v1

    .line 49
    :cond_0
    new-instance v1, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static build(Landroid/content/Context;Z)Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "exitAppOnError"    # Z

    .line 62
    const-string v0, "com.termux"

    invoke-static {p0, v0, p1}, Lcom/termux/shared/termux/TermuxUtils;->getContextForPackageOrExitApp(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "termuxPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 64
    const/4 v1, 0x0

    return-object v1

    .line 66
    :cond_0
    new-instance v1, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static getDefaultFontSizes(Landroid/content/Context;)[I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 128
    .local v0, "dipInPixels":F
    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 132
    .local v2, "sizes":[I
    const/high16 v3, 0x40800000    # 4.0f

    mul-float v3, v3, v0

    float-to-int v3, v3

    aput v3, v2, v1

    .line 135
    const/high16 v3, 0x41400000    # 12.0f

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 137
    .local v3, "defaultFontSize":I
    rem-int/lit8 v4, v3, 0x2

    if-ne v4, v1, :cond_0

    add-int/lit8 v3, v3, -0x1

    .line 139
    :cond_0
    const/4 v1, 0x0

    aput v3, v2, v1

    .line 141
    const/16 v1, 0x100

    const/4 v4, 0x2

    aput v1, v2, v4

    .line 143
    return-object v2
.end method


# virtual methods
.method public areCrashReportNotificationsEnabled(Z)Z
    .locals 3
    .param p1, "readFromFile"    # Z

    .line 251
    const/4 v0, 0x1

    const-string v1, "crash_report_notifications_enabled"

    if-eqz p1, :cond_0

    .line 252
    iget-object v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public arePluginErrorNotificationsEnabled(Z)Z
    .locals 3
    .param p1, "readFromFile"    # Z

    .line 238
    const/4 v0, 0x1

    const-string v1, "plugin_error_notifications_enabled"

    if-eqz p1, :cond_0

    .line 239
    iget-object v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public changeFontSize(Z)V
    .locals 3
    .param p1, "increase"    # Z

    .line 164
    invoke-virtual {p0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->getFontSize()I

    move-result v0

    .line 166
    .local v0, "fontSize":I
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 167
    iget v1, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->MIN_FONTSIZE:I

    iget v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->MAX_FONTSIZE:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 169
    invoke-virtual {p0, v0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->setFontSize(I)V

    .line 170
    return-void
.end method

.method public declared-synchronized getAndIncrementAppShellNumberSinceBoot()I
    .locals 5

    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "app_shell_number_since_boot"

    .line 207
    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 206
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getAndIncrementInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZLjava/lang/Integer;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 205
    .end local p0    # "this":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getAndIncrementTerminalSessionNumberSinceBoot()I
    .locals 5

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "terminal_session_number_since_boot"

    .line 218
    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 217
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getAndIncrementInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZLjava/lang/Integer;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 216
    .end local p0    # "this":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCurrentSession()Ljava/lang/String;
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "current_session"

    invoke-static {v0, v3, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()I
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fontsize"

    iget v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->DEFAULT_FONTSIZE:I

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getIntStoredAsString(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, "fontSize":I
    iget v1, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->MIN_FONTSIZE:I

    iget v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->MAX_FONTSIZE:I

    invoke-static {v0, v1, v2}, Lcom/termux/shared/data/DataUtils;->clamp(III)I

    move-result v1

    return v1
.end method

.method public getLastNotificationId()I
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_notification_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLogLevel()I
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "log_level"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isSoftKeyboardEnabled()Z
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "soft_keyboard_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSoftKeyboardEnabledOnlyIfNoHardware()Z
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "soft_keyboard_enabled_only_if_no_hardware"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTerminalMarginAdjustmentEnabled()Z
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "terminal_margin_adjustment"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTerminalViewKeyLoggingEnabled()Z
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "terminal_view_key_logging_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized resetAppShellNumberSinceBoot()V
    .locals 4

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "app_shell_number_since_boot"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 210
    .end local p0    # "this":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized resetTerminalSessionNumberSinceBoot()V
    .locals 4

    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "terminal_session_number_since_boot"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 221
    .end local p0    # "this":Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCrashReportNotificationsEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 258
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "crash_report_notifications_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 259
    return-void
.end method

.method public setCurrentSession(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "current_session"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    return-void
.end method

.method public setFontSize(I)V
    .locals 3
    .param p1, "value"    # I

    .line 160
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fontsize"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setIntStoredAsString(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 161
    return-void
.end method

.method public setFontVariables(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 147
    invoke-static {p1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->getDefaultFontSizes(Landroid/content/Context;)[I

    move-result-object v0

    .line 149
    .local v0, "sizes":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->DEFAULT_FONTSIZE:I

    .line 150
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->MIN_FONTSIZE:I

    .line 151
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->MAX_FONTSIZE:I

    .line 152
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 120
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "screen_always_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 121
    return-void
.end method

.method public setLastNotificationId(I)V
    .locals 3
    .param p1, "notificationId"    # I

    .line 200
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_notification_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 201
    return-void
.end method

.method public setLogLevel(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logLevel"    # I

    .line 189
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->setLogLevel(Landroid/content/Context;I)I

    move-result p2

    .line 190
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "log_level"

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 191
    return-void
.end method

.method public setPluginErrorNotificationsEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 245
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "plugin_error_notifications_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 246
    return-void
.end method

.method public setShowTerminalToolbar(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 76
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_extra_keys"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 77
    return-void
.end method

.method public setSoftKeyboardEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 102
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "soft_keyboard_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 103
    return-void
.end method

.method public setSoftKeyboardEnabledOnlyIfNoHardware(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 110
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "soft_keyboard_enabled_only_if_no_hardware"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 111
    return-void
.end method

.method public setTerminalMarginAdjustment(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 92
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "terminal_margin_adjustment"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 93
    return-void
.end method

.method public setTerminalViewKeyLoggingEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 232
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "terminal_view_key_logging_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 233
    return-void
.end method

.method public shouldKeepScreenOn()Z
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "screen_always_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldShowTerminalToolbar()Z
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_extra_keys"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toogleShowTerminalToolbar()Z
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->shouldShowTerminalToolbar()Z

    move-result v0

    .line 81
    .local v0, "currentValue":Z
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->setShowTerminalToolbar(Z)V

    .line 82
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

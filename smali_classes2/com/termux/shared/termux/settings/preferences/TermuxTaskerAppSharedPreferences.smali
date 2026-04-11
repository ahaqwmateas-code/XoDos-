.class public Lcom/termux/shared/termux/settings/preferences/TermuxTaskerAppSharedPreferences;
.super Lcom/termux/shared/settings/preferences/AppSharedPreferences;
.source "TermuxTaskerAppSharedPreferences.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxTaskerAppSharedPreferences"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    nop

    .line 22
    const-string v0, "com.termux.tasker_preferences"

    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 24
    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateAndMultiProcessSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    invoke-direct {p0, p1, v1, v0}, Lcom/termux/shared/settings/preferences/AppSharedPreferences;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 26
    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxTaskerAppSharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    const-string v0, "com.termux.tasker"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 38
    .local v0, "termuxTaskerPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 39
    const/4 v1, 0x0

    return-object v1

    .line 41
    :cond_0
    new-instance v1, Lcom/termux/shared/termux/settings/preferences/TermuxTaskerAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/termux/settings/preferences/TermuxTaskerAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static build(Landroid/content/Context;Z)Lcom/termux/shared/termux/settings/preferences/TermuxTaskerAppSharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "exitAppOnError"    # Z

    .line 54
    const-string v0, "com.termux.tasker"

    invoke-static {p0, v0, p1}, Lcom/termux/shared/termux/TermuxUtils;->getContextForPackageOrExitApp(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, "termuxTaskerPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 56
    const/4 v1, 0x0

    return-object v1

    .line 58
    :cond_0
    new-instance v1, Lcom/termux/shared/termux/settings/preferences/TermuxTaskerAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/termux/settings/preferences/TermuxTaskerAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v1
.end method


# virtual methods
.method public getLastPendingIntentRequestCode()I
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxTaskerAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_pending_intent_request_code"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLogLevel(Z)I
    .locals 3
    .param p1, "readFromFile"    # Z

    .line 64
    const/4 v0, 0x1

    const-string v1, "log_level"

    if-eqz p1, :cond_0

    .line 65
    iget-object v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxTaskerAppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxTaskerAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setLastPendingIntentRequestCode(I)V
    .locals 3
    .param p1, "lastPendingIntentRequestCode"    # I

    .line 82
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxTaskerAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_pending_intent_request_code"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 83
    return-void
.end method

.method public setLogLevel(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logLevel"    # I
    .param p3, "commitToFile"    # Z

    .line 71
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->setLogLevel(Landroid/content/Context;I)I

    move-result p2

    .line 72
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxTaskerAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "log_level"

    invoke-static {v0, v1, p2, p3}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 73
    return-void
.end method

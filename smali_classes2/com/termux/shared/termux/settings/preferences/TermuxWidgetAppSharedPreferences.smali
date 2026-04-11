.class public Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;
.super Lcom/termux/shared/settings/preferences/AppSharedPreferences;
.source "TermuxWidgetAppSharedPreferences.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxWidgetAppSharedPreferences"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    nop

    .line 24
    const-string v0, "com.termux.widget_preferences"

    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 26
    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateAndMultiProcessSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 23
    invoke-direct {p0, p1, v1, v0}, Lcom/termux/shared/settings/preferences/AppSharedPreferences;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 28
    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    const-string v0, "com.termux.widget"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, "termuxWidgetPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 41
    const/4 v1, 0x0

    return-object v1

    .line 43
    :cond_0
    new-instance v1, Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static build(Landroid/content/Context;Z)Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "exitAppOnError"    # Z

    .line 56
    const-string v0, "com.termux.widget"

    invoke-static {p0, v0, p1}, Lcom/termux/shared/termux/TermuxUtils;->getContextForPackageOrExitApp(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "termuxWidgetPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 58
    const/4 v1, 0x0

    return-object v1

    .line 60
    :cond_0
    new-instance v1, Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static getGeneratedToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;

    move-result-object v0

    .line 67
    .local v0, "preferences":Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;->getGeneratedToken()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getGeneratedToken()Ljava/lang/String;
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "token"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "token":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0, v3}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    :cond_0
    return-object v0
.end method

.method public getLogLevel(Z)I
    .locals 3
    .param p1, "readFromFile"    # Z

    .line 83
    const/4 v0, 0x1

    const-string v1, "log_level"

    if-eqz p1, :cond_0

    .line 84
    iget-object v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setLogLevel(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logLevel"    # I
    .param p3, "commitToFile"    # Z

    .line 90
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->setLogLevel(Landroid/content/Context;I)I

    move-result p2

    .line 91
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "log_level"

    invoke-static {v0, v1, p2, p3}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 92
    return-void
.end method

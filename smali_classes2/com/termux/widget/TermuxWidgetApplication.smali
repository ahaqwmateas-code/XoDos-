.class public Lcom/termux/widget/TermuxWidgetApplication;
.super Landroid/app/Application;
.source "TermuxWidgetApplication.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "TermuxWidgetApplication"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static setLogConfig(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commitToFile"    # Z

    .line 35
    const-string v0, "[: ]"

    const-string v1, ""

    const-string v2, "Termux:Widget"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->setDefaultLogTag(Ljava/lang/String;)V

    .line 38
    invoke-static {p0}, Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;->build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;

    move-result-object v0

    .line 39
    .local v0, "preferences":Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;
    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;->getLogLevel(Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;->setLogLevel(Landroid/content/Context;IZ)V

    .line 41
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    const-string v0, "TermuxWidgetApplication"

    const-string v1, "AppInit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Lcom/termux/widget/TermuxWidgetApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->setCrashHandler(Landroid/content/Context;)V

    .line 28
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/termux/widget/TermuxWidgetApplication;->setLogConfig(Landroid/content/Context;Z)V

    .line 31
    invoke-static {v0}, Lcom/termux/shared/termux/theme/TermuxThemeUtils;->setAppNightMode(Landroid/content/Context;)V

    .line 32
    return-void
.end method

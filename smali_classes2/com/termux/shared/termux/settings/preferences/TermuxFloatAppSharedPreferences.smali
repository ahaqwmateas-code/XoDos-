.class public Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;
.super Lcom/termux/shared/settings/preferences/AppSharedPreferences;
.source "TermuxFloatAppSharedPreferences.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxFloatAppSharedPreferences"


# instance fields
.field private DEFAULT_FONTSIZE:I

.field private MAX_FONTSIZE:I

.field private MIN_FONTSIZE:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    nop

    .line 27
    const-string v0, "com.termux.window_preferences"

    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 29
    invoke-static {p1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateAndMultiProcessSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 26
    invoke-direct {p0, p1, v1, v0}, Lcom/termux/shared/settings/preferences/AppSharedPreferences;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->setFontVariables(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    const-string v0, "com.termux.window"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, "termuxFloatPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 46
    const/4 v1, 0x0

    return-object v1

    .line 48
    :cond_0
    new-instance v1, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static build(Landroid/content/Context;Z)Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "exitAppOnError"    # Z

    .line 61
    const-string v0, "com.termux.window"

    invoke-static {p0, v0, p1}, Lcom/termux/shared/termux/TermuxUtils;->getContextForPackageOrExitApp(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "termuxFloatPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 63
    const/4 v1, 0x0

    return-object v1

    .line 65
    :cond_0
    new-instance v1, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v1
.end method


# virtual methods
.method public changeFontSize(Z)V
    .locals 3
    .param p1, "increase"    # Z

    .line 128
    invoke-virtual {p0}, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->getFontSize()I

    move-result v0

    .line 130
    .local v0, "fontSize":I
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 131
    iget v1, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->MIN_FONTSIZE:I

    iget v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->MAX_FONTSIZE:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 133
    invoke-virtual {p0, v0}, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->setFontSize(I)V

    .line 134
    return-void
.end method

.method public getFontSize()I
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fontsize"

    iget v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->DEFAULT_FONTSIZE:I

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getIntStoredAsString(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, "fontSize":I
    iget v1, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->MIN_FONTSIZE:I

    iget v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->MAX_FONTSIZE:I

    invoke-static {v0, v1, v2}, Lcom/termux/shared/data/DataUtils;->clamp(III)I

    move-result v1

    return v1
.end method

.method public getLogLevel(Z)I
    .locals 3
    .param p1, "readFromFile"    # Z

    .line 138
    const/4 v0, 0x1

    const-string v1, "log_level"

    if-eqz p1, :cond_0

    .line 139
    iget-object v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWindowHeight()I
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_height"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWindowWidth()I
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_width"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWindowX()I
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_x"

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWindowY()I
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_y"

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isTerminalViewKeyLoggingEnabled(Z)Z
    .locals 3
    .param p1, "readFromFile"    # Z

    .line 151
    const/4 v0, 0x0

    const-string v1, "terminal_view_key_logging_enabled"

    if-eqz p1, :cond_0

    .line 152
    iget-object v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setFontSize(I)V
    .locals 3
    .param p1, "value"    # I

    .line 124
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fontsize"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setIntStoredAsString(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 125
    return-void
.end method

.method public setFontVariables(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    invoke-static {p1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->getDefaultFontSizes(Landroid/content/Context;)[I

    move-result-object v0

    .line 113
    .local v0, "sizes":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->DEFAULT_FONTSIZE:I

    .line 114
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->MIN_FONTSIZE:I

    .line 115
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->MAX_FONTSIZE:I

    .line 116
    return-void
.end method

.method public setLogLevel(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logLevel"    # I
    .param p3, "commitToFile"    # Z

    .line 145
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->setLogLevel(Landroid/content/Context;I)I

    move-result p2

    .line 146
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "log_level"

    invoke-static {v0, v1, p2, p3}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 147
    return-void
.end method

.method public setTerminalViewKeyLoggingEnabled(ZZ)V
    .locals 2
    .param p1, "value"    # Z
    .param p2, "commitToFile"    # Z

    .line 158
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "terminal_view_key_logging_enabled"

    invoke-static {v0, v1, p1, p2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 159
    return-void
.end method

.method public setWindowHeight(I)V
    .locals 3
    .param p1, "value"    # I

    .line 105
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_height"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 106
    return-void
.end method

.method public setWindowWidth(I)V
    .locals 3
    .param p1, "value"    # I

    .line 96
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_width"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 97
    return-void
.end method

.method public setWindowX(I)V
    .locals 3
    .param p1, "value"    # I

    .line 76
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_x"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 77
    return-void
.end method

.method public setWindowY(I)V
    .locals 3
    .param p1, "value"    # I

    .line 85
    iget-object v0, p0, Lcom/termux/shared/termux/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_y"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 86
    return-void
.end method

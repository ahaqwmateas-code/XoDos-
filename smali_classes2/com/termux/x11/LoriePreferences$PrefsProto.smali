.class public Lcom/termux/x11/LoriePreferences$PrefsProto;
.super Landroidx/preference/PreferenceDataStore;
.source "LoriePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefsProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;,
        Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;,
        Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;,
        Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;,
        Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    }
.end annotation


# static fields
.field static storeSecondaryDisplayPreferencesSeparately:Z


# instance fields
.field protected builtInDisplayPreferences:Landroid/content/SharedPreferences;

.field protected ctx:Landroid/content/Context;

.field protected preferences:Landroid/content/SharedPreferences;

.field protected secondaryDisplayPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1170
    const/4 v0, 0x0

    sput-boolean v0, Lcom/termux/x11/LoriePreferences$PrefsProto;->storeSecondaryDisplayPreferencesSeparately:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1176
    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    .line 1177
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 1179
    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    .line 1180
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->ctx:Landroid/content/Context;

    .line 1181
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->builtInDisplayPreferences:Landroid/content/SharedPreferences;

    .line 1182
    const-string v0, "secondary"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->secondaryDisplayPreferences:Landroid/content/SharedPreferences;

    .line 1183
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$PrefsProto;->recheckStoringSecondaryDisplayPreferences()V

    .line 1184
    return-void
.end method


# virtual methods
.method public get()Landroid/content/SharedPreferences;
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "d"    # Z

    .line 1203
    const-string v0, "storeSecondaryDisplayPreferencesSeparately"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->builtInDisplayPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "d"    # F

    .line 1257
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0}, Lcom/termux/x11/Prefs;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "d"    # I

    .line 1247
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0}, Lcom/termux/x11/Prefs;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "d"    # J

    .line 1252
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0}, Lcom/termux/x11/Prefs;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "d"    # Ljava/lang/String;

    .line 1236
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0}, Lcom/termux/x11/Prefs;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1242
    .local p2, "ds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0}, Lcom/termux/x11/Prefs;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isSecondaryDisplayPreferences()Z
    .locals 2

    .line 1265
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->secondaryDisplayPreferences:Landroid/content/SharedPreferences;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Z

    .line 1194
    const-string v0, "storeSecondaryDisplayPreferencesSeparately"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->builtInDisplayPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1196
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$PrefsProto;->recheckStoringSecondaryDisplayPreferences()V

    goto :goto_0

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1199
    :goto_0
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # F

    .line 1230
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0}, Lcom/termux/x11/Prefs;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1231
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # I

    .line 1220
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0}, Lcom/termux/x11/Prefs;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1221
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # J

    .line 1225
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0}, Lcom/termux/x11/Prefs;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1226
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 1210
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0}, Lcom/termux/x11/Prefs;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1211
    return-void
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1215
    .local p2, "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0}, Lcom/termux/x11/Prefs;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1216
    return-void
.end method

.method protected recheckStoringSecondaryDisplayPreferences()V
    .locals 3

    .line 1187
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->builtInDisplayPreferences:Landroid/content/SharedPreferences;

    const-string v1, "storeSecondaryDisplayPreferencesSeparately"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/termux/x11/LoriePreferences$PrefsProto;->storeSecondaryDisplayPreferencesSeparately:Z

    .line 1188
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->ctx:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v0, v2

    .line 1189
    .local v0, "isExternalDisplay":Z
    sget-boolean v1, Lcom/termux/x11/LoriePreferences$PrefsProto;->storeSecondaryDisplayPreferencesSeparately:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->secondaryDisplayPreferences:Landroid/content/SharedPreferences;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->builtInDisplayPreferences:Landroid/content/SharedPreferences;

    :goto_0
    iput-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    .line 1190
    return-void
.end method

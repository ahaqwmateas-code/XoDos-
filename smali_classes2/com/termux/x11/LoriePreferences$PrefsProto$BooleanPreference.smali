.class public Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;
.super Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
.source "LoriePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences$PrefsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BooleanPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;


# direct methods
.method public constructor <init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "this$0"    # Lcom/termux/x11/LoriePreferences$PrefsProto;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Z

    .line 1076
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    .line 1077
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1078
    return-void
.end method


# virtual methods
.method public get()Z
    .locals 3

    .line 1081
    const-string v0, "storeSecondaryDisplayPreferencesSeparately"

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    iget-object v0, v0, Lcom/termux/x11/LoriePreferences$PrefsProto;->builtInDisplayPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->defValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    iget-object v0, v0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->defValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public put(Z)V
    .locals 2
    .param p1, "v"    # Z

    .line 1088
    const-string v0, "storeSecondaryDisplayPreferencesSeparately"

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    iget-object v0, v0, Lcom/termux/x11/LoriePreferences$PrefsProto;->builtInDisplayPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1090
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto;->recheckStoringSecondaryDisplayPreferences()V

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    iget-object v0, v0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1094
    return-void
.end method

.class public Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
.super Ljava/lang/Object;
.source "LoriePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences$PrefsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Preference"
.end annotation


# instance fields
.field protected final defValue:Ljava/lang/Object;

.field protected final key:Ljava/lang/String;

.field protected final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "default_"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1052
    .local p2, "class_":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->key:Ljava/lang/String;

    .line 1054
    iput-object p2, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;

    .line 1055
    iput-object p3, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->defValue:Ljava/lang/Object;

    .line 1056
    return-void
.end method


# virtual methods
.method public asBoolean()Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;
    .locals 1

    .line 1071
    move-object v0, p0

    check-cast v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    return-object v0
.end method

.method public asInt()Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;
    .locals 1

    .line 1067
    move-object v0, p0

    check-cast v0, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    return-object v0
.end method

.method public asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;
    .locals 1

    .line 1059
    move-object v0, p0

    check-cast v0, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    return-object v0
.end method

.method public asString()Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;
    .locals 1

    .line 1063
    move-object v0, p0

    check-cast v0, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    return-object v0
.end method

.class public Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;
.super Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
.source "LoriePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences$PrefsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StringPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;


# direct methods
.method public constructor <init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/x11/LoriePreferences$PrefsProto;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Ljava/lang/String;

    .line 1112
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    .line 1113
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, p2, v0, p3}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1114
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 3

    .line 1117
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    iget-object v0, v0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->defValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/String;

    .line 1121
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    iget-object v0, v0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1122
    return-void
.end method

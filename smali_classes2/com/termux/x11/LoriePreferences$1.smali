.class Lcom/termux/x11/LoriePreferences$1;
.super Landroid/content/BroadcastReceiver;
.source "LoriePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/LoriePreferences;


# direct methods
.method constructor <init>(Lcom/termux/x11/LoriePreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/LoriePreferences;

    .line 180
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$1;->this$0:Lcom/termux/x11/LoriePreferences;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 184
    const-string v0, "com.termux.x11.ACTION_PREFERENCES_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "fromBroadcast"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$1;->this$0:Lcom/termux/x11/LoriePreferences;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences;->updatePreferencesLayout()V

    .line 187
    :cond_0
    return-void
.end method

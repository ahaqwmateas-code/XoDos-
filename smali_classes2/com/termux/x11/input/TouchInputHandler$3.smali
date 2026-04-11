.class Lcom/termux/x11/input/TouchInputHandler$3;
.super Landroid/content/Intent;
.source "TouchInputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/input/TouchInputHandler;->extractIntentFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;I)Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/input/TouchInputHandler;


# direct methods
.method constructor <init>(Lcom/termux/x11/input/TouchInputHandler;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .param p1, "this$0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p2, "arg0"    # Landroid/content/Context;

    .line 509
    .local p3, "arg1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler$3;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-direct {p0, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 510
    const-string v0, "key"

    const-string v1, "value"

    invoke-virtual {p0, v0, v1}, Lcom/termux/x11/input/TouchInputHandler$3;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$3;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v0}, Lcom/termux/x11/input/TouchInputHandler;->access$500(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/x11/input/TouchInputHandler$3;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0, v0}, Lcom/termux/x11/input/TouchInputHandler$3;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    return-void
.end method

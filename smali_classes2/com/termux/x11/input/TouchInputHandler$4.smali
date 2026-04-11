.class Lcom/termux/x11/input/TouchInputHandler$4;
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

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/termux/x11/input/TouchInputHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p2, "arg0"    # Ljava/lang/String;

    .line 521
    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler$4;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    iput-object p3, p0, Lcom/termux/x11/input/TouchInputHandler$4;->val$name:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    const-string p3, "what"

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$4;->val$name:Ljava/lang/String;

    invoke-virtual {p0, p3, v0}, Lcom/termux/x11/input/TouchInputHandler$4;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    iget-object p3, p0, Lcom/termux/x11/input/TouchInputHandler$4;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {p3}, Lcom/termux/x11/input/TouchInputHandler;->access$500(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/MainActivity;

    move-result-object p3

    invoke-virtual {p3}, Lcom/termux/x11/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/termux/x11/input/TouchInputHandler$4;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    return-void
.end method

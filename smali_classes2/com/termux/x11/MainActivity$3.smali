.class Lcom/termux/x11/MainActivity$3;
.super Landroid/content/IntentFilter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/MainActivity;


# direct methods
.method constructor <init>(Lcom/termux/x11/MainActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/x11/MainActivity;
    .param p2, "arg0"    # Ljava/lang/String;

    .line 419
    iput-object p1, p0, Lcom/termux/x11/MainActivity$3;->this$0:Lcom/termux/x11/MainActivity;

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 420
    const-string v0, "com.termux.x11.ACTION_PREFERENCES_CHANGED"

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity$3;->addAction(Ljava/lang/String;)V

    .line 421
    const-string v0, "com.termux.x11.ACTION_STOP"

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity$3;->addAction(Ljava/lang/String;)V

    .line 422
    const-string v0, "com.termux.x11.ACTION_CUSTOM"

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity$3;->addAction(Ljava/lang/String;)V

    .line 423
    return-void
.end method

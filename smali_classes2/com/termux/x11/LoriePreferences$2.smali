.class Lcom/termux/x11/LoriePreferences$2;
.super Landroid/database/ContentObserver;
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

.field private final updateLayout:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/termux/x11/LoriePreferences;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/x11/LoriePreferences;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 190
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$2;->this$0:Lcom/termux/x11/LoriePreferences;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 191
    new-instance v0, Lcom/termux/x11/LoriePreferences$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/termux/x11/LoriePreferences$2$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/LoriePreferences$2;)V

    iput-object v0, p0, Lcom/termux/x11/LoriePreferences$2;->updateLayout:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$$0$com-termux-x11-LoriePreferences$2()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$2;->this$0:Lcom/termux/x11/LoriePreferences;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences;->updatePreferencesLayout()V

    return-void
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 195
    sget-object v0, Lcom/termux/x11/LoriePreferences;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$2;->updateLayout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    sget-object v0, Lcom/termux/x11/LoriePreferences;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$2;->updateLayout:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    return-void
.end method

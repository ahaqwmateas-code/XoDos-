.class Lcom/termux/x11/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/MainActivity;


# direct methods
.method constructor <init>(Lcom/termux/x11/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/MainActivity;

    .line 230
    iput-object p1, p0, Lcom/termux/x11/MainActivity$2;->this$0:Lcom/termux/x11/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPreDraw$0$com-termux-x11-MainActivity$2()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/termux/x11/MainActivity$2;->this$0:Lcom/termux/x11/MainActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/MainActivity$2;->this$0:Lcom/termux/x11/MainActivity;

    iget-object v1, v1, Lcom/termux/x11/MainActivity;->mOnPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .line 233
    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/termux/x11/LoriePreferences;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/x11/MainActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/termux/x11/MainActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/MainActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

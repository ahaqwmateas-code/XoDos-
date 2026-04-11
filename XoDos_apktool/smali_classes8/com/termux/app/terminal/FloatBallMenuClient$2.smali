.class Lcom/termux/app/terminal/FloatBallMenuClient$2;
.super Lcom/termux/floatball/menu/MenuItem;
.source "FloatBallMenuClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/terminal/FloatBallMenuClient;->addFloatMenuItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/terminal/FloatBallMenuClient;


# direct methods
.method constructor <init>(Lcom/termux/app/terminal/FloatBallMenuClient;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/terminal/FloatBallMenuClient;
    .param p2, "arg0"    # Landroid/graphics/drawable/Drawable;

    .line 190
    iput-object p1, p0, Lcom/termux/app/terminal/FloatBallMenuClient$2;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-direct {p0, p2}, Lcom/termux/floatball/menu/MenuItem;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$2;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$400(Lcom/termux/app/terminal/FloatBallMenuClient;)Z

    move-result v0

    .line 194
    .local v0, "preState":Z
    iget-object v1, p0, Lcom/termux/app/terminal/FloatBallMenuClient$2;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    iget-object v2, p0, Lcom/termux/app/terminal/FloatBallMenuClient$2;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v2}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$400(Lcom/termux/app/terminal/FloatBallMenuClient;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$402(Lcom/termux/app/terminal/FloatBallMenuClient;Z)Z

    .line 195
    if-nez v0, :cond_0

    .line 196
    iget-object v1, p0, Lcom/termux/app/terminal/FloatBallMenuClient$2;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$000(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/TermuxActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getMainContentView()Lcom/termux/app/terminal/DisplaySlidingWindow;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/termux/app/terminal/DisplaySlidingWindow;->setTerminalViewSwitchSlider(Z)V

    .line 197
    iget-object v1, p0, Lcom/termux/app/terminal/FloatBallMenuClient$2;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    iget-object v2, p0, Lcom/termux/app/terminal/FloatBallMenuClient$2;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v2}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$000(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/TermuxActivity;

    move-result-object v2

    const v3, 0x7f120248

    invoke-virtual {v2, v3}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$500(Lcom/termux/app/terminal/FloatBallMenuClient;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/termux/app/terminal/FloatBallMenuClient$2;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$000(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/TermuxActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getMainContentView()Lcom/termux/app/terminal/DisplaySlidingWindow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/termux/app/terminal/DisplaySlidingWindow;->setTerminalViewSwitchSlider(Z)V

    .line 200
    iget-object v1, p0, Lcom/termux/app/terminal/FloatBallMenuClient$2;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    iget-object v2, p0, Lcom/termux/app/terminal/FloatBallMenuClient$2;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v2}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$000(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/TermuxActivity;

    move-result-object v2

    const v3, 0x7f120159

    invoke-virtual {v2, v3}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$500(Lcom/termux/app/terminal/FloatBallMenuClient;Ljava/lang/String;)V

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/termux/app/terminal/FloatBallMenuClient$2;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$600(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/floatball/FloatBallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/floatball/FloatBallManager;->closeMenu()V

    .line 203
    return-void
.end method

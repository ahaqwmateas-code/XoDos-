.class Lcom/termux/app/terminal/FloatBallMenuClient$5;
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

    .line 220
    iput-object p1, p0, Lcom/termux/app/terminal/FloatBallMenuClient$5;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-direct {p0, p2}, Lcom/termux/floatball/menu/MenuItem;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$5;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$700(Lcom/termux/app/terminal/FloatBallMenuClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$5;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$000(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/TermuxActivity;

    move-result-object v0

    const v1, 0x7f08011c

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$5;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$5;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$000(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/TermuxActivity;

    move-result-object v0

    const v1, 0x7f08011d

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$5;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$5;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    iget-object v1, p0, Lcom/termux/app/terminal/FloatBallMenuClient$5;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$700(Lcom/termux/app/terminal/FloatBallMenuClient;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$702(Lcom/termux/app/terminal/FloatBallMenuClient;Z)Z

    .line 229
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$5;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$000(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/TermuxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getMainContentView()Lcom/termux/app/terminal/DisplaySlidingWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/termux/app/terminal/DisplaySlidingWindow;->releaseSlider(Z)V

    .line 230
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$5;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    iget-object v1, p0, Lcom/termux/app/terminal/FloatBallMenuClient$5;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$000(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/TermuxActivity;

    move-result-object v1

    const v2, 0x7f120383

    invoke-virtual {v1, v2}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$500(Lcom/termux/app/terminal/FloatBallMenuClient;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$5;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$600(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/floatball/FloatBallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/floatball/FloatBallManager;->closeMenu()V

    .line 232
    return-void
.end method

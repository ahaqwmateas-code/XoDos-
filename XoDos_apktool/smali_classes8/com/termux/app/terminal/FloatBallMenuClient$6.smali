.class Lcom/termux/app/terminal/FloatBallMenuClient$6;
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

    .line 234
    iput-object p1, p0, Lcom/termux/app/terminal/FloatBallMenuClient$6;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-direct {p0, p2}, Lcom/termux/floatball/menu/MenuItem;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$6;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$800(Lcom/termux/app/terminal/FloatBallMenuClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$6;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$000(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/TermuxActivity;

    move-result-object v0

    const v1, 0x7f08010f

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$6;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$6;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$000(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/TermuxActivity;

    move-result-object v0

    const v1, 0x7f080111

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$6;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$6;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    iget-object v1, p0, Lcom/termux/app/terminal/FloatBallMenuClient$6;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$800(Lcom/termux/app/terminal/FloatBallMenuClient;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$802(Lcom/termux/app/terminal/FloatBallMenuClient;Z)Z

    .line 243
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$6;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$000(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/TermuxActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/x11/MainActivity;->toggleKeyboardVisibility(Landroid/content/Context;)V

    .line 244
    iget-object v0, p0, Lcom/termux/app/terminal/FloatBallMenuClient$6;->this$0:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-static {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->access$600(Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/floatball/FloatBallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/floatball/FloatBallManager;->closeMenu()V

    .line 245
    return-void
.end method

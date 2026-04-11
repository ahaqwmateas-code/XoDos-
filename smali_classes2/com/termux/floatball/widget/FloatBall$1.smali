.class Lcom/termux/floatball/widget/FloatBall$1;
.super Lcom/termux/floatball/runner/OnceRunnable;
.source "FloatBall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/floatball/widget/FloatBall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/floatball/widget/FloatBall;


# direct methods
.method constructor <init>(Lcom/termux/floatball/widget/FloatBall;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/floatball/widget/FloatBall;

    .line 49
    iput-object p1, p0, Lcom/termux/floatball/widget/FloatBall$1;->this$0:Lcom/termux/floatball/widget/FloatBall;

    invoke-direct {p0}, Lcom/termux/floatball/runner/OnceRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall$1;->this$0:Lcom/termux/floatball/widget/FloatBall;

    invoke-static {v0}, Lcom/termux/floatball/widget/FloatBall;->access$000(Lcom/termux/floatball/widget/FloatBall;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall$1;->this$0:Lcom/termux/floatball/widget/FloatBall;

    invoke-static {v0}, Lcom/termux/floatball/widget/FloatBall;->access$100(Lcom/termux/floatball/widget/FloatBall;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall$1;->this$0:Lcom/termux/floatball/widget/FloatBall;

    invoke-static {v0}, Lcom/termux/floatball/widget/FloatBall;->access$200(Lcom/termux/floatball/widget/FloatBall;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall$1;->this$0:Lcom/termux/floatball/widget/FloatBall;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/termux/floatball/widget/FloatBall;->access$102(Lcom/termux/floatball/widget/FloatBall;Z)Z

    .line 54
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall$1;->this$0:Lcom/termux/floatball/widget/FloatBall;

    invoke-static {v0}, Lcom/termux/floatball/widget/FloatBall;->access$300(Lcom/termux/floatball/widget/FloatBall;)Lcom/termux/floatball/FloatBallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/floatball/FloatBallManager;->closeMenu()V

    .line 55
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall$1;->this$0:Lcom/termux/floatball/widget/FloatBall;

    iget-object v1, p0, Lcom/termux/floatball/widget/FloatBall$1;->this$0:Lcom/termux/floatball/widget/FloatBall;

    invoke-static {v1}, Lcom/termux/floatball/widget/FloatBall;->access$100(Lcom/termux/floatball/widget/FloatBall;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/termux/floatball/widget/FloatBall;->access$400(Lcom/termux/floatball/widget/FloatBall;ZZ)V

    .line 56
    iget-object v0, p0, Lcom/termux/floatball/widget/FloatBall$1;->this$0:Lcom/termux/floatball/widget/FloatBall;

    iget-object v1, p0, Lcom/termux/floatball/widget/FloatBall$1;->this$0:Lcom/termux/floatball/widget/FloatBall;

    invoke-static {v1}, Lcom/termux/floatball/widget/FloatBall;->access$600(Lcom/termux/floatball/widget/FloatBall;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v0, v1}, Lcom/termux/floatball/widget/FloatBall;->access$502(Lcom/termux/floatball/widget/FloatBall;I)I

    .line 58
    :cond_0
    return-void
.end method

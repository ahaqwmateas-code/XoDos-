.class Lcom/termux/floatball/widget/StatusBarView$1;
.super Ljava/lang/Object;
.source "StatusBarView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/floatball/widget/StatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/floatball/widget/StatusBarView;


# direct methods
.method constructor <init>(Lcom/termux/floatball/widget/StatusBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/floatball/widget/StatusBarView;

    .line 19
    iput-object p1, p0, Lcom/termux/floatball/widget/StatusBarView$1;->this$0:Lcom/termux/floatball/widget/StatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 22
    iget-object v0, p0, Lcom/termux/floatball/widget/StatusBarView$1;->this$0:Lcom/termux/floatball/widget/StatusBarView;

    invoke-static {v0}, Lcom/termux/floatball/widget/StatusBarView;->access$000(Lcom/termux/floatball/widget/StatusBarView;)Lcom/termux/floatball/FloatBallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/floatball/FloatBallManager;->onStatusBarHeightChange()V

    .line 23
    return-void
.end method

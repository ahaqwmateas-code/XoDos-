.class Lcom/termux/x11/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/MainActivity;->initMouseAuxButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final startOffset:[F

.field final startPosition:[I

.field startTime:J

.field final tapTimeout:I

.field final synthetic this$0:Lcom/termux/x11/MainActivity;

.field final touchSlop:I

.field final synthetic val$pos:Landroid/widget/ImageButton;

.field final synthetic val$primaryLayer:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/termux/x11/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;)V
    .locals 2
    .param p1, "this$0"    # Lcom/termux/x11/MainActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 644
    iput-object p1, p0, Lcom/termux/x11/MainActivity$5;->this$0:Lcom/termux/x11/MainActivity;

    iput-object p2, p0, Lcom/termux/x11/MainActivity$5;->val$primaryLayer:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/termux/x11/MainActivity$5;->val$pos:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iget-object p2, p0, Lcom/termux/x11/MainActivity$5;->this$0:Lcom/termux/x11/MainActivity;

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-double p2, p2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    double-to-int p2, p2

    iput p2, p0, Lcom/termux/x11/MainActivity$5;->touchSlop:I

    .line 646
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p2

    iput p2, p0, Lcom/termux/x11/MainActivity$5;->tapTimeout:I

    .line 647
    const/4 p2, 0x2

    new-array p3, p2, [F

    iput-object p3, p0, Lcom/termux/x11/MainActivity$5;->startOffset:[F

    .line 648
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/termux/x11/MainActivity$5;->startPosition:[I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 653
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 662
    :pswitch_0
    new-array v0, v1, [I

    .line 663
    .local v0, "offset":[I
    new-array v1, v1, [I

    .line 664
    .local v1, "offset2":[I
    iget-object v4, p0, Lcom/termux/x11/MainActivity$5;->val$primaryLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 665
    iget-object v4, p0, Lcom/termux/x11/MainActivity$5;->this$0:Lcom/termux/x11/MainActivity;

    iget-object v4, v4, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 666
    iget-object v4, p0, Lcom/termux/x11/MainActivity$5;->val$primaryLayer:Landroid/widget/LinearLayout;

    aget v5, v0, v2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/termux/x11/MainActivity$5;->startOffset:[F

    aget v6, v6, v2

    sub-float/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    add-float/2addr v5, v6

    aget v6, v1, v2

    int-to-float v6, v6

    aget v2, v1, v2

    iget-object v7, p0, Lcom/termux/x11/MainActivity$5;->this$0:Lcom/termux/x11/MainActivity;

    iget-object v7, v7, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lcom/termux/x11/MainActivity$5;->val$primaryLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    sub-int/2addr v2, v7

    int-to-float v2, v2

    invoke-static {v5, v6, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setX(F)V

    .line 667
    iget-object v2, p0, Lcom/termux/x11/MainActivity$5;->val$primaryLayer:Landroid/widget/LinearLayout;

    aget v4, v0, v3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/termux/x11/MainActivity$5;->startOffset:[F

    aget v5, v5, v3

    sub-float/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    add-float/2addr v4, v5

    aget v5, v1, v3

    int-to-float v5, v5

    aget v6, v1, v3

    iget-object v7, p0, Lcom/termux/x11/MainActivity$5;->this$0:Lcom/termux/x11/MainActivity;

    iget-object v7, v7, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/termux/x11/MainActivity$5;->val$primaryLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setY(F)V

    .line 668
    goto :goto_0

    .line 671
    .end local v0    # "offset":[I
    .end local v1    # "offset2":[I
    :pswitch_1
    new-array v0, v1, [I

    .line 672
    .local v0, "_pos":[I
    iget-object v1, p0, Lcom/termux/x11/MainActivity$5;->val$primaryLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 673
    iget-object v1, p0, Lcom/termux/x11/MainActivity$5;->startOffset:[F

    aget v1, v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v4, p0, Lcom/termux/x11/MainActivity$5;->startPosition:[I

    aget v4, v4, v2

    aget v5, v0, v2

    sub-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 674
    .local v1, "deltaX":I
    iget-object v4, p0, Lcom/termux/x11/MainActivity$5;->startOffset:[F

    aget v4, v4, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/termux/x11/MainActivity$5;->startPosition:[I

    aget v5, v5, v3

    aget v6, v0, v3

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 675
    .local v4, "deltaY":I
    iget-object v5, p0, Lcom/termux/x11/MainActivity$5;->val$pos:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 677
    mul-int v2, v1, v1

    mul-int v5, v4, v4

    add-int/2addr v2, v5

    iget v5, p0, Lcom/termux/x11/MainActivity$5;->touchSlop:I

    if-ge v2, v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/termux/x11/MainActivity$5;->startTime:J

    sub-long/2addr v5, v7

    iget v2, p0, Lcom/termux/x11/MainActivity$5;->tapTimeout:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-gtz v2, :cond_0

    .line 678
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 679
    return v3

    .line 655
    .end local v0    # "_pos":[I
    .end local v1    # "deltaX":I
    .end local v4    # "deltaY":I
    :pswitch_2
    iget-object v0, p0, Lcom/termux/x11/MainActivity$5;->val$primaryLayer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/termux/x11/MainActivity$5;->startPosition:[I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 656
    iget-object v0, p0, Lcom/termux/x11/MainActivity$5;->startOffset:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v2

    .line 657
    iget-object v0, p0, Lcom/termux/x11/MainActivity$5;->startOffset:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v3

    .line 658
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/termux/x11/MainActivity$5;->startTime:J

    .line 659
    iget-object v0, p0, Lcom/termux/x11/MainActivity$5;->val$pos:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 660
    nop

    .line 684
    :cond_0
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

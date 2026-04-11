.class public final synthetic Lcom/termux/x11/controller/widget/MagnifierView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/widget/MagnifierView;

.field public final synthetic f$1:Landroid/graphics/PointF;

.field public final synthetic f$2:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/widget/MagnifierView;Landroid/graphics/PointF;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/widget/MagnifierView$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/controller/widget/MagnifierView;

    iput-object p2, p0, Lcom/termux/x11/controller/widget/MagnifierView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/termux/x11/controller/widget/MagnifierView$$ExternalSyntheticLambda0;->f$2:[Z

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/widget/MagnifierView$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/controller/widget/MagnifierView;

    iget-object v1, p0, Lcom/termux/x11/controller/widget/MagnifierView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/termux/x11/controller/widget/MagnifierView$$ExternalSyntheticLambda0;->f$2:[Z

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/termux/x11/controller/widget/MagnifierView;->lambda$new$0$com-termux-x11-controller-widget-MagnifierView(Landroid/graphics/PointF;[ZLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.class Lcom/termux/x11/input/TapGestureDetector$EventHandler;
.super Landroid/os/Handler;
.source "TapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/input/TapGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# instance fields
.field private final mDetector:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/termux/x11/input/TapGestureDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/termux/x11/input/TapGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Lcom/termux/x11/input/TapGestureDetector;

    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/termux/x11/input/TapGestureDetector$EventHandler;->mDetector:Ljava/lang/ref/WeakReference;

    .line 84
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .line 88
    iget-object v0, p0, Lcom/termux/x11/input/TapGestureDetector$EventHandler;->mDetector:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/input/TapGestureDetector;

    .line 89
    .local v0, "detector":Lcom/termux/x11/input/TapGestureDetector;
    if-eqz v0, :cond_0

    .line 90
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/termux/x11/input/TapGestureDetector;->access$002(Lcom/termux/x11/input/TapGestureDetector;Z)Z

    .line 91
    invoke-static {v0}, Lcom/termux/x11/input/TapGestureDetector;->access$300(Lcom/termux/x11/input/TapGestureDetector;)Lcom/termux/x11/input/TapGestureDetector$OnTapListener;

    move-result-object v1

    invoke-static {v0}, Lcom/termux/x11/input/TapGestureDetector;->access$100(Lcom/termux/x11/input/TapGestureDetector;)I

    move-result v2

    invoke-static {v0}, Lcom/termux/x11/input/TapGestureDetector;->access$200(Lcom/termux/x11/input/TapGestureDetector;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Lcom/termux/x11/input/TapGestureDetector;->access$200(Lcom/termux/x11/input/TapGestureDetector;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-interface {v1, v2, v3, v4}, Lcom/termux/x11/input/TapGestureDetector$OnTapListener;->onLongPress(IFF)V

    .line 92
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/termux/x11/input/TapGestureDetector;->access$202(Lcom/termux/x11/input/TapGestureDetector;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 94
    :cond_0
    return-void
.end method

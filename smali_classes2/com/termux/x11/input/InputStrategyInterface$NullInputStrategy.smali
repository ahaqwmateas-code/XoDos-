.class public Lcom/termux/x11/input/InputStrategyInterface$NullInputStrategy;
.super Ljava/lang/Object;
.source "InputStrategyInterface.java"

# interfaces
.implements Lcom/termux/x11/input/InputStrategyInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/input/InputStrategyInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullInputStrategy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 54
    return-void
.end method

.method public onPressAndHold(IZ)Z
    .locals 1
    .param p1, "button"    # I
    .param p2, "force"    # Z

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(FF)V
    .locals 0
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .line 53
    return-void
.end method

.method public onTap(I)V
    .locals 0
    .param p1, "button"    # I

    .line 51
    return-void
.end method

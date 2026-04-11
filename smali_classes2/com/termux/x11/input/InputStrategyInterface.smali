.class public interface abstract Lcom/termux/x11/input/InputStrategyInterface;
.super Ljava/lang/Object;
.source "InputStrategyInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;,
        Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;,
        Lcom/termux/x11/input/InputStrategyInterface$NullInputStrategy;
    }
.end annotation


# virtual methods
.method public abstract onMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract onPressAndHold(IZ)Z
.end method

.method public abstract onScroll(FF)V
.end method

.method public abstract onTap(I)V
.end method

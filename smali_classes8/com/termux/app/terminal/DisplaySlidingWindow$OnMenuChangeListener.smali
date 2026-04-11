.class public interface abstract Lcom/termux/app/terminal/DisplaySlidingWindow$OnMenuChangeListener;
.super Ljava/lang/Object;
.source "DisplaySlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/terminal/DisplaySlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMenuChangeListener"
.end annotation


# virtual methods
.method public abstract onEdgeReached()V
.end method

.method public abstract onMenuOpen(ZI)V
.end method

.method public abstract sendTouchEvent(Landroid/view/MotionEvent;)Z
.end method

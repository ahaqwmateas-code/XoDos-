.class public interface abstract Lcom/termux/view/textselection/CursorController;
.super Ljava/lang/Object;
.source "CursorController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# virtual methods
.method public abstract hide()Z
.end method

.method public abstract isActive()Z
.end method

.method public abstract onDetached()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract render()V
.end method

.method public abstract show(Landroid/view/MotionEvent;)V
.end method

.method public abstract updatePosition(Lcom/termux/view/textselection/TextSelectionHandleView;II)V
.end method

.class public interface abstract Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;
.super Ljava/lang/Object;
.source "Pointer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/controller/xserver/Pointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPointerMotionListener"
.end annotation


# virtual methods
.method public abstract onPointMoveDelta(II)V
.end method

.method public abstract onPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V
.end method

.method public abstract onPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V
.end method

.method public abstract onPointerMove(II)V
.end method

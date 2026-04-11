.class public interface abstract Lcom/termux/x11/input/InputStub;
.super Ljava/lang/Object;
.source "InputStub.java"


# static fields
.field public static final BUTTON_LEFT:I = 0x1

.field public static final BUTTON_MIDDLE:I = 0x2

.field public static final BUTTON_RIGHT:I = 0x3

.field public static final BUTTON_SCROLL:I = 0x4

.field public static final BUTTON_UNDEFINED:I


# virtual methods
.method public abstract sendKeyEvent(IIZ)Z
.end method

.method public abstract sendMouseEvent(FFIZZ)V
.end method

.method public abstract sendMouseWheelEvent(FF)V
.end method

.method public abstract sendStylusEvent(FFIIIIIZZ)V
.end method

.method public abstract sendTextEvent([B)V
.end method

.method public abstract sendTouchEvent(IIII)V
.end method

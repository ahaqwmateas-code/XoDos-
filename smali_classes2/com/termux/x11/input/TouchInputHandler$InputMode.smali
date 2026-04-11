.class public interface abstract annotation Lcom/termux/x11/input/TouchInputHandler$InputMode;
.super Ljava/lang/Object;
.source "TouchInputHandler.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/input/TouchInputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "InputMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final SIMULATED_TOUCH:I = 0x2

.field public static final TOUCH:I = 0x3

.field public static final TRACKPAD:I = 0x1

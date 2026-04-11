.class public interface abstract annotation Lcom/termux/x11/input/TouchInputHandler$CapturedPointerTransformation;
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
    name = "CapturedPointerTransformation"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final AUTO:I = -0x1

.field public static final CLOCKWISE:I = 0x3

.field public static final COUNTER_CLOCKWISE:I = 0x1

.field public static final NONE:I = 0x0

.field public static final UPSIDE_DOWN:I = 0x2

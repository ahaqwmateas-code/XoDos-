.class public interface abstract Lcom/termux/floatball/FloatBallManager$IFloatBallPermission;
.super Ljava/lang/Object;
.source "FloatBallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/floatball/FloatBallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFloatBallPermission"
.end annotation


# virtual methods
.method public abstract hasFloatBallPermission(Landroid/content/Context;)Z
.end method

.method public abstract onRequestFloatBallPermission()Z
.end method

.method public abstract requestFloatBallPermission(Landroid/app/Activity;)V
.end method

.class public abstract Lcom/termux/floatball/runner/OnceRunnable;
.super Ljava/lang/Object;
.source "OnceRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mScheduled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/termux/floatball/runner/OnceRunnable;->mScheduled:Z

    return v0
.end method

.method public abstract onRun()V
.end method

.method public postDelaySelf(Landroid/view/View;I)V
    .locals 2
    .param p1, "carrier"    # Landroid/view/View;
    .param p2, "delay"    # I

    .line 20
    iget-boolean v0, p0, Lcom/termux/floatball/runner/OnceRunnable;->mScheduled:Z

    if-nez v0, :cond_0

    .line 21
    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/floatball/runner/OnceRunnable;->mScheduled:Z

    .line 24
    :cond_0
    return-void
.end method

.method public postSelf(Landroid/view/View;)V
    .locals 1
    .param p1, "carrier"    # Landroid/view/View;

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/termux/floatball/runner/OnceRunnable;->postDelaySelf(Landroid/view/View;I)V

    .line 17
    return-void
.end method

.method public removeSelf(Landroid/view/View;)V
    .locals 1
    .param p1, "carrier"    # Landroid/view/View;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/floatball/runner/OnceRunnable;->mScheduled:Z

    .line 32
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method

.method public final run()V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/termux/floatball/runner/OnceRunnable;->onRun()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/floatball/runner/OnceRunnable;->mScheduled:Z

    .line 11
    return-void
.end method

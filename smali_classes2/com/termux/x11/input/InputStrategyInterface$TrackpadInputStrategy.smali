.class public Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;
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
    name = "TrackpadInputStrategy"
.end annotation


# instance fields
.field private mHeldButton:I

.field private final mInjector:Lcom/termux/x11/input/InputEventSender;


# direct methods
.method public constructor <init>(Lcom/termux/x11/input/InputEventSender;)V
    .locals 1
    .param p1, "injector"    # Lcom/termux/x11/input/InputEventSender;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;->mHeldButton:I

    .line 203
    iput-object p1, p0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;->mInjector:Lcom/termux/x11/input/InputEventSender;

    if-eqz p1, :cond_0

    .line 205
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;->mHeldButton:I

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget v2, p0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;->mHeldButton:I

    invoke-virtual {v0, v2, v1}, Lcom/termux/x11/input/InputEventSender;->sendMouseUp(IZ)V

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;->mHeldButton:I

    .line 233
    :cond_0
    return-void
.end method

.method public onPressAndHold(IZ)Z
    .locals 2
    .param p1, "button"    # I
    .param p2, "force"    # Z

    .line 214
    iget-object v0, p0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-boolean v0, v0, Lcom/termux/x11/input/InputEventSender;->tapToMove:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 215
    const/4 v0, 0x0

    return v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;->mInjector:Lcom/termux/x11/input/InputEventSender;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/termux/x11/input/InputEventSender;->sendMouseDown(IZ)V

    .line 218
    iput p1, p0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;->mHeldButton:I

    .line 219
    return v1
.end method

.method public onScroll(FF)V
    .locals 1
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .line 224
    iget-object v0, p0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;->mInjector:Lcom/termux/x11/input/InputEventSender;

    invoke-virtual {v0, p1, p2}, Lcom/termux/x11/input/InputEventSender;->sendMouseWheelEvent(FF)V

    .line 225
    return-void
.end method

.method public onTap(I)V
    .locals 2
    .param p1, "button"    # I

    .line 209
    iget-object v0, p0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;->mInjector:Lcom/termux/x11/input/InputEventSender;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/termux/x11/input/InputEventSender;->sendMouseClick(IZ)V

    .line 210
    return-void
.end method

.class public Lcom/termux/x11/controller/widget/TouchpadView;
.super Landroid/view/View;
.source "TouchpadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;,
        Lcom/termux/x11/controller/widget/TouchpadView$Finger;
    }
.end annotation


# static fields
.field public static final CURSOR_ACCELERATION:F = 1.25f

.field public static final CURSOR_ACCELERATION_THRESHOLD:B = 0x6t

.field private static final MAX_FINGERS:B = 0x4t

.field public static final MAX_TAP_MILLISECONDS:S = 0xc8s

.field public static final MAX_TAP_TRAVEL_DISTANCE:B = 0xat

.field private static final MAX_TWO_FINGERS_SCROLL_DISTANCE:S = 0x15es


# instance fields
.field private fingerPointerButtonLeft:Lcom/termux/x11/controller/widget/TouchpadView$Finger;

.field private fingerPointerButtonRight:Lcom/termux/x11/controller/widget/TouchpadView$Finger;

.field private final fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

.field private fourFingersTapCallback:Ljava/lang/Runnable;

.field private numFingers:B

.field private pointerButtonLeftEnabled:Z

.field private pointerButtonRightEnabled:Z

.field private scrollAccumY:F

.field private scrolling:Z

.field private sensitivity:F

.field private touchMode:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

.field private final xServer:Lcom/termux/x11/LorieView;

.field private final xform:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/termux/x11/LorieView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xServer"    # Lcom/termux/x11/LorieView;

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    iput-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 31
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->numFingers:B

    .line 32
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->sensitivity:F

    .line 33
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->pointerButtonLeftEnabled:Z

    .line 34
    iput-boolean v1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->pointerButtonRightEnabled:Z

    .line 37
    const/4 v2, 0x0

    iput v2, p0, Lcom/termux/x11/controller/widget/TouchpadView;->scrollAccumY:F

    .line 38
    iput-boolean v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->scrolling:Z

    .line 41
    invoke-static {}, Lcom/termux/x11/controller/math/XForm;->getInstance()[F

    move-result-object v2

    iput-object v2, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xform:[F

    .line 42
    sget-object v2, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;->TOUCH_SCREEN:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    iput-object v2, p0, Lcom/termux/x11/controller/widget/TouchpadView;->touchMode:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    .line 50
    iput-object p2, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    .line 51
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/widget/TouchpadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/termux/x11/controller/widget/TouchpadView;->setClickable(Z)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/termux/x11/controller/widget/TouchpadView;->setFocusable(Z)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/widget/TouchpadView;->setFocusableInTouchMode(Z)V

    .line 55
    invoke-static {}, Lcom/termux/x11/controller/core/AppUtils;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/termux/x11/controller/core/AppUtils;->getScreenHeight()I

    move-result v1

    iget-object v2, p2, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v2, v2, Lcom/termux/x11/ScreenInfo;->screenWidth:I

    iget-object v3, p2, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v3, v3, Lcom/termux/x11/ScreenInfo;->screenHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/termux/x11/controller/widget/TouchpadView;->updateXform(IIII)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/termux/x11/controller/widget/TouchpadView;)F
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/widget/TouchpadView;

    .line 19
    iget v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->sensitivity:F

    return v0
.end method

.method static synthetic access$100(Lcom/termux/x11/controller/widget/TouchpadView;)Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/widget/TouchpadView;

    .line 19
    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->touchMode:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    return-object v0
.end method

.method private findSecondFinger(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)Lcom/termux/x11/controller/widget/TouchpadView$Finger;
    .locals 2
    .param p1, "finger"    # Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 262
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v1, v1, v0

    return-object v1

    .line 262
    :cond_0
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    .line 265
    .end local v0    # "i":B
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleFingerMove(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V
    .locals 10
    .param p1, "finger1"    # Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, "skipPointerMove":Z
    iget-byte v1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->numFingers:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/termux/x11/controller/widget/TouchpadView;->findSecondFinger(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 222
    .local v1, "finger2":Lcom/termux/x11/controller/widget/TouchpadView$Finger;
    :goto_0
    if-eqz v1, :cond_4

    .line 223
    iget-object v3, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    iget-object v3, v3, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v3, v3, Lcom/termux/x11/ScreenInfo;->screenWidth:I

    iget-object v4, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    iget-object v4, v4, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v4, v4, Lcom/termux/x11/ScreenInfo;->screenHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v4, v3

    .line 224
    .local v4, "resolutionScale":F
    invoke-static {p1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$200(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v3

    invoke-static {v1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$200(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-double v5, v3

    invoke-static {p1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$300(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v3

    invoke-static {v1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$300(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v7

    sub-int/2addr v3, v7

    int-to-double v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v3, v5

    mul-float v3, v3, v4

    .line 226
    .local v3, "currDistance":F
    const/high16 v5, 0x43af0000    # 350.0f

    cmpg-float v6, v3, v5

    if-gez v6, :cond_3

    .line 227
    iget v5, p0, Lcom/termux/x11/controller/widget/TouchpadView;->scrollAccumY:F

    invoke-static {p1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$300(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v6

    invoke-static {v1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$300(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v6, v6, v7

    invoke-static {p1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$500(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v8

    invoke-static {v1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$500(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v8, v8, v7

    sub-float/2addr v6, v8

    add-float/2addr v5, v6

    iput v5, p0, Lcom/termux/x11/controller/widget/TouchpadView;->scrollAccumY:F

    .line 229
    iget v5, p0, Lcom/termux/x11/controller/widget/TouchpadView;->scrollAccumY:F

    const/high16 v6, -0x3d380000    # -100.0f

    const/4 v7, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 230
    iget-object v5, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v6, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v5, v6}, Lcom/termux/x11/LorieView;->injectPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 231
    iget-object v5, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v6, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v5, v6}, Lcom/termux/x11/LorieView;->injectPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 232
    iput v7, p0, Lcom/termux/x11/controller/widget/TouchpadView;->scrollAccumY:F

    goto :goto_1

    .line 233
    :cond_1
    iget v5, p0, Lcom/termux/x11/controller/widget/TouchpadView;->scrollAccumY:F

    const/high16 v6, 0x42c80000    # 100.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 234
    iget-object v5, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v6, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v5, v6}, Lcom/termux/x11/LorieView;->injectPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 235
    iget-object v5, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v6, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v5, v6}, Lcom/termux/x11/LorieView;->injectPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 236
    iput v7, p0, Lcom/termux/x11/controller/widget/TouchpadView;->scrollAccumY:F

    .line 238
    :cond_2
    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/termux/x11/controller/widget/TouchpadView;->scrolling:Z

    goto :goto_2

    .line 239
    :cond_3
    cmpl-float v5, v3, v5

    if-ltz v5, :cond_4

    iget-object v5, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    iget-object v5, v5, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    sget-object v6, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v5, v6}, Lcom/termux/x11/controller/xserver/Pointer;->isButtonPressed(Lcom/termux/x11/controller/xserver/Pointer$Button;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 240
    invoke-static {v1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$600(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 241
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/widget/TouchpadView;->pressPointerButtonLeft(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V

    .line 242
    const/4 v0, 0x1

    .line 246
    .end local v3    # "currDistance":F
    .end local v4    # "resolutionScale":F
    :cond_4
    :goto_2
    iget-boolean v3, p0, Lcom/termux/x11/controller/widget/TouchpadView;->scrolling:Z

    if-nez v3, :cond_6

    iget-byte v3, p0, Lcom/termux/x11/controller/widget/TouchpadView;->numFingers:B

    if-gt v3, v2, :cond_6

    if-nez v0, :cond_6

    .line 247
    invoke-static {p1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$700(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v2

    .line 248
    .local v2, "dx":I
    invoke-static {p1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$800(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v3

    .line 251
    .local v3, "dy":I
    iget-object v4, p0, Lcom/termux/x11/controller/widget/TouchpadView;->touchMode:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    sget-object v5, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;->TOUCH_SCREEN:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    if-ne v4, v5, :cond_5

    goto :goto_3

    .line 256
    :cond_5
    iget-object v4, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    invoke-virtual {v4, v2, v3}, Lcom/termux/x11/LorieView;->injectPointerMoveDelta(II)V

    .line 259
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :cond_6
    :goto_3
    return-void
.end method

.method private handleFingerUp(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V
    .locals 2
    .param p1, "finger1"    # Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 193
    iget-byte v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->numFingers:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 206
    :pswitch_1
    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fourFingersTapCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 207
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$400(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 207
    :cond_0
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    .line 210
    .end local v0    # "i":B
    :cond_1
    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fourFingersTapCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 200
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/widget/TouchpadView;->findSecondFinger(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    move-result-object v0

    .line 201
    .local v0, "finger2":Lcom/termux/x11/controller/widget/TouchpadView$Finger;
    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$400(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/widget/TouchpadView;->pressPointerButtonRight(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V

    goto :goto_1

    .line 195
    .end local v0    # "finger2":Lcom/termux/x11/controller/widget/TouchpadView$Finger;
    :pswitch_3
    invoke-static {p1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$400(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/widget/TouchpadView;->pressPointerButtonLeft(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V

    .line 214
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/widget/TouchpadView;->releasePointerButtonLeft(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/widget/TouchpadView;->releasePointerButtonRight(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V

    .line 216
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handlerFingerDown(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V
    .locals 3
    .param p1, "finger1"    # Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 187
    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->touchMode:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    sget-object v1, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;->TOUCH_SCREEN:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->numFingers:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    iget-object v0, v0, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    invoke-static {p1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$200(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v1

    invoke-static {p1}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$300(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/termux/x11/controller/xserver/Pointer;->moveTo(II)V

    .line 190
    :cond_0
    return-void
.end method

.method private pressPointerButtonLeft(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V
    .locals 2
    .param p1, "finger"    # Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 269
    iget-boolean v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->pointerButtonLeftEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    iget-object v0, v0, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    sget-object v1, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/xserver/Pointer;->isButtonPressed(Lcom/termux/x11/controller/xserver/Pointer$Button;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v1, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/termux/x11/LorieView;->injectPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 271
    iput-object p1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingerPointerButtonLeft:Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 273
    :cond_0
    return-void
.end method

.method private pressPointerButtonRight(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V
    .locals 2
    .param p1, "finger"    # Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 276
    iget-boolean v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->pointerButtonRightEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    iget-object v0, v0, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    sget-object v1, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/xserver/Pointer;->isButtonPressed(Lcom/termux/x11/controller/xserver/Pointer$Button;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v1, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/termux/x11/LorieView;->injectPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 278
    iput-object p1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingerPointerButtonRight:Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 280
    :cond_0
    return-void
.end method

.method private releasePointerButtonLeft(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V
    .locals 3
    .param p1, "finger"    # Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 283
    iget-boolean v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->pointerButtonLeftEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingerPointerButtonLeft:Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    iget-object v0, v0, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    sget-object v1, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/xserver/Pointer;->isButtonPressed(Lcom/termux/x11/controller/xserver/Pointer$Button;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Lcom/termux/x11/controller/widget/TouchpadView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/widget/TouchpadView$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/controller/widget/TouchpadView;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/termux/x11/controller/widget/TouchpadView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    :cond_0
    return-void
.end method

.method private releasePointerButtonRight(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V
    .locals 3
    .param p1, "finger"    # Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 292
    iget-boolean v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->pointerButtonRightEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingerPointerButtonRight:Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    iget-object v0, v0, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    sget-object v1, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/xserver/Pointer;->isButtonPressed(Lcom/termux/x11/controller/xserver/Pointer$Button;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Lcom/termux/x11/controller/widget/TouchpadView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/widget/TouchpadView$$ExternalSyntheticLambda1;-><init>(Lcom/termux/x11/controller/widget/TouchpadView;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/termux/x11/controller/widget/TouchpadView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    :cond_0
    return-void
.end method

.method private updateXform(IIII)V
    .locals 5
    .param p1, "outerWidth"    # I
    .param p2, "outerHeight"    # I
    .param p3, "innerWidth"    # I
    .param p4, "innerHeight"    # I

    .line 65
    new-instance v0, Lcom/termux/x11/controller/xserver/Viewport;

    invoke-direct {v0}, Lcom/termux/x11/controller/xserver/Viewport;-><init>()V

    .line 66
    .local v0, "viewTransformation":Lcom/termux/x11/controller/xserver/Viewport;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/termux/x11/controller/xserver/Viewport;->update(IIII)V

    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, v0, Lcom/termux/x11/controller/xserver/Viewport;->aspect:F

    div-float/2addr v1, v2

    .line 69
    .local v1, "invAspect":F
    iget-object v2, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    invoke-virtual {v2}, Lcom/termux/x11/LorieView;->isFullscreen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xform:[F

    iget v3, v0, Lcom/termux/x11/controller/xserver/Viewport;->x:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, v0, Lcom/termux/x11/controller/xserver/Viewport;->y:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/termux/x11/controller/math/XForm;->makeTranslation([FFF)[F

    .line 71
    iget-object v2, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xform:[F

    invoke-static {v2, v1, v1}, Lcom/termux/x11/controller/math/XForm;->scale([FFF)[F

    goto :goto_0

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xform:[F

    invoke-static {v2, v1, v1}, Lcom/termux/x11/controller/math/XForm;->makeScale([FFF)[F

    .line 73
    :goto_0
    return-void
.end method


# virtual methods
.method public computeDeltaPoint(FFFF)[F
    .locals 4
    .param p1, "lastX"    # F
    .param p2, "lastY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 367
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 369
    .local v0, "result":[F
    iget-object v1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xform:[F

    invoke-static {v1, p1, p2, v0}, Lcom/termux/x11/controller/math/XForm;->transformPoint([FFF[F)[F

    .line 370
    const/4 v1, 0x0

    aget p1, v0, v1

    .line 371
    const/4 v2, 0x1

    aget p2, v0, v2

    .line 373
    iget-object v3, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xform:[F

    invoke-static {v3, p3, p4, v0}, Lcom/termux/x11/controller/math/XForm;->transformPoint([FFF[F)[F

    .line 374
    aget p3, v0, v1

    .line 375
    aget p4, v0, v2

    .line 377
    sub-float v3, p3, p1

    aput v3, v0, v1

    .line 378
    sub-float v1, p4, p2

    aput v1, v0, v2

    .line 379
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public isPointerButtonLeftEnabled()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->pointerButtonLeftEnabled:Z

    return v0
.end method

.method public isPointerButtonRightEnabled()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->pointerButtonRightEnabled:Z

    return v0
.end method

.method synthetic lambda$releasePointerButtonLeft$0$com-termux-x11-controller-widget-TouchpadView()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v1, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/termux/x11/LorieView;->injectPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingerPointerButtonLeft:Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 287
    return-void
.end method

.method synthetic lambda$releasePointerButtonRight$1$com-termux-x11-controller-widget-TouchpadView()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v1, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v0, v1}, Lcom/termux/x11/LorieView;->injectPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingerPointerButtonRight:Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 296
    return-void
.end method

.method public onExternalMouseEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "handled":Z
    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v1

    .line 328
    .local v1, "actionButton":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 338
    :pswitch_1
    if-ne v1, v4, :cond_0

    .line 339
    iget-object v2, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v3, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/termux/x11/LorieView;->injectPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    goto :goto_0

    .line 340
    :cond_0
    if-ne v1, v3, :cond_1

    .line 341
    iget-object v2, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v3, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/termux/x11/LorieView;->injectPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 343
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 344
    goto :goto_3

    .line 330
    :pswitch_2
    if-ne v1, v4, :cond_2

    .line 331
    iget-object v2, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v3, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/termux/x11/LorieView;->injectPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    goto :goto_1

    .line 332
    :cond_2
    if-ne v1, v3, :cond_3

    .line 333
    iget-object v2, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v3, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v2, v3}, Lcom/termux/x11/LorieView;->injectPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 335
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 336
    goto :goto_3

    .line 351
    :pswitch_3
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 352
    .local v2, "scrollY":F
    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_4

    .line 353
    iget-object v3, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v4, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/termux/x11/LorieView;->injectPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 354
    iget-object v3, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v4, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/termux/x11/LorieView;->injectPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    goto :goto_2

    .line 355
    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_5

    .line 356
    iget-object v3, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v4, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/termux/x11/LorieView;->injectPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 357
    iget-object v3, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v4, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {v3, v4}, Lcom/termux/x11/LorieView;->injectPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 359
    :cond_5
    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    .line 346
    .end local v2    # "scrollY":F
    :pswitch_4
    iget-object v2, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xform:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v2, v3, v5}, Lcom/termux/x11/controller/math/XForm;->transformPoint([FFF)[F

    move-result-object v2

    .line 347
    .local v2, "transformedPoint":[F
    iget-object v3, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    const/4 v5, 0x0

    aget v5, v2, v5

    float-to-int v5, v5

    aget v4, v2, v4

    float-to-int v4, v4

    invoke-virtual {v3, v5, v4}, Lcom/termux/x11/LorieView;->injectPointerMove(II)V

    .line 348
    const/4 v0, 0x1

    .line 349
    nop

    .line 363
    .end local v1    # "actionButton":I
    .end local v2    # "transformedPoint":[F
    :cond_6
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 123
    invoke-virtual {p0, p1}, Lcom/termux/x11/controller/widget/TouchpadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 61
    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    iget-object v0, v0, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v0, v0, Lcom/termux/x11/ScreenInfo;->screenWidth:I

    iget-object v1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    iget-object v1, v1, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v1, v1, Lcom/termux/x11/ScreenInfo;->screenHeight:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/termux/x11/controller/widget/TouchpadView;->updateXform(IIII)V

    .line 62
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 129
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 130
    .local v1, "pointerId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 131
    .local v2, "actionMasked":I
    const/4 v3, 0x1

    const/4 v4, 0x4

    if-lt v1, v4, :cond_0

    return v3

    .line 133
    :cond_0
    const/16 v5, 0x2002

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 179
    :pswitch_1
    const/4 v5, 0x0

    .local v5, "i":B
    :goto_0
    if-ge v5, v4, :cond_1

    iget-object v8, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aput-object v7, v8, v5

    add-int/lit8 v8, v5, 0x1

    int-to-byte v5, v8

    goto :goto_0

    .line 180
    .end local v5    # "i":B
    :cond_1
    iput-byte v6, p0, Lcom/termux/x11/controller/widget/TouchpadView;->numFingers:B

    goto/16 :goto_3

    .line 149
    :pswitch_2
    const/4 v6, 0x0

    .local v6, "i":B
    :goto_1
    if-ge v6, v4, :cond_5

    .line 150
    iget-object v8, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v8, v8, v6

    if-eqz v8, :cond_4

    .line 151
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 152
    .local v8, "pointerIndex":I
    if-ltz v8, :cond_3

    .line 153
    iget-object v9, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v9, v9, v6

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->update(FF)V

    .line 154
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 155
    iget-object v9, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    iget-object v9, v9, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    iget-object v10, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v10, v10, v1

    invoke-static {v10}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$200(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v10

    iget-object v11, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v11, v11, v1

    invoke-static {v11}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$300(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/termux/x11/controller/xserver/Pointer;->moveTo(II)V

    goto :goto_2

    .line 157
    :cond_2
    iget-object v9, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v9, v9, v6

    invoke-direct {p0, v9}, Lcom/termux/x11/controller/widget/TouchpadView;->handleFingerMove(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V

    goto :goto_2

    .line 161
    :cond_3
    iget-object v9, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v9, v9, v6

    invoke-direct {p0, v9}, Lcom/termux/x11/controller/widget/TouchpadView;->handleFingerUp(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V

    .line 162
    iget-object v9, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aput-object v7, v9, v6

    .line 163
    iget-byte v9, p0, Lcom/termux/x11/controller/widget/TouchpadView;->numFingers:B

    sub-int/2addr v9, v3

    int-to-byte v9, v9

    iput-byte v9, p0, Lcom/termux/x11/controller/widget/TouchpadView;->numFingers:B

    .line 149
    .end local v8    # "pointerIndex":I
    :cond_4
    :goto_2
    add-int/lit8 v8, v6, 0x1

    int-to-byte v6, v8

    goto :goto_1

    .line 167
    .end local v6    # "i":B
    :cond_5
    goto :goto_3

    .line 171
    :pswitch_3
    iget-object v4, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v4, v4, v1

    if-eqz v4, :cond_7

    .line 172
    iget-object v4, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v4, v4, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->update(FF)V

    .line 173
    iget-object v4, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Lcom/termux/x11/controller/widget/TouchpadView;->handleFingerUp(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V

    .line 174
    iget-object v4, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aput-object v7, v4, v1

    .line 175
    iget-byte v4, p0, Lcom/termux/x11/controller/widget/TouchpadView;->numFingers:B

    sub-int/2addr v4, v3

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/termux/x11/controller/widget/TouchpadView;->numFingers:B

    goto :goto_3

    .line 137
    :pswitch_4
    const/4 v4, 0x0

    iput v4, p0, Lcom/termux/x11/controller/widget/TouchpadView;->scrollAccumY:F

    .line 138
    iput-boolean v6, p0, Lcom/termux/x11/controller/widget/TouchpadView;->scrolling:Z

    .line 139
    iget-object v4, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    new-instance v6, Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-direct {v6, p0, v7, v8}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;-><init>(Lcom/termux/x11/controller/widget/TouchpadView;FF)V

    aput-object v6, v4, v1

    .line 140
    iget-byte v4, p0, Lcom/termux/x11/controller/widget/TouchpadView;->numFingers:B

    add-int/2addr v4, v3

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/termux/x11/controller/widget/TouchpadView;->numFingers:B

    .line 141
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 142
    iget-object v4, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Lcom/termux/x11/controller/widget/TouchpadView;->handlerFingerDown(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)V

    goto :goto_3

    .line 144
    :cond_6
    iget-object v4, p0, Lcom/termux/x11/controller/widget/TouchpadView;->xServer:Lcom/termux/x11/LorieView;

    iget-object v4, v4, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    iget-object v5, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v5, v5, v1

    invoke-static {v5}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$200(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v5

    iget-object v6, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fingers:[Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->access$300(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/termux/x11/controller/xserver/Pointer;->moveTo(II)V

    .line 146
    nop

    .line 183
    :cond_7
    :goto_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setFourFingersTapCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "fourFingersTapCallback"    # Ljava/lang/Runnable;

    .line 321
    iput-object p1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->fourFingersTapCallback:Ljava/lang/Runnable;

    .line 322
    return-void
.end method

.method public setPointerButtonLeftEnabled(Z)V
    .locals 0
    .param p1, "pointerButtonLeftEnabled"    # Z

    .line 309
    iput-boolean p1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->pointerButtonLeftEnabled:Z

    .line 310
    return-void
.end method

.method public setPointerButtonRightEnabled(Z)V
    .locals 0
    .param p1, "pointerButtonRightEnabled"    # Z

    .line 317
    iput-boolean p1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->pointerButtonRightEnabled:Z

    .line 318
    return-void
.end method

.method public setSensitivity(F)V
    .locals 0
    .param p1, "sensitivity"    # F

    .line 301
    iput p1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->sensitivity:F

    .line 302
    return-void
.end method

.method public setTouchMode(Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;)V
    .locals 0
    .param p1, "touchMode"    # Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    .line 45
    iput-object p1, p0, Lcom/termux/x11/controller/widget/TouchpadView;->touchMode:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    .line 46
    return-void
.end method

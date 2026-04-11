.class public Lcom/termux/x11/controller/xserver/Pointer;
.super Ljava/lang/Object;
.source "Pointer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/controller/xserver/Pointer$Button;,
        Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;
    }
.end annotation


# static fields
.field public static final MAX_BUTTONS:B = 0x8t


# instance fields
.field private final buttonMask:Lcom/termux/x11/controller/xserver/Bitmask;

.field private final onPointerMotionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;",
            ">;"
        }
    .end annotation
.end field

.field private pointerButton:Lcom/termux/x11/controller/xserver/Pointer$Button;

.field private x:I

.field private final xServer:Lcom/termux/x11/LorieView;

.field private y:I


# direct methods
.method public constructor <init>(Lcom/termux/x11/LorieView;)V
    .locals 1
    .param p1, "xServer"    # Lcom/termux/x11/LorieView;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Lcom/termux/x11/controller/xserver/Bitmask;

    invoke-direct {v0}, Lcom/termux/x11/controller/xserver/Bitmask;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->buttonMask:Lcom/termux/x11/controller/xserver/Bitmask;

    .line 51
    iput-object p1, p0, Lcom/termux/x11/controller/xserver/Pointer;->xServer:Lcom/termux/x11/LorieView;

    .line 52
    return-void
.end method

.method private screenPointLiesOutsideImageBoundaryX(F)Z
    .locals 2
    .param p1, "screenX"    # F

    .line 100
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->xServer:Lcom/termux/x11/LorieView;

    iget-object v0, v0, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v0, v0, Lcom/termux/x11/ScreenInfo;->offsetX:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->xServer:Lcom/termux/x11/LorieView;

    iget-object v0, v0, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v0, v0, Lcom/termux/x11/ScreenInfo;->imageWidth:I

    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Pointer;->xServer:Lcom/termux/x11/LorieView;

    iget-object v1, v1, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v1, v1, Lcom/termux/x11/ScreenInfo;->offsetX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private screenPointLiesOutsideImageBoundaryY(F)Z
    .locals 2
    .param p1, "screenY"    # F

    .line 107
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->xServer:Lcom/termux/x11/LorieView;

    iget-object v0, v0, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v0, v0, Lcom/termux/x11/ScreenInfo;->offsetY:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->xServer:Lcom/termux/x11/LorieView;

    iget-object v0, v0, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v0, v0, Lcom/termux/x11/ScreenInfo;->imageHeight:I

    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Pointer;->xServer:Lcom/termux/x11/LorieView;

    iget-object v1, v1, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v1, v1, Lcom/termux/x11/ScreenInfo;->offsetY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private triggerOnPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V
    .locals 2
    .param p1, "button"    # Lcom/termux/x11/controller/xserver/Pointer$Button;

    .line 137
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;

    invoke-interface {v1, p1}, Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;->onPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 137
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 140
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private triggerOnPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V
    .locals 2
    .param p1, "button"    # Lcom/termux/x11/controller/xserver/Pointer$Button;

    .line 143
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;

    invoke-interface {v1, p1}, Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;->onPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 143
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 146
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private triggerOnPointerMove(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 149
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;

    invoke-interface {v1, p1, p2}, Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;->onPointerMove(II)V

    .line 149
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 152
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private triggerOnPointerMoveDelta(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 155
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;

    invoke-interface {v1, p1, p2}, Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;->onPointMoveDelta(II)V

    .line 155
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 158
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnPointerMotionListener(Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;)V
    .locals 1
    .param p1, "onPointerMotionListener"    # Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;

    .line 129
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public getClampedX()S
    .locals 3

    .line 77
    iget v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->x:I

    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Pointer;->xServer:Lcom/termux/x11/LorieView;

    iget-object v1, v1, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v1, v1, Lcom/termux/x11/ScreenInfo;->screenWidth:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/termux/x11/controller/math/Mathf;->clamp(III)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getClampedY()S
    .locals 3

    .line 81
    iget v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->y:I

    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Pointer;->xServer:Lcom/termux/x11/LorieView;

    iget-object v1, v1, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v1, v1, Lcom/termux/x11/ScreenInfo;->screenHeight:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/termux/x11/controller/math/Mathf;->clamp(III)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getPointerButton()Lcom/termux/x11/controller/xserver/Pointer$Button;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->pointerButton:Lcom/termux/x11/controller/xserver/Pointer$Button;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->y:I

    return v0
.end method

.method public isButtonPressed(Lcom/termux/x11/controller/xserver/Pointer$Button;)Z
    .locals 2
    .param p1, "button"    # Lcom/termux/x11/controller/xserver/Pointer$Button;

    .line 125
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->buttonMask:Lcom/termux/x11/controller/xserver/Bitmask;

    invoke-virtual {p1}, Lcom/termux/x11/controller/xserver/Pointer$Button;->flag()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/xserver/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public moveDelta(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/termux/x11/controller/xserver/Pointer;->triggerOnPointerMoveDelta(II)V

    .line 94
    return-void
.end method

.method public moveTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 85
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->xServer:Lcom/termux/x11/LorieView;

    iget-object v0, v0, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/termux/x11/ScreenInfo;->setCursorPosition(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/termux/x11/controller/xserver/Pointer;->setX(I)V

    .line 87
    invoke-virtual {p0, p2}, Lcom/termux/x11/controller/xserver/Pointer;->setY(I)V

    .line 88
    iget v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->x:I

    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Pointer;->xServer:Lcom/termux/x11/LorieView;

    iget-object v1, v1, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v1, v1, Lcom/termux/x11/ScreenInfo;->offsetX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Pointer;->xServer:Lcom/termux/x11/LorieView;

    iget-object v1, v1, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget-object v1, v1, Lcom/termux/x11/ScreenInfo;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/termux/x11/controller/xserver/Pointer;->y:I

    iget-object v2, p0, Lcom/termux/x11/controller/xserver/Pointer;->xServer:Lcom/termux/x11/LorieView;

    iget-object v2, v2, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget v2, v2, Lcom/termux/x11/ScreenInfo;->offsetY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/termux/x11/controller/xserver/Pointer;->xServer:Lcom/termux/x11/LorieView;

    iget-object v2, v2, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iget-object v2, v2, Lcom/termux/x11/ScreenInfo;->scale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/termux/x11/controller/xserver/Pointer;->triggerOnPointerMove(II)V

    .line 90
    :cond_0
    return-void
.end method

.method public removeOnPointerMotionListener(Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;)V
    .locals 1
    .param p1, "onPointerMotionListener"    # Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;

    .line 133
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Pointer;->onPointerMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public setButton(Lcom/termux/x11/controller/xserver/Pointer$Button;Z)V
    .locals 3
    .param p1, "button"    # Lcom/termux/x11/controller/xserver/Pointer$Button;
    .param p2, "pressed"    # Z

    .line 111
    invoke-virtual {p0, p1}, Lcom/termux/x11/controller/xserver/Pointer;->isButtonPressed(Lcom/termux/x11/controller/xserver/Pointer$Button;)Z

    move-result v0

    .line 112
    .local v0, "oldPressed":Z
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Pointer;->buttonMask:Lcom/termux/x11/controller/xserver/Bitmask;

    invoke-virtual {p1}, Lcom/termux/x11/controller/xserver/Pointer$Button;->flag()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/termux/x11/controller/xserver/Bitmask;->set(IZ)V

    .line 113
    if-eq v0, p2, :cond_1

    .line 114
    if-eqz p2, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/xserver/Pointer;->triggerOnPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 116
    iput-object p1, p0, Lcom/termux/x11/controller/xserver/Pointer;->pointerButton:Lcom/termux/x11/controller/xserver/Pointer$Button;

    goto :goto_0

    .line 118
    :cond_0
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/xserver/Pointer;->triggerOnPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/termux/x11/controller/xserver/Pointer;->pointerButton:Lcom/termux/x11/controller/xserver/Pointer$Button;

    .line 122
    :cond_1
    :goto_0
    return-void
.end method

.method public setX(I)V
    .locals 1
    .param p1, "x"    # I

    .line 55
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/termux/x11/controller/xserver/Pointer;->screenPointLiesOutsideImageBoundaryX(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    iput p1, p0, Lcom/termux/x11/controller/xserver/Pointer;->x:I

    .line 59
    return-void
.end method

.method public setY(I)V
    .locals 1
    .param p1, "y"    # I

    .line 62
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/termux/x11/controller/xserver/Pointer;->screenPointLiesOutsideImageBoundaryY(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    iput p1, p0, Lcom/termux/x11/controller/xserver/Pointer;->y:I

    .line 66
    return-void
.end method

.class public Lcom/termux/x11/controller/xserver/Viewport;
.super Ljava/lang/Object;
.source "Viewport.java"


# instance fields
.field public aspect:F

.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(IIII)V
    .locals 4
    .param p1, "outerWidth"    # I
    .param p2, "outerHeight"    # I
    .param p3, "innerWidth"    # I
    .param p4, "innerHeight"    # I

    .line 11
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, p4

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/termux/x11/controller/xserver/Viewport;->aspect:F

    .line 12
    int-to-float v0, p3

    iget v1, p0, Lcom/termux/x11/controller/xserver/Viewport;->aspect:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/termux/x11/controller/xserver/Viewport;->width:I

    .line 13
    int-to-float v0, p4

    iget v1, p0, Lcom/termux/x11/controller/xserver/Viewport;->aspect:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/termux/x11/controller/xserver/Viewport;->height:I

    .line 14
    int-to-float v0, p1

    int-to-float v1, p3

    iget v2, p0, Lcom/termux/x11/controller/xserver/Viewport;->aspect:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/termux/x11/controller/xserver/Viewport;->x:I

    .line 15
    int-to-float v0, p2

    int-to-float v2, p4

    iget v3, p0, Lcom/termux/x11/controller/xserver/Viewport;->aspect:F

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/termux/x11/controller/xserver/Viewport;->y:I

    .line 16
    return-void
.end method

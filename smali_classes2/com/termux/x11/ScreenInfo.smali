.class public Lcom/termux/x11/ScreenInfo;
.super Ljava/lang/Object;
.source "ScreenInfo.java"


# instance fields
.field public imageHeight:I

.field public imageWidth:I

.field private final mCursorPosition:Landroid/graphics/PointF;

.field public offsetX:I

.field public offsetY:I

.field public scale:Landroid/graphics/PointF;

.field public screenHeight:I

.field public screenWidth:I

.field private xserver:Lcom/termux/x11/LorieView;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x400

    iput v0, p0, Lcom/termux/x11/ScreenInfo;->screenWidth:I

    .line 10
    const/16 v0, 0x300

    iput v0, p0, Lcom/termux/x11/ScreenInfo;->screenHeight:I

    .line 16
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/ScreenInfo;->mCursorPosition:Landroid/graphics/PointF;

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/ScreenInfo;->scale:Landroid/graphics/PointF;

    .line 24
    int-to-short v0, p1

    iput v0, p0, Lcom/termux/x11/ScreenInfo;->screenWidth:I

    .line 25
    int-to-short v0, p2

    iput v0, p0, Lcom/termux/x11/ScreenInfo;->screenHeight:I

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/termux/x11/LorieView;)V
    .locals 1
    .param p1, "xserver"    # Lcom/termux/x11/LorieView;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x400

    iput v0, p0, Lcom/termux/x11/ScreenInfo;->screenWidth:I

    .line 10
    const/16 v0, 0x300

    iput v0, p0, Lcom/termux/x11/ScreenInfo;->screenHeight:I

    .line 16
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/ScreenInfo;->mCursorPosition:Landroid/graphics/PointF;

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/ScreenInfo;->scale:Landroid/graphics/PointF;

    .line 20
    iput-object p1, p0, Lcom/termux/x11/ScreenInfo;->xserver:Lcom/termux/x11/LorieView;

    .line 21
    return-void
.end method

.method private moveCursorToScreenPoint(FF)V
    .locals 10
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F

    .line 65
    iget v0, p0, Lcom/termux/x11/ScreenInfo;->offsetX:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/termux/x11/ScreenInfo;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/termux/x11/ScreenInfo;->offsetY:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    iget-object v2, p0, Lcom/termux/x11/ScreenInfo;->scale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    move-object v1, v2

    .line 66
    .local v1, "imagePoint":[F
    aget v2, v1, v3

    aget v4, v1, v0

    invoke-virtual {p0, v2, v4}, Lcom/termux/x11/ScreenInfo;->setCursorPosition(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v4, p0, Lcom/termux/x11/ScreenInfo;->xserver:Lcom/termux/x11/LorieView;

    aget v5, v1, v3

    aget v6, v1, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/termux/x11/LorieView;->sendMouseEvent(FFIZZ)V

    .line 69
    :cond_0
    return-void
.end method

.method private resetTransformation()V
    .locals 3

    .line 42
    iget v0, p0, Lcom/termux/x11/ScreenInfo;->screenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/termux/x11/ScreenInfo;->imageWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 43
    .local v0, "sx":F
    iget v1, p0, Lcom/termux/x11/ScreenInfo;->screenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/termux/x11/ScreenInfo;->imageHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 46
    .local v1, "sy":F
    iget-object v2, p0, Lcom/termux/x11/ScreenInfo;->scale:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 47
    return-void
.end method


# virtual methods
.method public getHeightInMillimeters()S
    .locals 1

    .line 33
    iget v0, p0, Lcom/termux/x11/ScreenInfo;->screenHeight:I

    div-int/lit8 v0, v0, 0xa

    int-to-short v0, v0

    return v0
.end method

.method public getWidthInMillimeters()S
    .locals 1

    .line 29
    iget v0, p0, Lcom/termux/x11/ScreenInfo;->screenWidth:I

    div-int/lit8 v0, v0, 0xa

    int-to-short v0, v0

    return v0
.end method

.method public handleClientSizeChanged(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 50
    iput p1, p0, Lcom/termux/x11/ScreenInfo;->screenWidth:I

    .line 51
    iput p2, p0, Lcom/termux/x11/ScreenInfo;->screenHeight:I

    .line 52
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v2, p2

    div-float/2addr v2, v1

    invoke-direct {p0, v0, v2}, Lcom/termux/x11/ScreenInfo;->moveCursorToScreenPoint(FF)V

    .line 54
    invoke-direct {p0}, Lcom/termux/x11/ScreenInfo;->resetTransformation()V

    .line 55
    return-void
.end method

.method public handleHostSizeChanged(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 58
    iput p1, p0, Lcom/termux/x11/ScreenInfo;->imageWidth:I

    .line 59
    iput p2, p0, Lcom/termux/x11/ScreenInfo;->imageHeight:I

    .line 60
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v2, p2

    div-float/2addr v2, v1

    invoke-direct {p0, v0, v2}, Lcom/termux/x11/ScreenInfo;->moveCursorToScreenPoint(FF)V

    .line 61
    invoke-direct {p0}, Lcom/termux/x11/ScreenInfo;->resetTransformation()V

    .line 62
    return-void
.end method

.method public setCursorPosition(FF)Z
    .locals 3
    .param p1, "newX"    # F
    .param p2, "newY"    # F

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "cursorMoved":Z
    iget v1, p0, Lcom/termux/x11/ScreenInfo;->offsetX:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/termux/x11/ScreenInfo;->mCursorPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/termux/x11/ScreenInfo;->mCursorPosition:Landroid/graphics/PointF;

    iget v2, p0, Lcom/termux/x11/ScreenInfo;->offsetX:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 75
    const/4 v0, 0x1

    .line 77
    :cond_0
    iget v1, p0, Lcom/termux/x11/ScreenInfo;->offsetY:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    iget-object v2, p0, Lcom/termux/x11/ScreenInfo;->mCursorPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/termux/x11/ScreenInfo;->mCursorPosition:Landroid/graphics/PointF;

    iget v2, p0, Lcom/termux/x11/ScreenInfo;->offsetY:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 79
    const/4 v0, 0x1

    .line 81
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/termux/x11/ScreenInfo;->screenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/x11/ScreenInfo;->screenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/termux/x11/input/RenderData;
.super Ljava/lang/Object;
.source "RenderData.java"


# instance fields
.field public imageHeight:I

.field public imageWidth:I

.field private final mCursorPosition:Landroid/graphics/PointF;

.field public offsetX:I

.field public offsetY:I

.field public scale:Landroid/graphics/PointF;

.field public screenHeight:I

.field public screenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    .line 26
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/input/RenderData;->mCursorPosition:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getCursorPosition()Landroid/graphics/PointF;
    .locals 3

    .line 34
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/termux/x11/input/RenderData;->mCursorPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/termux/x11/input/RenderData;->mCursorPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public setCursorPosition(FF)Z
    .locals 3
    .param p1, "newX"    # F
    .param p2, "newY"    # F

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "cursorMoved":Z
    iget v1, p0, Lcom/termux/x11/input/RenderData;->offsetX:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/termux/x11/input/RenderData;->mCursorPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/termux/x11/input/RenderData;->mCursorPosition:Landroid/graphics/PointF;

    iget v2, p0, Lcom/termux/x11/input/RenderData;->offsetX:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 48
    const/4 v0, 0x1

    .line 50
    :cond_0
    iget v1, p0, Lcom/termux/x11/input/RenderData;->offsetY:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    iget-object v2, p0, Lcom/termux/x11/input/RenderData;->mCursorPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/termux/x11/input/RenderData;->mCursorPosition:Landroid/graphics/PointF;

    iget v2, p0, Lcom/termux/x11/input/RenderData;->offsetY:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 52
    const/4 v0, 0x1

    .line 54
    :cond_1
    return v0
.end method

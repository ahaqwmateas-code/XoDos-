.class public Lcom/termux/floatball/menu/MenuLayout;
.super Landroid/view/ViewGroup;
.source "MenuLayout.java"

# interfaces
.implements Lcom/termux/floatball/runner/ICarrier;


# static fields
.field private static MIN_RADIUS:I


# instance fields
.field private centerX:I

.field private centerY:I

.field private isMoving:Z

.field private mChildPadding:I

.field private mChildSize:I

.field private mExpanded:Z

.field private mFromDegrees:F

.field private mRadius:I

.field private mRunner:Lcom/termux/floatball/runner/ScrollRunner;

.field private mToDegrees:F

.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/termux/floatball/menu/MenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x5

    iput v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mChildPadding:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mExpanded:Z

    .line 25
    iput-boolean v0, p0, Lcom/termux/floatball/menu/MenuLayout;->isMoving:Z

    .line 26
    const/4 v1, 0x1

    iput v1, p0, Lcom/termux/floatball/menu/MenuLayout;->position:I

    .line 27
    iput v0, p0, Lcom/termux/floatball/menu/MenuLayout;->centerX:I

    .line 28
    iput v0, p0, Lcom/termux/floatball/menu/MenuLayout;->centerY:I

    .line 86
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {p1, v0}, Lcom/termux/floatball/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/termux/floatball/menu/MenuLayout;->MIN_RADIUS:I

    .line 87
    new-instance v0, Lcom/termux/floatball/runner/ScrollRunner;

    invoke-direct {v0, p0}, Lcom/termux/floatball/runner/ScrollRunner;-><init>(Lcom/termux/floatball/runner/ICarrier;)V

    iput-object v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mRunner:Lcom/termux/floatball/runner/ScrollRunner;

    .line 88
    invoke-virtual {p0, v1}, Lcom/termux/floatball/menu/MenuLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 89
    return-void
.end method

.method private static computeChildFrame(IIIFI)Landroid/graphics/Rect;
    .locals 10
    .param p0, "centerX"    # I
    .param p1, "centerY"    # I
    .param p2, "radius"    # I
    .param p3, "degrees"    # F
    .param p4, "size"    # I

    .line 111
    int-to-double v0, p0

    int-to-double v2, p2

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    .line 112
    .local v0, "childCenterX":D
    int-to-double v2, p1

    int-to-double v4, p2

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    .line 114
    .local v2, "childCenterY":D
    new-instance v4, Landroid/graphics/Rect;

    div-int/lit8 v5, p4, 0x2

    int-to-double v5, v5

    sub-double v5, v0, v5

    double-to-int v5, v5

    div-int/lit8 v6, p4, 0x2

    int-to-double v6, v6

    sub-double v6, v2, v6

    double-to-int v6, v6

    div-int/lit8 v7, p4, 0x2

    int-to-double v7, v7

    add-double/2addr v7, v0

    double-to-int v7, v7

    div-int/lit8 v8, p4, 0x2

    int-to-double v8, v8

    add-double/2addr v8, v2

    double-to-int v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method private static computeRadius(FIIII)I
    .locals 7
    .param p0, "arcDegrees"    # F
    .param p1, "childCount"    # I
    .param p2, "childSize"    # I
    .param p3, "childPadding"    # I
    .param p4, "minRadius"    # I

    .line 95
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 96
    return p4

    .line 99
    :cond_0
    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    int-to-float v0, p1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    int-to-float v0, v0

    :goto_0
    div-float v0, p0, v0

    .line 100
    .local v0, "perDegrees":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 101
    .local v1, "perHalfDegrees":F
    add-int v2, p2, p3

    .line 102
    .local v2, "perSize":I
    div-int/lit8 v3, v2, 0x2

    int-to-double v3, v3

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    double-to-int v3, v3

    .line 103
    .local v3, "radius":I
    invoke-static {v3, p4}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4
.end method

.method private getLayoutSize()I
    .locals 5

    .line 133
    iget v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mToDegrees:F

    iget v1, p0, Lcom/termux/floatball/menu/MenuLayout;->mFromDegrees:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/termux/floatball/menu/MenuLayout;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/termux/floatball/menu/MenuLayout;->mChildSize:I

    iget v3, p0, Lcom/termux/floatball/menu/MenuLayout;->mChildPadding:I

    sget v4, Lcom/termux/floatball/menu/MenuLayout;->MIN_RADIUS:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/termux/floatball/menu/MenuLayout;->computeRadius(FIIII)I

    move-result v0

    iput v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mRadius:I

    .line 135
    const/16 v0, 0xa

    .line 136
    .local v0, "layoutPadding":I
    iget v1, p0, Lcom/termux/floatball/menu/MenuLayout;->mRadius:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/termux/floatball/menu/MenuLayout;->mChildSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/termux/floatball/menu/MenuLayout;->mChildPadding:I

    add-int/2addr v1, v2

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    return v1
.end method

.method private getRadiusAndPadding()I
    .locals 2

    .line 77
    iget v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mRadius:I

    iget v1, p0, Lcom/termux/floatball/menu/MenuLayout;->mChildPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private isLeft()Z
    .locals 2

    .line 160
    iget v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mFromDegrees:F

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 161
    .local v0, "corner":I
    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private layoutItem(I)V
    .locals 12
    .param p1, "radius"    # I

    .line 165
    invoke-virtual {p0}, Lcom/termux/floatball/menu/MenuLayout;->getChildCount()I

    move-result v0

    .line 168
    .local v0, "childCount":I
    iget v1, p0, Lcom/termux/floatball/menu/MenuLayout;->mFromDegrees:F

    .line 169
    .local v1, "degrees":F
    iget v2, p0, Lcom/termux/floatball/menu/MenuLayout;->mToDegrees:F

    iget v3, p0, Lcom/termux/floatball/menu/MenuLayout;->mFromDegrees:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 170
    .local v2, "arcDegrees":F
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 171
    add-int/lit8 v3, v0, 0x1

    int-to-float v3, v3

    div-float v3, v2, v3

    .line 172
    .local v3, "perDegrees":F
    add-float/2addr v1, v3

    goto :goto_1

    .line 173
    .end local v3    # "perDegrees":F
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 174
    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    .line 175
    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    div-float v3, v2, v3

    .restart local v3    # "perDegrees":F
    goto :goto_1

    .line 177
    .end local v3    # "perDegrees":F
    :cond_1
    add-int/lit8 v3, v0, 0x1

    int-to-float v3, v3

    div-float v3, v2, v3

    .line 178
    .restart local v3    # "perDegrees":F
    add-float/2addr v1, v3

    goto :goto_1

    .line 181
    .end local v3    # "perDegrees":F
    :cond_2
    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float v3, v2, v3

    if-nez v3, :cond_3

    int-to-float v3, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    :goto_0
    div-float v3, v2, v3

    .line 183
    .restart local v3    # "perDegrees":F
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_4

    .line 184
    invoke-virtual {p0, v0, v4}, Lcom/termux/floatball/menu/MenuLayout;->getChildDrawingOrder(II)I

    move-result v5

    .line 185
    .local v5, "index":I
    iget v6, p0, Lcom/termux/floatball/menu/MenuLayout;->centerX:I

    iget v7, p0, Lcom/termux/floatball/menu/MenuLayout;->centerY:I

    iget v8, p0, Lcom/termux/floatball/menu/MenuLayout;->mChildSize:I

    invoke-static {v6, v7, p1, v1, v8}, Lcom/termux/floatball/menu/MenuLayout;->computeChildFrame(IIIFI)Landroid/graphics/Rect;

    move-result-object v6

    .line 186
    .local v6, "frame":Landroid/graphics/Rect;
    add-float/2addr v1, v3

    .line 187
    invoke-virtual {p0, v5}, Lcom/termux/floatball/menu/MenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    iget v10, v6, Landroid/graphics/Rect;->right:I

    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 183
    .end local v5    # "index":I
    .end local v6    # "frame":Landroid/graphics/Rect;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 189
    .end local v4    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public computeCenterXY(I)V
    .locals 5
    .param p1, "position"    # I

    .line 32
    invoke-direct {p0}, Lcom/termux/floatball/menu/MenuLayout;->getLayoutSize()I

    move-result v0

    .line 33
    .local v0, "size":I
    move v1, v0

    .line 34
    .local v1, "width":I
    move v2, v0

    .line 35
    .local v2, "height":I
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 65
    :pswitch_0
    div-int/lit8 v3, v1, 0x2

    invoke-direct {p0}, Lcom/termux/floatball/menu/MenuLayout;->getRadiusAndPadding()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerX:I

    .line 66
    div-int/lit8 v3, v2, 0x2

    invoke-direct {p0}, Lcom/termux/floatball/menu/MenuLayout;->getRadiusAndPadding()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerY:I

    .line 67
    goto/16 :goto_0

    .line 53
    :pswitch_1
    div-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerX:I

    .line 54
    div-int/lit8 v3, v2, 0x2

    invoke-direct {p0}, Lcom/termux/floatball/menu/MenuLayout;->getRadiusAndPadding()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerY:I

    .line 55
    goto :goto_0

    .line 45
    :pswitch_2
    div-int/lit8 v3, v1, 0x2

    invoke-direct {p0}, Lcom/termux/floatball/menu/MenuLayout;->getRadiusAndPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerX:I

    .line 46
    div-int/lit8 v3, v2, 0x2

    invoke-direct {p0}, Lcom/termux/floatball/menu/MenuLayout;->getRadiusAndPadding()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerY:I

    .line 47
    goto :goto_0

    .line 61
    :pswitch_3
    div-int/lit8 v3, v1, 0x2

    invoke-direct {p0}, Lcom/termux/floatball/menu/MenuLayout;->getRadiusAndPadding()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerX:I

    .line 62
    div-int/lit8 v3, v2, 0x2

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerY:I

    .line 63
    goto :goto_0

    .line 70
    :pswitch_4
    div-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerX:I

    .line 71
    div-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerY:I

    goto :goto_0

    .line 41
    :pswitch_5
    div-int/lit8 v3, v1, 0x2

    invoke-direct {p0}, Lcom/termux/floatball/menu/MenuLayout;->getRadiusAndPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerX:I

    .line 42
    div-int/lit8 v3, v2, 0x2

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerY:I

    .line 43
    goto :goto_0

    .line 57
    :pswitch_6
    div-int/lit8 v3, v1, 0x2

    invoke-direct {p0}, Lcom/termux/floatball/menu/MenuLayout;->getRadiusAndPadding()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerX:I

    .line 58
    div-int/lit8 v3, v2, 0x2

    invoke-direct {p0}, Lcom/termux/floatball/menu/MenuLayout;->getRadiusAndPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerY:I

    .line 59
    goto :goto_0

    .line 49
    :pswitch_7
    div-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerX:I

    .line 50
    div-int/lit8 v3, v2, 0x2

    invoke-direct {p0}, Lcom/termux/floatball/menu/MenuLayout;->getRadiusAndPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerY:I

    .line 51
    goto :goto_0

    .line 37
    :pswitch_8
    div-int/lit8 v3, v1, 0x2

    invoke-direct {p0}, Lcom/termux/floatball/menu/MenuLayout;->getRadiusAndPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerX:I

    .line 38
    div-int/lit8 v3, v2, 0x2

    invoke-direct {p0}, Lcom/termux/floatball/menu/MenuLayout;->getRadiusAndPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/termux/floatball/menu/MenuLayout;->centerY:I

    .line 39
    nop

    .line 74
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 153
    invoke-direct {p0}, Lcom/termux/floatball/menu/MenuLayout;->isLeft()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    sub-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 156
    :cond_0
    return p2
.end method

.method public getChildSize()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mChildSize:I

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mExpanded:Z

    return v0
.end method

.method public isMoving()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/termux/floatball/menu/MenuLayout;->isMoving:Z

    return v0
.end method

.method public onDone()V
    .locals 1

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/floatball/menu/MenuLayout;->isMoving:Z

    .line 223
    iget-boolean v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mExpanded:Z

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/termux/floatball/menu/MenuLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/termux/floatball/menu/FloatMenu;

    .line 225
    .local v0, "floatMenu":Lcom/termux/floatball/menu/FloatMenu;
    invoke-virtual {v0}, Lcom/termux/floatball/menu/FloatMenu;->remove()V

    .line 227
    .end local v0    # "floatMenu":Lcom/termux/floatball/menu/FloatMenu;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 144
    iget-boolean v0, p0, Lcom/termux/floatball/menu/MenuLayout;->isMoving:Z

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget v0, p0, Lcom/termux/floatball/menu/MenuLayout;->position:I

    invoke-virtual {p0, v0}, Lcom/termux/floatball/menu/MenuLayout;->computeCenterXY(I)V

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "radius":I
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/termux/floatball/menu/MenuLayout;->layoutItem(I)V

    .line 148
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 123
    invoke-direct {p0}, Lcom/termux/floatball/menu/MenuLayout;->getLayoutSize()I

    move-result v0

    .line 124
    .local v0, "size":I
    invoke-virtual {p0, v0, v0}, Lcom/termux/floatball/menu/MenuLayout;->setMeasuredDimension(II)V

    .line 125
    invoke-virtual {p0}, Lcom/termux/floatball/menu/MenuLayout;->getChildCount()I

    move-result v1

    .line 126
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 127
    invoke-virtual {p0, v2}, Lcom/termux/floatball/menu/MenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/termux/floatball/menu/MenuLayout;->mChildSize:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v6, p0, Lcom/termux/floatball/menu/MenuLayout;->mChildSize:I

    .line 128
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 127
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onMove(IIII)V
    .locals 0
    .param p1, "lastX"    # I
    .param p2, "lastY"    # I
    .param p3, "curX"    # I
    .param p4, "curY"    # I

    .line 218
    invoke-direct {p0, p3}, Lcom/termux/floatball/menu/MenuLayout;->layoutItem(I)V

    .line 219
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/termux/floatball/menu/MenuLayout;->isMoving:Z

    if-nez v0, :cond_0

    .line 194
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 196
    :cond_0
    return-void
.end method

.method public setArc(FF)V
    .locals 1
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F

    .line 251
    iget v0, p0, Lcom/termux/floatball/menu/MenuLayout;->position:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/termux/floatball/menu/MenuLayout;->setArc(FFI)V

    .line 252
    return-void
.end method

.method public setArc(FFI)V
    .locals 1
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "position"    # I

    .line 237
    iput p3, p0, Lcom/termux/floatball/menu/MenuLayout;->position:I

    .line 238
    iget v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mFromDegrees:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mToDegrees:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    iput p1, p0, Lcom/termux/floatball/menu/MenuLayout;->mFromDegrees:F

    .line 242
    iput p2, p0, Lcom/termux/floatball/menu/MenuLayout;->mToDegrees:F

    .line 243
    invoke-virtual {p0, p3}, Lcom/termux/floatball/menu/MenuLayout;->computeCenterXY(I)V

    .line 244
    invoke-virtual {p0}, Lcom/termux/floatball/menu/MenuLayout;->requestLayout()V

    .line 245
    return-void
.end method

.method public setChildSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 258
    iput p1, p0, Lcom/termux/floatball/menu/MenuLayout;->mChildSize:I

    .line 259
    return-void
.end method

.method public setExpand(Z)V
    .locals 0
    .param p1, "expand"    # Z

    .line 266
    iput-boolean p1, p0, Lcom/termux/floatball/menu/MenuLayout;->mExpanded:Z

    .line 267
    return-void
.end method

.method public switchState(II)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .line 202
    iput p1, p0, Lcom/termux/floatball/menu/MenuLayout;->position:I

    .line 203
    iget-boolean v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mExpanded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mExpanded:Z

    .line 204
    iput-boolean v1, p0, Lcom/termux/floatball/menu/MenuLayout;->isMoving:Z

    .line 205
    iget v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mToDegrees:F

    iget v1, p0, Lcom/termux/floatball/menu/MenuLayout;->mFromDegrees:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/termux/floatball/menu/MenuLayout;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/termux/floatball/menu/MenuLayout;->mChildSize:I

    iget v3, p0, Lcom/termux/floatball/menu/MenuLayout;->mChildPadding:I

    sget v4, Lcom/termux/floatball/menu/MenuLayout;->MIN_RADIUS:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/termux/floatball/menu/MenuLayout;->computeRadius(FIIII)I

    move-result v0

    iput v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mRadius:I

    .line 207
    iget-boolean v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mRadius:I

    move v2, v0

    .line 208
    .local v2, "start":I
    :goto_0
    iget-boolean v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mExpanded:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mRadius:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/termux/floatball/menu/MenuLayout;->mRadius:I

    neg-int v0, v0

    :goto_1
    move v4, v0

    .line 209
    .local v4, "radius":I
    iget-object v1, p0, Lcom/termux/floatball/menu/MenuLayout;->mRunner:Lcom/termux/floatball/runner/ScrollRunner;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/termux/floatball/runner/ScrollRunner;->start(IIIII)V

    .line 210
    return-void
.end method

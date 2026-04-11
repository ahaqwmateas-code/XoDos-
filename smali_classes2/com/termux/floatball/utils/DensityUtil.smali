.class public Lcom/termux/floatball/utils/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 11
    invoke-static {p0}, Lcom/termux/floatball/utils/DensityUtil;->getScale(Landroid/content/Context;)F

    move-result v0

    .line 12
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static findScale(F)F
    .locals 5
    .param p0, "scale"    # F

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    .line 40
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 41
    :cond_0
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    .line 42
    const/high16 p0, 0x3fc00000    # 1.5f

    goto :goto_0

    .line 43
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    .line 44
    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_0

    .line 45
    :cond_2
    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_3

    .line 46
    const/high16 p0, 0x40400000    # 3.0f

    .line 48
    :cond_3
    :goto_0
    return p0
.end method

.method private static getScale(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 35
    .local v0, "fontScale":F
    invoke-static {v0}, Lcom/termux/floatball/utils/DensityUtil;->findScale(F)F

    move-result v1

    return v1
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .line 19
    invoke-static {p0}, Lcom/termux/floatball/utils/DensityUtil;->getScale(Landroid/content/Context;)F

    move-result v0

    .line 20
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static px2sp(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .line 24
    invoke-static {p0}, Lcom/termux/floatball/utils/DensityUtil;->getScale(Landroid/content/Context;)F

    move-result v0

    .line 25
    .local v0, "fontScale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spValue"    # F

    .line 29
    invoke-static {p0}, Lcom/termux/floatball/utils/DensityUtil;->getScale(Landroid/content/Context;)F

    move-result v0

    .line 30
    .local v0, "fontScale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

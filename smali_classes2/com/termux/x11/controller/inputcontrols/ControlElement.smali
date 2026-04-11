.class public Lcom/termux/x11/controller/inputcontrols/ControlElement;
.super Ljava/lang/Object;
.source "ControlElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;,
        Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;,
        Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    }
.end annotation


# static fields
.field public static final BUTTON_MIN_TIME_TO_KEEP_PRESSED:S = 0x12cs

.field public static final DPAD_DEAD_ZONE:F = 0.3f

.field public static final STICK_DEAD_ZONE:F = 0.15f

.field public static final STICK_SENSITIVITY:F = 3.0f

.field public static final TRACKPAD_ACCELERATION_THRESHOLD:B = 0x4t

.field public static final TRACKPAD_MAX_SPEED:F = 20.0f

.field public static final TRACKPAD_MIN_SPEED:F = 0.8f


# instance fields
.field private backgroundColor:I

.field private bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

.field private final boundingBox:Landroid/graphics/Rect;

.field private boundingBoxNeedsUpdate:Z

.field private cheatCodePressed:Z

.field private cheatCodeText:Ljava/lang/String;

.field private clipIcon:Landroid/graphics/Bitmap;

.field private currentPointerId:I

.field private currentPosition:Landroid/graphics/PointF;

.field private customIconId:Ljava/lang/String;

.field private iconId:B

.field private final inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

.field private interpolator:Lcom/termux/x11/controller/core/CubicBezierInterpolator;

.field private oldBackgroundColor:I

.field private oldCustomIconId:Ljava/lang/String;

.field private orientation:B

.field private range:Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;

.field private scale:F

.field private scroller:Lcom/termux/x11/controller/inputcontrols/RangeScroller;

.field private selected:Z

.field private shape:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

.field private states:[Z

.field private text:Ljava/lang/String;

.field private toggleSwitch:Z

.field private touchTime:Ljava/lang/Object;

.field private type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

.field private x:S

.field private y:S


# direct methods
.method public constructor <init>(Lcom/termux/x11/controller/widget/InputControlsView;)V
    .locals 6
    .param p1, "inputControlsView"    # Lcom/termux/x11/controller/widget/InputControlsView;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    .line 78
    sget-object v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;->CIRCLE:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->shape:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    .line 79
    const/4 v0, 0x4

    new-array v1, v0, [Lcom/termux/x11/controller/inputcontrols/Binding;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v5, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    aput-object v5, v1, v2

    const/4 v2, 0x3

    sget-object v5, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    aput-object v5, v1, v2

    iput-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    .line 80
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    .line 83
    iput-boolean v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    .line 84
    iput-boolean v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->toggleSwitch:Z

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPointerId:I

    .line 86
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    .line 87
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->states:[Z

    .line 88
    iput-boolean v4, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->text:Ljava/lang/String;

    .line 97
    const-string v0, "None"

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->cheatCodeText:Ljava/lang/String;

    .line 98
    iput-boolean v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->cheatCodePressed:Z

    .line 103
    iput v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->oldBackgroundColor:I

    .line 106
    iput-object p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    .line 107
    return-void
.end method

.method private computeBoundingBox()Landroid/graphics/Rect;
    .locals 8

    .line 293
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getSnappingSize()I

    move-result v0

    .line 294
    .local v0, "snappingSize":I
    const/4 v1, 0x0

    .line 295
    .local v1, "halfWidth":I
    const/4 v2, 0x0

    .line 297
    .local v2, "halfHeight":I
    sget-object v3, Lcom/termux/x11/controller/inputcontrols/ControlElement$1;->$SwitchMap$com$termux$x11$controller$inputcontrols$ControlElement$Type:[I

    iget-object v4, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 329
    :pswitch_0
    iget-object v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x2

    mul-int v1, v0, v3

    .line 330
    mul-int/lit8 v2, v0, 0x2

    .line 332
    iget-byte v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->orientation:B

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 333
    move v3, v1

    .line 334
    .local v3, "tmp":I
    move v1, v2

    .line 335
    move v2, v3

    goto :goto_1

    .line 324
    .end local v3    # "tmp":I
    :pswitch_1
    mul-int/lit8 v1, v0, 0x6

    .line 325
    mul-int/lit8 v2, v0, 0x6

    .line 326
    goto :goto_1

    .line 318
    :pswitch_2
    mul-int/lit8 v1, v0, 0x7

    .line 319
    mul-int/lit8 v2, v0, 0x7

    .line 320
    goto :goto_1

    .line 301
    :pswitch_3
    sget-object v3, Lcom/termux/x11/controller/inputcontrols/ControlElement$1;->$SwitchMap$com$termux$x11$controller$inputcontrols$ControlElement$Shape:[I

    iget-object v4, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->shape:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 312
    :pswitch_4
    mul-int/lit8 v1, v0, 0x3

    .line 313
    mul-int/lit8 v2, v0, 0x3

    goto :goto_0

    .line 308
    :pswitch_5
    int-to-float v3, v0

    const/high16 v4, 0x40200000    # 2.5f

    mul-float v3, v3, v4

    float-to-int v1, v3

    .line 309
    int-to-float v3, v0

    mul-float v3, v3, v4

    float-to-int v2, v3

    .line 310
    goto :goto_0

    .line 304
    :pswitch_6
    mul-int/lit8 v1, v0, 0x4

    .line 305
    mul-int/lit8 v2, v0, 0x2

    .line 306
    nop

    .line 316
    :goto_0
    nop

    .line 341
    :cond_0
    :goto_1
    int-to-float v3, v1

    iget v4, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    mul-float v3, v3, v4

    float-to-int v1, v3

    .line 342
    int-to-float v3, v2

    iget v4, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    mul-float v3, v3, v4

    float-to-int v2, v3

    .line 343
    iget-object v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    iget-short v4, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->x:S

    sub-int/2addr v4, v1

    iget-short v5, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->y:S

    sub-int/2addr v5, v2

    iget-short v6, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->x:S

    add-int/2addr v6, v1

    iget-short v7, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->y:S

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 344
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 345
    iget-object v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private drawColorSolidIcon(Landroid/graphics/Canvas;FFFFIZ)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "iconColor"    # I
    .param p7, "isCycle"    # Z

    .line 639
    move-object v0, p0

    move/from16 v1, p6

    iget-object v2, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v2}, Lcom/termux/x11/controller/widget/InputControlsView;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 640
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x0

    .line 641
    .local v3, "icon":Landroid/graphics/Bitmap;
    iget-object v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->clipIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->oldBackgroundColor:I

    if-ne v1, v4, :cond_0

    .line 642
    iget-object v3, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->clipIcon:Landroid/graphics/Bitmap;

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    goto :goto_0

    .line 644
    :cond_0
    invoke-static/range {p6 .. p6}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->toARGB(I)I

    move-result v4

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    invoke-static {v5, v6, v4, v7}, Lcom/termux/x11/controller/widget/InputControlsView;->createShapeBitmap(FFIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 645
    if-nez v3, :cond_1

    .line 646
    return-void

    .line 648
    :cond_1
    iput-object v3, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->clipIcon:Landroid/graphics/Bitmap;

    .line 649
    iput v1, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->oldBackgroundColor:I

    .line 651
    :goto_0
    iget-object v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/termux/x11/controller/widget/InputControlsView;->getSnappingSize()I

    move-result v4

    int-to-float v4, v4

    iget-object v8, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->shape:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    sget-object v9, Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;->CIRCLE:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    if-eq v8, v9, :cond_3

    iget-object v8, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->shape:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    sget-object v9, Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;->SQUARE:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    if-ne v8, v9, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    :goto_1
    const/high16 v8, 0x40000000    # 2.0f

    :goto_2
    mul-float v4, v4, v8

    iget v8, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    mul-float v4, v4, v8

    float-to-int v4, v4

    .line 652
    .local v4, "margin":I
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    int-to-float v9, v4

    sub-float/2addr v8, v9

    const v9, 0x3f333333    # 0.7f

    mul-float v8, v8, v9

    float-to-int v8, v8

    .line 654
    .local v8, "halfSize":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 655
    .local v9, "srcRect":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    int-to-float v11, v8

    sub-float v11, p2, v11

    float-to-int v11, v11

    int-to-float v12, v8

    sub-float v12, p3, v12

    float-to-int v12, v12

    int-to-float v13, v8

    add-float v13, p2, v13

    float-to-int v13, v13

    int-to-float v14, v8

    add-float v14, p3, v14

    float-to-int v14, v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 656
    .local v10, "dstRect":Landroid/graphics/Rect;
    move-object/from16 v11, p1

    invoke-virtual {v11, v3, v9, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 657
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 658
    return-void
.end method

.method private drawCustomIcon(Landroid/graphics/Canvas;FFFFLjava/lang/String;Z)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "iconId"    # Ljava/lang/String;
    .param p7, "isCycle"    # Z

    .line 608
    move-object v0, p0

    move-object/from16 v1, p6

    iget-object v2, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v2}, Lcom/termux/x11/controller/widget/InputControlsView;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 609
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x0

    .line 610
    .local v3, "icon":Landroid/graphics/Bitmap;
    iget-object v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->clipIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->oldCustomIconId:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 611
    iget-object v3, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->clipIcon:Landroid/graphics/Bitmap;

    move/from16 v6, p7

    goto :goto_0

    .line 613
    :cond_0
    iget-object v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v4, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 614
    .local v4, "iconOrigin":Landroid/graphics/Bitmap;
    if-nez v4, :cond_1

    .line 615
    return-void

    .line 617
    :cond_1
    iget-object v5, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    move/from16 v6, p7

    invoke-virtual {v5, v4, v6}, Lcom/termux/x11/controller/widget/InputControlsView;->clipBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 618
    if-nez v3, :cond_2

    .line 619
    return-void

    .line 621
    :cond_2
    iput-object v3, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->clipIcon:Landroid/graphics/Bitmap;

    .line 622
    iput-object v1, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->oldCustomIconId:Ljava/lang/String;

    .line 623
    iget-object v5, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v5, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->counterMapIncrease(Ljava/lang/String;)V

    .line 625
    .end local v4    # "iconOrigin":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/termux/x11/controller/widget/InputControlsView;->getSnappingSize()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->shape:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    sget-object v7, Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;->CIRCLE:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    if-eq v5, v7, :cond_4

    iget-object v5, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->shape:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    sget-object v7, Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;->SQUARE:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    if-ne v5, v7, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    :goto_1
    const/high16 v5, 0x40000000    # 2.0f

    :goto_2
    mul-float v4, v4, v5

    iget v5, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 626
    .local v4, "margin":I
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v7, v4

    sub-float/2addr v5, v7

    const v7, 0x3f333333    # 0.7f

    mul-float v5, v5, v7

    float-to-int v5, v5

    .line 628
    .local v5, "halfSize":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 629
    .local v7, "srcRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    int-to-float v9, v5

    sub-float v9, p2, v9

    float-to-int v9, v9

    int-to-float v10, v5

    sub-float v10, p3, v10

    float-to-int v10, v10

    int-to-float v11, v5

    add-float/2addr v11, p2

    float-to-int v11, v11

    int-to-float v12, v5

    add-float v12, p3, v12

    float-to-int v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 630
    .local v8, "dstRect":Landroid/graphics/Rect;
    move-object v9, p1

    invoke-virtual {p1, v3, v7, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 631
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 632
    return-void
.end method

.method private drawIcon(Landroid/graphics/Canvas;FFFFI)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "iconId"    # I

    .line 593
    move-object v0, p0

    iget-object v1, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/termux/x11/controller/widget/InputControlsView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 594
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 596
    .local v2, "icon":Landroid/graphics/Bitmap;
    iget-object v3, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    move/from16 v4, p6

    int-to-byte v5, v4

    invoke-virtual {v3, v5}, Lcom/termux/x11/controller/widget/InputControlsView;->getIcon(B)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 597
    iget-object v3, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v3}, Lcom/termux/x11/controller/widget/InputControlsView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 598
    iget-object v3, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v3}, Lcom/termux/x11/controller/widget/InputControlsView;->getSnappingSize()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->shape:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    sget-object v6, Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;->CIRCLE:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    if-eq v5, v6, :cond_1

    iget-object v5, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->shape:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    sget-object v6, Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;->SQUARE:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v5, 0x40000000    # 2.0f

    :goto_1
    mul-float v3, v3, v5

    iget v5, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    .line 599
    .local v3, "margin":I
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v6, v3

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 601
    .local v5, "halfSize":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 602
    .local v6, "srcRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    int-to-float v8, v5

    sub-float v8, p2, v8

    float-to-int v8, v8

    int-to-float v9, v5

    sub-float v9, p3, v9

    float-to-int v9, v9

    int-to-float v10, v5

    add-float/2addr v10, p2

    float-to-int v10, v10

    int-to-float v11, v5

    add-float/2addr v11, p3

    float-to-int v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 603
    .local v7, "dstRect":Landroid/graphics/Rect;
    move-object v8, p1

    invoke-virtual {p1, v2, v6, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 604
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 605
    return-void
.end method

.method private getDisplayText()Ljava/lang/String;
    .locals 10

    .line 349
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->text:Ljava/lang/String;

    return-object v0

    .line 352
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v1

    .line 353
    .local v1, "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/Binding;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NUMPAD "

    const-string v4, "NP"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUTTON "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x7

    if-le v3, v5, :cond_3

    .line 355
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "parts":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v5, "sb":Ljava/lang/StringBuilder;
    array-length v6, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v3, v7

    .local v8, "part":Ljava/lang/String;
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v8    # "part":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 358
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/Binding;->isMouse()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "M"

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 359
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    return-object v2
.end method

.method private static getRangeTextForIndex(Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;I)Ljava/lang/String;
    .locals 3
    .param p0, "range"    # Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    .param p1, "index"    # I

    .line 370
    const-string v0, ""

    .line 371
    .local v0, "text":Ljava/lang/String;
    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$1;->$SwitchMap$com$termux$x11$controller$inputcontrols$ControlElement$Range:[I

    invoke-virtual {p0}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 382
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 379
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    goto :goto_0

    .line 376
    :pswitch_2
    add-int/lit8 v1, p1, 0x1

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 377
    goto :goto_0

    .line 373
    :pswitch_3
    add-int/lit8 v1, p1, 0x41

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 374
    nop

    .line 385
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTextSizeForWidth(Landroid/graphics/Paint;Ljava/lang/String;F)F
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "desiredWidth"    # F

    .line 364
    const/16 v0, 0x30

    .line 365
    .local v0, "testTextSize":B
    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 366
    mul-float v1, v1, p2

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v1, v2

    return v1
.end method

.method private isKeepButtonPressedAfterMinTime()Z
    .locals 3

    .line 701
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v1

    .line 702
    .local v1, "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    iget-boolean v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->toggleSwitch:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_BUTTON_L3:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_BUTTON_R3:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private reset()V
    .locals 7

    .line 110
    sget-object v0, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setBinding(Lcom/termux/x11/controller/inputcontrols/Binding;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scroller:Lcom/termux/x11/controller/inputcontrols/RangeScroller;

    .line 113
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->D_PAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->STICK:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v1, v2, :cond_1

    .line 119
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_UP:Lcom/termux/x11/controller/inputcontrols/Binding;

    aput-object v2, v1, v6

    .line 120
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_RIGHT:Lcom/termux/x11/controller/inputcontrols/Binding;

    aput-object v2, v1, v5

    .line 121
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_DOWN:Lcom/termux/x11/controller/inputcontrols/Binding;

    aput-object v2, v1, v4

    .line 122
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_LEFT:Lcom/termux/x11/controller/inputcontrols/Binding;

    aput-object v2, v1, v3

    goto :goto_1

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v1, v2, :cond_3

    .line 124
    new-instance v1, Lcom/termux/x11/controller/inputcontrols/RangeScroller;

    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-direct {v1, v2, p0}, Lcom/termux/x11/controller/inputcontrols/RangeScroller;-><init>(Lcom/termux/x11/controller/widget/InputControlsView;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V

    iput-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scroller:Lcom/termux/x11/controller/inputcontrols/RangeScroller;

    goto :goto_1

    .line 114
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/Binding;->KEY_W:Lcom/termux/x11/controller/inputcontrols/Binding;

    aput-object v2, v1, v6

    .line 115
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/Binding;->KEY_D:Lcom/termux/x11/controller/inputcontrols/Binding;

    aput-object v2, v1, v5

    .line 116
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/Binding;->KEY_S:Lcom/termux/x11/controller/inputcontrols/Binding;

    aput-object v2, v1, v4

    .line 117
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/Binding;->KEY_A:Lcom/termux/x11/controller/inputcontrols/Binding;

    aput-object v2, v1, v3

    .line 127
    :cond_3
    :goto_1
    const-string v1, ""

    iput-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->text:Ljava/lang/String;

    .line 128
    iput-byte v6, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->iconId:B

    .line 129
    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->range:Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;

    .line 130
    iput-boolean v5, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 131
    return-void
.end method

.method public static toARGB(I)I
    .locals 4
    .param p0, "rgb"    # I

    .line 635
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public containsPoint(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 697
    invoke-virtual {p0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v2, p1, v1

    float-to-int v2, v2

    add-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 389
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getSnappingSize()I

    move-result v10

    .line 390
    .local v10, "snappingSize":I
    iget-object v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getPaint()Landroid/graphics/Paint;

    move-result-object v11

    .line 391
    .local v11, "paint":Landroid/graphics/Paint;
    iget-object v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getPrimaryColor()I

    move-result v12

    .line 393
    .local v12, "primaryColor":I
    iget-boolean v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getSecondaryColor()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 395
    int-to-float v0, v10

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v13, v0, v1

    .line 396
    .local v13, "strokeWidth":F
    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v14

    .line 399
    .local v14, "boundingBox":Landroid/graphics/Rect;
    sget-object v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$1;->$SwitchMap$com$termux$x11$controller$inputcontrols$ControlElement$Type:[I

    iget-object v1, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v15, 0x0

    const/high16 v16, 0x40000000    # 2.0f

    const/16 v17, 0x1

    const/high16 v18, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    .line 481
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getRange()Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;

    move-result-object v7

    .line 482
    .local v7, "range":Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    invoke-virtual {v11}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 483
    .local v6, "oldColor":I
    int-to-float v0, v10

    mul-float v0, v0, v1

    iget v1, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    mul-float v27, v0, v1

    .line 484
    .local v27, "radius":F
    iget-object v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scroller:Lcom/termux/x11/controller/inputcontrols/RangeScroller;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/RangeScroller;->getElementSize()F

    move-result v28

    .line 485
    .local v28, "elementSize":F
    mul-int/lit8 v0, v10, 0x2

    int-to-float v0, v0

    iget v1, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    mul-float v5, v0, v1

    .line 486
    .local v5, "minTextSize":F
    iget-object v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scroller:Lcom/termux/x11/controller/inputcontrols/RangeScroller;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/RangeScroller;->getScrollOffset()F

    move-result v29

    .line 487
    .local v29, "scrollOffset":F
    iget-object v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scroller:Lcom/termux/x11/controller/inputcontrols/RangeScroller;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/RangeScroller;->getRangeIndex()[B

    move-result-object v30

    .line 488
    .local v30, "rangeIndex":[B
    iget-object v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getPath()Landroid/graphics/Path;

    move-result-object v4

    .line 489
    .local v4, "path":Landroid/graphics/Path;
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 491
    iget-byte v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->orientation:B

    if-nez v0, :cond_4

    .line 492
    iget v0, v14, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float v1, v13, v18

    add-float v31, v0, v1

    .line 493
    .local v31, "lineTop":F
    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float v1, v13, v18

    sub-float v32, v0, v1

    .line 494
    .local v32, "lineBottom":F
    iget v0, v14, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    .line 495
    .local v3, "startX":F
    iget v0, v14, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v14, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v20, v1

    move v1, v3

    move/from16 v33, v3

    .end local v3    # "startX":F
    .local v33, "startX":F
    move/from16 v3, v20

    move-object/from16 v34, v4

    .end local v4    # "path":Landroid/graphics/Path;
    .local v34, "path":Landroid/graphics/Path;
    move/from16 v4, v19

    move/from16 v35, v5

    .end local v5    # "minTextSize":F
    .local v35, "minTextSize":F
    move/from16 v5, v27

    move/from16 v36, v6

    .end local v6    # "oldColor":I
    .local v36, "oldColor":I
    move/from16 v6, v27

    move-object/from16 v37, v7

    .end local v7    # "range":Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    .local v37, "range":Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 497
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 498
    iget v0, v14, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, v14, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sget-object v26, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v19, v34

    move/from16 v20, v33

    move/from16 v21, v0

    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v27

    move/from16 v25, v27

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 499
    move-object/from16 v7, v34

    .end local v34    # "path":Landroid/graphics/Path;
    .local v7, "path":Landroid/graphics/Path;
    invoke-virtual {v9, v7}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 500
    rem-float v0, v29, v28

    sub-float v3, v33, v0

    .line 502
    .end local v33    # "startX":F
    .restart local v3    # "startX":F
    aget-byte v0, v30, v15

    move v6, v0

    move v15, v3

    .end local v3    # "startX":F
    .local v6, "i":B
    .local v15, "startX":F
    :goto_1
    aget-byte v0, v30, v17

    if-ge v6, v0, :cond_3

    .line 503
    move-object/from16 v5, v37

    .end local v37    # "range":Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    .local v5, "range":Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    iget-byte v0, v5, Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;->max:B

    rem-int v4, v6, v0

    .line 504
    .local v4, "index":I
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 505
    move/from16 v3, v36

    .end local v36    # "oldColor":I
    .local v3, "oldColor":I
    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 507
    iget v0, v14, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, v15, v0

    if-lez v0, :cond_1

    iget v0, v14, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float v0, v15, v0

    if-gez v0, :cond_1

    .line 508
    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v31

    move/from16 v33, v10

    move v10, v3

    .end local v3    # "oldColor":I
    .local v10, "oldColor":I
    .local v33, "snappingSize":I
    move v3, v15

    move-object/from16 v34, v7

    move v7, v4

    .end local v4    # "index":I
    .local v7, "index":I
    .restart local v34    # "path":Landroid/graphics/Path;
    move/from16 v4, v32

    move/from16 v36, v10

    move-object v10, v5

    .end local v5    # "range":Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    .local v10, "range":Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    .restart local v36    # "oldColor":I
    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 507
    .end local v33    # "snappingSize":I
    .end local v34    # "path":Landroid/graphics/Path;
    .end local v36    # "oldColor":I
    .restart local v3    # "oldColor":I
    .restart local v4    # "index":I
    .restart local v5    # "range":Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    .local v7, "path":Landroid/graphics/Path;
    .local v10, "snappingSize":I
    :cond_1
    move/from16 v36, v3

    move-object/from16 v34, v7

    move/from16 v33, v10

    move v7, v4

    move-object v10, v5

    .line 509
    .end local v3    # "oldColor":I
    .end local v4    # "index":I
    .end local v5    # "range":Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    .local v7, "index":I
    .local v10, "range":Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    .restart local v33    # "snappingSize":I
    .restart local v34    # "path":Landroid/graphics/Path;
    .restart local v36    # "oldColor":I
    :goto_2
    invoke-static {v10, v7}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getRangeTextForIndex(Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;I)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "text":Ljava/lang/String;
    iget v1, v14, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v1, v15, v1

    if-gez v1, :cond_2

    add-float v1, v15, v28

    iget v2, v14, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 512
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 513
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 514
    mul-float v1, v13, v16

    sub-float v1, v28, v1

    invoke-static {v11, v0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getTextSizeForWidth(Landroid/graphics/Paint;Ljava/lang/String;F)F

    move-result v1

    move/from16 v5, v35

    .end local v35    # "minTextSize":F
    .local v5, "minTextSize":F
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 515
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 516
    mul-float v1, v28, v18

    add-float/2addr v1, v15

    iget-short v2, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->y:S

    int-to-float v2, v2

    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    mul-float v3, v3, v18

    sub-float/2addr v2, v3

    invoke-virtual {v9, v0, v1, v2, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 511
    .end local v5    # "minTextSize":F
    .restart local v35    # "minTextSize":F
    :cond_2
    move/from16 v5, v35

    .line 518
    .end local v35    # "minTextSize":F
    .restart local v5    # "minTextSize":F
    :goto_3
    add-float v15, v15, v28

    .line 502
    .end local v0    # "text":Ljava/lang/String;
    .end local v7    # "index":I
    add-int/lit8 v0, v6, 0x1

    int-to-byte v6, v0

    move/from16 v35, v5

    move-object/from16 v37, v10

    move/from16 v10, v33

    move-object/from16 v7, v34

    goto/16 :goto_1

    .end local v5    # "minTextSize":F
    .end local v33    # "snappingSize":I
    .end local v34    # "path":Landroid/graphics/Path;
    .local v7, "path":Landroid/graphics/Path;
    .local v10, "snappingSize":I
    .restart local v35    # "minTextSize":F
    .restart local v37    # "range":Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    :cond_3
    move-object/from16 v34, v7

    move/from16 v33, v10

    move/from16 v5, v35

    move-object/from16 v10, v37

    .line 521
    .end local v6    # "i":B
    .end local v7    # "path":Landroid/graphics/Path;
    .end local v35    # "minTextSize":F
    .end local v37    # "range":Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    .restart local v5    # "minTextSize":F
    .local v10, "range":Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    .restart local v33    # "snappingSize":I
    .restart local v34    # "path":Landroid/graphics/Path;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 522
    move/from16 v7, v36

    .end local v36    # "oldColor":I
    .local v7, "oldColor":I
    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 524
    .end local v15    # "startX":F
    .end local v31    # "lineTop":F
    .end local v32    # "lineBottom":F
    move/from16 v10, v33

    goto/16 :goto_b

    .line 525
    .end local v33    # "snappingSize":I
    .end local v34    # "path":Landroid/graphics/Path;
    .local v4, "path":Landroid/graphics/Path;
    .local v6, "oldColor":I
    .local v7, "range":Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    .local v10, "snappingSize":I
    :cond_4
    move-object/from16 v34, v4

    move/from16 v33, v10

    move-object v10, v7

    move v7, v6

    .end local v4    # "path":Landroid/graphics/Path;
    .end local v6    # "oldColor":I
    .local v7, "oldColor":I
    .local v10, "range":Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    .restart local v33    # "snappingSize":I
    .restart local v34    # "path":Landroid/graphics/Path;
    iget v0, v14, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float v1, v13, v18

    add-float v31, v0, v1

    .line 526
    .local v31, "lineLeft":F
    iget v0, v14, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float v1, v13, v18

    sub-float v32, v0, v1

    .line 527
    .local v32, "lineRight":F
    iget v0, v14, Landroid/graphics/Rect;->top:I

    int-to-float v6, v0

    .line 528
    .local v6, "startY":F
    iget v0, v14, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v14, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object/from16 v0, p1

    move v2, v6

    move/from16 v38, v5

    .end local v5    # "minTextSize":F
    .local v38, "minTextSize":F
    move/from16 v5, v27

    move/from16 v35, v6

    .end local v6    # "startY":F
    .local v35, "startY":F
    move/from16 v6, v27

    move/from16 v39, v7

    .end local v7    # "oldColor":I
    .local v39, "oldColor":I
    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 530
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 531
    iget v0, v14, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v14, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sget-object v26, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v19, v34

    move/from16 v20, v0

    move/from16 v21, v35

    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v27

    move/from16 v25, v27

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 532
    iget-object v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 533
    rem-float v0, v29, v28

    sub-float v6, v35, v0

    .line 535
    .end local v35    # "startY":F
    .restart local v6    # "startY":F
    aget-byte v0, v30, v15

    move v7, v6

    move v6, v0

    .local v6, "i":B
    .local v7, "startY":F
    :goto_4
    aget-byte v0, v30, v17

    if-ge v6, v0, :cond_7

    .line 536
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 537
    move/from16 v15, v39

    .end local v39    # "oldColor":I
    .local v15, "oldColor":I
    invoke-virtual {v11, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 539
    iget v0, v14, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_5

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_5

    .line 540
    move-object/from16 v0, p1

    move/from16 v1, v31

    move v2, v7

    move/from16 v3, v32

    move v4, v7

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 541
    :cond_5
    invoke-static {v10, v6}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getRangeTextForIndex(Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;I)Ljava/lang/String;

    move-result-object v0

    .line 543
    .restart local v0    # "text":Ljava/lang/String;
    iget v1, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v1, v7, v1

    if-gez v1, :cond_6

    add-float v1, v7, v28

    iget v2, v14, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 544
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 545
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 546
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v13, v16

    sub-float/2addr v1, v2

    invoke-static {v11, v0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getTextSizeForWidth(Landroid/graphics/Paint;Ljava/lang/String;F)F

    move-result v1

    move/from16 v2, v38

    .end local v38    # "minTextSize":F
    .local v2, "minTextSize":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 547
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 548
    iget-short v1, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->x:S

    int-to-float v1, v1

    mul-float v3, v28, v18

    add-float/2addr v3, v7

    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    mul-float v4, v4, v18

    sub-float/2addr v3, v4

    invoke-virtual {v9, v0, v1, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 543
    .end local v2    # "minTextSize":F
    .restart local v38    # "minTextSize":F
    :cond_6
    move/from16 v2, v38

    .line 550
    .end local v38    # "minTextSize":F
    .restart local v2    # "minTextSize":F
    :goto_5
    add-float v7, v7, v28

    .line 535
    .end local v0    # "text":Ljava/lang/String;
    add-int/lit8 v0, v6, 0x1

    int-to-byte v6, v0

    move/from16 v38, v2

    move/from16 v39, v15

    goto :goto_4

    .end local v2    # "minTextSize":F
    .end local v15    # "oldColor":I
    .restart local v38    # "minTextSize":F
    .restart local v39    # "oldColor":I
    :cond_7
    move/from16 v2, v38

    move/from16 v15, v39

    .line 553
    .end local v6    # "i":B
    .end local v38    # "minTextSize":F
    .end local v39    # "oldColor":I
    .restart local v2    # "minTextSize":F
    .restart local v15    # "oldColor":I
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 554
    invoke-virtual {v11, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 555
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 557
    .end local v7    # "startY":F
    .end local v31    # "lineLeft":F
    .end local v32    # "lineRight":F
    move/from16 v10, v33

    goto/16 :goto_b

    .line 560
    .end local v2    # "minTextSize":F
    .end local v15    # "oldColor":I
    .end local v27    # "radius":F
    .end local v28    # "elementSize":F
    .end local v29    # "scrollOffset":F
    .end local v30    # "rangeIndex":[B
    .end local v33    # "snappingSize":I
    .end local v34    # "path":Landroid/graphics/Path;
    .local v10, "snappingSize":I
    :pswitch_1
    move/from16 v33, v10

    .end local v10    # "snappingSize":I
    .restart local v33    # "snappingSize":I
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 561
    .local v0, "cx":I
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 562
    .local v1, "cy":I
    invoke-virtual {v11}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 563
    .local v2, "oldColor":I
    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v18

    invoke-virtual {v9, v3, v4, v5, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 565
    iget-object v3, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-eqz v3, :cond_8

    iget-object v3, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    goto :goto_6

    :cond_8
    int-to-float v3, v0

    .line 566
    .local v3, "thumbstickX":F
    :goto_6
    iget-object v4, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-eqz v4, :cond_9

    iget-object v4, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    goto :goto_7

    :cond_9
    int-to-float v4, v1

    .line 568
    .local v4, "thumbstickY":F
    :goto_7
    move/from16 v10, v33

    .end local v33    # "snappingSize":I
    .restart local v10    # "snappingSize":I
    int-to-float v5, v10

    const/high16 v6, 0x40600000    # 3.5f

    mul-float v5, v5, v6

    iget v6, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-short v5, v5

    .line 569
    .local v5, "thumbRadius":S
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 570
    const/16 v6, 0x32

    invoke-static {v12, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 571
    int-to-float v6, v5

    invoke-virtual {v9, v3, v4, v6, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 573
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 574
    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 575
    int-to-float v6, v5

    mul-float v18, v18, v13

    add-float v6, v6, v18

    invoke-virtual {v9, v3, v4, v6, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 576
    goto/16 :goto_b

    .line 579
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    .end local v2    # "oldColor":I
    .end local v3    # "thumbstickX":F
    .end local v4    # "thumbstickY":F
    .end local v5    # "thumbRadius":S
    :pswitch_2
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e19999a    # 0.15f

    mul-float v15, v0, v1

    .line 580
    .local v15, "radius":F
    iget v0, v14, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v14, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object/from16 v0, p1

    move v5, v15

    move v6, v15

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 581
    const/high16 v0, 0x40200000    # 2.5f

    mul-float v17, v13, v0

    .line 582
    .local v17, "offset":F
    mul-float v7, v13, v16

    .line 583
    .local v7, "innerStrokeWidth":F
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v16, v16, v17

    sub-float v16, v0, v16

    .line 584
    .local v16, "innerHeight":F
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v16, v0

    mul-float v0, v0, v15

    mul-float v1, v7, v18

    mul-float v18, v18, v13

    add-float v1, v1, v18

    sub-float v15, v0, v1

    .line 585
    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 586
    iget v0, v14, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float v1, v0, v17

    iget v0, v14, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v2, v0, v17

    iget v0, v14, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float v3, v0, v17

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float v4, v0, v17

    move-object/from16 v0, p1

    move v5, v15

    move v6, v15

    move/from16 v18, v7

    .end local v7    # "innerStrokeWidth":F
    .local v18, "innerStrokeWidth":F
    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 587
    goto/16 :goto_b

    .line 441
    .end local v15    # "radius":F
    .end local v16    # "innerHeight":F
    .end local v17    # "offset":F
    .end local v18    # "innerStrokeWidth":F
    :pswitch_3
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    .line 442
    .local v0, "cx":F
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 443
    .local v1, "cy":F
    mul-int/lit8 v2, v10, 0x2

    int-to-float v2, v2

    iget v3, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    mul-float v2, v2, v3

    .line 444
    .local v2, "offsetX":F
    mul-int/lit8 v3, v10, 0x3

    int-to-float v3, v3

    iget v4, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    mul-float v3, v3, v4

    .line 445
    .local v3, "offsetY":F
    int-to-float v4, v10

    iget v5, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    mul-float v4, v4, v5

    .line 446
    .local v4, "start":F
    iget-object v5, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v5}, Lcom/termux/x11/controller/widget/InputControlsView;->getPath()Landroid/graphics/Path;

    move-result-object v5

    .line 447
    .local v5, "path":Landroid/graphics/Path;
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 449
    sub-float v6, v1, v4

    invoke-virtual {v5, v0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 450
    sub-float v6, v0, v2

    sub-float v7, v1, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 451
    sub-float v6, v0, v2

    iget v7, v14, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 452
    add-float v6, v0, v2

    iget v7, v14, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 453
    add-float v6, v0, v2

    sub-float v7, v1, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 454
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 456
    sub-float v6, v0, v4

    invoke-virtual {v5, v6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 457
    sub-float v6, v0, v3

    sub-float v7, v1, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 458
    iget v6, v14, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float v7, v1, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 459
    iget v6, v14, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float v7, v1, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 460
    sub-float v6, v0, v3

    add-float v7, v1, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 461
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 463
    add-float v6, v1, v4

    invoke-virtual {v5, v0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 464
    sub-float v6, v0, v2

    add-float v7, v1, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 465
    sub-float v6, v0, v2

    iget v7, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 466
    add-float v6, v0, v2

    iget v7, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 467
    add-float v6, v0, v2

    add-float v7, v1, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 468
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 470
    add-float v6, v0, v4

    invoke-virtual {v5, v6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 471
    add-float v6, v0, v3

    sub-float v7, v1, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 472
    iget v6, v14, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float v7, v1, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 473
    iget v6, v14, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    add-float v7, v1, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 474
    add-float v6, v0, v3

    add-float v7, v1, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 475
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 477
    invoke-virtual {v9, v5, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 478
    goto/16 :goto_b

    .line 403
    .end local v0    # "cx":F
    .end local v1    # "cy":F
    .end local v2    # "offsetX":F
    .end local v3    # "offsetY":F
    .end local v4    # "start":F
    .end local v5    # "path":Landroid/graphics/Path;
    :pswitch_4
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v7, v0

    .line 404
    .local v7, "cx":F
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v6, v0

    .line 406
    .local v6, "cy":F
    sget-object v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$1;->$SwitchMap$com$termux$x11$controller$inputcontrols$ControlElement$Shape:[I

    iget-object v2, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->shape:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    invoke-virtual {v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    move/from16 v20, v6

    move/from16 v21, v7

    .end local v6    # "cy":F
    .end local v7    # "cx":F
    .local v20, "cy":F
    .local v21, "cx":F
    goto :goto_8

    .line 408
    .end local v20    # "cy":F
    .end local v21    # "cx":F
    .restart local v6    # "cy":F
    .restart local v7    # "cx":F
    :pswitch_5
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v18

    invoke-virtual {v9, v7, v6, v0, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 409
    move/from16 v20, v6

    move/from16 v21, v7

    goto :goto_8

    .line 419
    :pswitch_6
    int-to-float v0, v10

    mul-float v0, v0, v1

    iget v1, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    mul-float v19, v0, v1

    .line 420
    .local v19, "radius":F
    iget v0, v14, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v14, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object/from16 v0, p1

    move/from16 v5, v19

    move/from16 v20, v6

    .end local v6    # "cy":F
    .restart local v20    # "cy":F
    move/from16 v6, v19

    move/from16 v21, v7

    .end local v7    # "cx":F
    .restart local v21    # "cx":F
    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 421
    goto :goto_8

    .line 414
    .end local v19    # "radius":F
    .end local v20    # "cy":F
    .end local v21    # "cx":F
    .restart local v6    # "cy":F
    .restart local v7    # "cx":F
    :pswitch_7
    move/from16 v20, v6

    move/from16 v21, v7

    .end local v6    # "cy":F
    .end local v7    # "cx":F
    .restart local v20    # "cy":F
    .restart local v21    # "cx":F
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v19, v0, v18

    .line 415
    .restart local v19    # "radius":F
    iget v0, v14, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v14, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object/from16 v0, p1

    move/from16 v5, v19

    move/from16 v6, v19

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 416
    goto :goto_8

    .line 411
    .end local v19    # "radius":F
    .end local v20    # "cy":F
    .end local v21    # "cx":F
    .restart local v6    # "cy":F
    .restart local v7    # "cx":F
    :pswitch_8
    move/from16 v20, v6

    move/from16 v21, v7

    .end local v6    # "cy":F
    .end local v7    # "cx":F
    .restart local v20    # "cy":F
    .restart local v21    # "cx":F
    invoke-virtual {v9, v14, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 412
    nop

    .line 424
    :goto_8
    iget-object v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->customIconId:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->customIconId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 425
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->customIconId:Ljava/lang/String;

    iget-object v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->shape:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;->CIRCLE:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    if-ne v0, v1, :cond_a

    const/4 v7, 0x1

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-direct/range {v0 .. v7}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->drawCustomIcon(Landroid/graphics/Canvas;FFFFLjava/lang/String;Z)V

    goto/16 :goto_b

    .line 426
    :cond_b
    iget v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->backgroundColor:I

    if-lez v0, :cond_d

    .line 427
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v5, v0

    iget v6, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->backgroundColor:I

    iget-object v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->shape:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;->CIRCLE:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    if-ne v0, v1, :cond_c

    const/4 v7, 0x1

    goto :goto_a

    :cond_c
    const/4 v7, 0x0

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-direct/range {v0 .. v7}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->drawColorSolidIcon(Landroid/graphics/Canvas;FFFFIZ)V

    goto :goto_b

    .line 428
    :cond_d
    iget-byte v0, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->iconId:B

    if-lez v0, :cond_e

    .line 429
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v5, v0

    iget-byte v6, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->iconId:B

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-direct/range {v0 .. v6}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->drawIcon(Landroid/graphics/Canvas;FFFFI)V

    goto :goto_b

    .line 431
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v16, v16, v13

    sub-float v1, v1, v16

    invoke-static {v11, v0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getTextSizeForWidth(Landroid/graphics/Paint;Ljava/lang/String;F)F

    move-result v1

    mul-int/lit8 v2, v10, 0x2

    int-to-float v2, v2

    iget v3, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 433
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 434
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 435
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    iget-short v1, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->x:S

    int-to-float v1, v1

    iget-short v2, v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;->y:S

    int-to-float v2, v2

    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    mul-float v3, v3, v18

    sub-float/2addr v2, v3

    invoke-virtual {v9, v0, v1, v2, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 438
    .end local v0    # "text":Ljava/lang/String;
    nop

    .line 590
    .end local v20    # "cy":F
    .end local v21    # "cx":F
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->backgroundColor:I

    return v0
.end method

.method public getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;
    .locals 1
    .param p1, "index"    # I

    .line 188
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    :goto_0
    return-object v0
.end method

.method public getBindingCount()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    array-length v0, v0

    return v0
.end method

.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->computeBoundingBox()Landroid/graphics/Rect;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->boundingBox:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCheatCodeText()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->cheatCodeText:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomIconId()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->customIconId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()B
    .locals 1

    .line 250
    iget-byte v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->iconId:B

    return v0
.end method

.method public getOrientation()B
    .locals 1

    .line 171
    iget-byte v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->orientation:B

    return v0
.end method

.method public getRange()Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->range:Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->range:Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;->FROM_A_TO_Z:Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;

    :goto_0
    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 207
    iget v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    return v0
.end method

.method public getShape()Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->shape:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    return-object v0
.end method

.method public getX()S
    .locals 1

    .line 216
    iget-short v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->x:S

    return v0
.end method

.method public getY()S
    .locals 1

    .line 225
    iget-short v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->y:S

    return v0
.end method

.method public handleTouchDown(IFF)Z
    .locals 4
    .param p1, "pointerId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 706
    iget v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPointerId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, p2, p3}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->containsPoint(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 707
    iput p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPointerId:I

    .line 708
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->CHEAT_CODE_TEXT:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 709
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->cheatCodePressed:Z

    if-nez v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {p0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getCheatCodeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->sendText(Ljava/lang/String;)V

    .line 711
    iput-boolean v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->cheatCodePressed:Z

    .line 713
    :cond_0
    return v3

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->COMBINE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_6

    .line 715
    invoke-direct {p0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->isKeepButtonPressedAfterMinTime()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    .line 716
    :cond_2
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->toggleSwitch:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    if-nez v0, :cond_5

    .line 717
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->states:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 718
    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v1

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-eq v1, v2, :cond_4

    .line 719
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;Z)V

    .line 717
    :cond_4
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    .line 723
    .end local v0    # "i":B
    :cond_5
    return v3

    .line 724
    :cond_6
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_a

    .line 725
    invoke-direct {p0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->isKeepButtonPressedAfterMinTime()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    .line 726
    :cond_7
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->toggleSwitch:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    if-nez v0, :cond_9

    .line 727
    :cond_8
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;Z)V

    .line 728
    :cond_9
    return v3

    .line 729
    :cond_a
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_b

    .line 730
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scroller:Lcom/termux/x11/controller/inputcontrols/RangeScroller;

    invoke-virtual {v0, p2, p3}, Lcom/termux/x11/controller/inputcontrols/RangeScroller;->handleTouchDown(FF)V

    .line 731
    return v3

    .line 733
    :cond_b
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_d

    .line 734
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_c

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    .line 735
    :cond_c
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 737
    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->handleTouchMove(IFF)Z

    move-result v0

    return v0

    .line 739
    :cond_e
    return v2
.end method

.method public handleTouchMove(IFF)Z
    .locals 21
    .param p1, "pointerId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 743
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPointerId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v4, :cond_2d

    iget-object v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v7, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->D_PAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-eq v4, v7, :cond_0

    iget-object v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v7, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->STICK:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-eq v4, v7, :cond_0

    iget-object v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v7, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v4, v7, :cond_2d

    .line 745
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v4

    .line 746
    .local v4, "boundingBox":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v7, v7, v8

    .line 748
    .local v7, "radius":F
    iget-object v8, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v9, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v8, v9, :cond_2

    .line 749
    iget-object v8, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-nez v8, :cond_1

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    iput-object v8, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    .line 750
    :cond_1
    iget-object v8, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v8}, Lcom/termux/x11/controller/widget/InputControlsView;->getTouchpadView()Lcom/termux/x11/controller/widget/TouchpadView;

    move-result-object v8

    iget-object v9, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget-object v12, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v12, v2, v3}, Lcom/termux/x11/controller/widget/TouchpadView;->computeDeltaPoint(FFFF)[F

    move-result-object v8

    .line 751
    .local v8, "deltaPoint":[F
    aget v9, v8, v5

    .line 752
    .local v9, "deltaX":F
    aget v12, v8, v6

    .line 753
    .local v12, "deltaY":F
    iget-object v13, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    invoke-virtual {v13, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 754
    .end local v8    # "deltaPoint":[F
    goto :goto_1

    .line 755
    .end local v9    # "deltaX":F
    .end local v12    # "deltaY":F
    :cond_2
    iget v8, v4, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float v8, v2, v8

    .line 756
    .local v8, "localX":F
    iget v9, v4, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v9, v3, v9

    .line 757
    .local v9, "localY":F
    sub-float v12, v8, v7

    .line 758
    .local v12, "offsetX":F
    sub-float v13, v9, v7

    .line 760
    .local v13, "offsetY":F
    sub-float v14, v7, v8

    sub-float v15, v7, v9

    invoke-static {v14, v15}, Lcom/termux/x11/controller/math/Mathf;->lengthSq(FF)F

    move-result v14

    .line 761
    .local v14, "distance":F
    mul-float v15, v7, v7

    cmpl-float v15, v14, v15

    if-lez v15, :cond_3

    .line 762
    float-to-double v5, v13

    float-to-double v10, v12

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 763
    .local v5, "angle":F
    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    move v6, v8

    move/from16 v17, v9

    .end local v8    # "localX":F
    .end local v9    # "localY":F
    .local v6, "localX":F
    .local v17, "localY":F
    float-to-double v8, v7

    mul-double v10, v10, v8

    double-to-float v12, v10

    .line 764
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    float-to-double v10, v7

    mul-double v8, v8, v10

    double-to-float v13, v8

    goto :goto_0

    .line 761
    .end local v5    # "angle":F
    .end local v6    # "localX":F
    .end local v17    # "localY":F
    .restart local v8    # "localX":F
    .restart local v9    # "localY":F
    :cond_3
    move v6, v8

    move/from16 v17, v9

    .line 767
    .end local v8    # "localX":F
    .end local v9    # "localY":F
    .restart local v6    # "localX":F
    .restart local v17    # "localY":F
    :goto_0
    div-float v5, v12, v7

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v5, v8, v9}, Lcom/termux/x11/controller/math/Mathf;->clamp(FFF)F

    move-result v5

    .line 768
    .local v5, "deltaX":F
    div-float v10, v13, v7

    invoke-static {v10, v8, v9}, Lcom/termux/x11/controller/math/Mathf;->clamp(FFF)F

    move-result v10

    move v9, v5

    move v12, v10

    .line 771
    .end local v5    # "deltaX":F
    .end local v6    # "localX":F
    .end local v13    # "offsetY":F
    .end local v14    # "distance":F
    .end local v17    # "localY":F
    .local v9, "deltaX":F
    .local v12, "deltaY":F
    :goto_1
    iget-object v5, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v6, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->STICK:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v13, 0x4

    if-ne v5, v6, :cond_10

    .line 772
    iget-object v5, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-nez v5, :cond_4

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iput-object v5, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    .line 773
    :cond_4
    iget-object v5, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float v14, v9, v7

    add-float/2addr v6, v14

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 774
    iget-object v5, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    mul-float v14, v12, v7

    add-float/2addr v6, v14

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/PointF;->y:F

    .line 775
    const v5, -0x41e66666    # -0.15f

    cmpg-float v6, v12, v5

    if-gtz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    const v14, 0x3e19999a    # 0.15f

    cmpl-float v17, v9, v14

    if-ltz v17, :cond_6

    const/16 v17, 0x1

    goto :goto_3

    :cond_6
    const/16 v17, 0x0

    :goto_3
    cmpl-float v14, v12, v14

    if-ltz v14, :cond_7

    const/4 v14, 0x1

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    :goto_4
    cmpg-float v5, v9, v5

    if-gtz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    new-array v15, v13, [Z

    const/16 v18, 0x0

    aput-boolean v6, v15, v18

    const/4 v6, 0x1

    aput-boolean v17, v15, v6

    aput-boolean v14, v15, v10

    aput-boolean v5, v15, v11

    move-object v5, v15

    .line 777
    .local v5, "states":[Z
    const/4 v10, 0x0

    .local v10, "i":B
    :goto_6
    if-ge v10, v13, :cond_f

    .line 778
    if-eq v10, v6, :cond_a

    if-ne v10, v11, :cond_9

    goto :goto_7

    :cond_9
    move v6, v12

    goto :goto_8

    :cond_a
    :goto_7
    move v6, v9

    .line 779
    .local v6, "value":F
    :goto_8
    invoke-virtual {v0, v10}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v14

    .line 780
    .local v14, "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    invoke-virtual {v14}, Lcom/termux/x11/controller/inputcontrols/Binding;->isGamepad()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 781
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const v17, 0x3c23d70a    # 0.01f

    sub-float v15, v15, v17

    const/4 v11, 0x0

    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v6}, Lcom/termux/x11/controller/math/Mathf;->sign(F)B

    move-result v15

    int-to-float v15, v15

    mul-float v11, v11, v15

    mul-float v11, v11, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v15, -0x40800000    # -1.0f

    invoke-static {v11, v15, v8}, Lcom/termux/x11/controller/math/Mathf;->clamp(FFF)F

    move-result v6

    .line 782
    iget-object v8, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    const/4 v11, 0x1

    invoke-virtual {v8, v14, v11, v6}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;ZF)V

    .line 783
    iget-object v8, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->states:[Z

    aput-boolean v11, v8, v10

    goto :goto_b

    .line 785
    :cond_b
    invoke-virtual {v14}, Lcom/termux/x11/controller/inputcontrols/Binding;->isMouseMove()Z

    move-result v8

    if-eqz v8, :cond_e

    aget-boolean v8, v5, v10

    if-nez v8, :cond_d

    add-int/lit8 v8, v10, 0x2

    rem-int/2addr v8, v13

    aget-boolean v8, v5, v8

    if-eqz v8, :cond_c

    goto :goto_9

    :cond_c
    const/4 v15, 0x0

    goto :goto_a

    :cond_d
    :goto_9
    const/4 v15, 0x1

    goto :goto_a

    :cond_e
    aget-boolean v15, v5, v10

    :goto_a
    move v8, v15

    .line 786
    .local v8, "state":Z
    iget-object v11, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v11, v14, v8, v6}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;ZF)V

    .line 787
    iget-object v11, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->states:[Z

    aput-boolean v8, v11, v10

    .line 777
    .end local v6    # "value":F
    .end local v8    # "state":Z
    .end local v14    # "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    :goto_b
    add-int/lit8 v6, v10, 0x1

    int-to-byte v10, v6

    const/4 v6, 0x1

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v11, 0x3

    goto :goto_6

    .line 791
    .end local v10    # "i":B
    :cond_f
    iget-object v6, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v6}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    .line 792
    .end local v5    # "states":[Z
    move-object/from16 v19, v4

    move/from16 v20, v7

    goto/16 :goto_20

    :cond_10
    iget-object v5, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v6, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v5, v6, :cond_22

    .line 793
    const v5, -0x40b33333    # -0.8f

    cmpg-float v6, v12, v5

    if-gtz v6, :cond_11

    const/4 v15, 0x1

    goto :goto_c

    :cond_11
    const/4 v15, 0x0

    :goto_c
    const v6, 0x3f4ccccd    # 0.8f

    cmpl-float v8, v9, v6

    if-ltz v8, :cond_12

    const/4 v8, 0x1

    goto :goto_d

    :cond_12
    const/4 v8, 0x0

    :goto_d
    cmpl-float v6, v12, v6

    if-ltz v6, :cond_13

    const/4 v6, 0x1

    goto :goto_e

    :cond_13
    const/4 v6, 0x0

    :goto_e
    cmpg-float v5, v9, v5

    if-gtz v5, :cond_14

    const/4 v5, 0x1

    goto :goto_f

    :cond_14
    const/4 v5, 0x0

    :goto_f
    new-array v11, v13, [Z

    const/4 v14, 0x0

    aput-boolean v15, v11, v14

    const/4 v14, 0x1

    aput-boolean v8, v11, v14

    aput-boolean v6, v11, v10

    const/4 v6, 0x3

    aput-boolean v5, v11, v6

    move-object v5, v11

    .line 794
    .restart local v5    # "states":[Z
    const/4 v6, 0x0

    .line 795
    .local v6, "cursorDx":I
    const/4 v8, 0x0

    .line 797
    .local v8, "cursorDy":I
    const/4 v10, 0x0

    .restart local v10    # "i":B
    :goto_10
    if-ge v10, v13, :cond_1f

    .line 798
    const/4 v11, 0x1

    if-eq v10, v11, :cond_16

    const/4 v11, 0x3

    if-ne v10, v11, :cond_15

    goto :goto_11

    :cond_15
    move v11, v12

    goto :goto_12

    :cond_16
    :goto_11
    move v11, v9

    .line 799
    .local v11, "value":F
    :goto_12
    invoke-virtual {v0, v10}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v14

    .line 800
    .restart local v14    # "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    invoke-virtual {v14}, Lcom/termux/x11/controller/inputcontrols/Binding;->isGamepad()Z

    move-result v15

    if-eqz v15, :cond_19

    .line 801
    iget-object v15, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->interpolator:Lcom/termux/x11/controller/core/CubicBezierInterpolator;

    if-nez v15, :cond_17

    new-instance v15, Lcom/termux/x11/controller/core/CubicBezierInterpolator;

    invoke-direct {v15}, Lcom/termux/x11/controller/core/CubicBezierInterpolator;-><init>()V

    iput-object v15, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->interpolator:Lcom/termux/x11/controller/core/CubicBezierInterpolator;

    .line 802
    :cond_17
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v18, 0x40800000    # 4.0f

    cmpl-float v15, v15, v18

    if-lez v15, :cond_18

    .line 803
    const/high16 v15, 0x40400000    # 3.0f

    mul-float v11, v11, v15

    goto :goto_13

    .line 802
    :cond_18
    const/high16 v15, 0x40400000    # 3.0f

    .line 804
    :goto_13
    iget-object v15, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->interpolator:Lcom/termux/x11/controller/core/CubicBezierInterpolator;

    const v13, 0x3d99999a    # 0.075f

    move-object/from16 v19, v4

    .end local v4    # "boundingBox":Landroid/graphics/Rect;
    .local v19, "boundingBox":Landroid/graphics/Rect;
    const v4, 0x3ee66666    # 0.45f

    move/from16 v20, v7

    .end local v7    # "radius":F
    .local v20, "radius":F
    const v7, 0x3f733333    # 0.95f

    invoke-virtual {v15, v13, v7, v4, v7}, Lcom/termux/x11/controller/core/CubicBezierInterpolator;->set(FFFF)V

    .line 805
    iget-object v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->interpolator:Lcom/termux/x11/controller/core/CubicBezierInterpolator;

    const/high16 v7, 0x41a00000    # 20.0f

    div-float v7, v11, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v4, v7}, Lcom/termux/x11/controller/core/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    .line 806
    .local v4, "interpolatedValue":F
    iget-object v7, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-static {v11}, Lcom/termux/x11/controller/math/Mathf;->sign(F)B

    move-result v15

    int-to-float v15, v15

    mul-float v15, v15, v4

    move/from16 v16, v4

    const/high16 v4, -0x40800000    # -1.0f

    .end local v4    # "interpolatedValue":F
    .local v16, "interpolatedValue":F
    invoke-static {v15, v4, v13}, Lcom/termux/x11/controller/math/Mathf;->clamp(FFF)F

    move-result v15

    const/4 v4, 0x1

    invoke-virtual {v7, v14, v4, v15}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;ZF)V

    .line 807
    iget-object v7, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->states:[Z

    aput-boolean v4, v7, v10

    .line 808
    .end local v16    # "interpolatedValue":F
    goto :goto_16

    .line 809
    .end local v19    # "boundingBox":Landroid/graphics/Rect;
    .end local v20    # "radius":F
    .local v4, "boundingBox":Landroid/graphics/Rect;
    .restart local v7    # "radius":F
    :cond_19
    move-object/from16 v19, v4

    move/from16 v20, v7

    const/high16 v13, 0x3f800000    # 1.0f

    .end local v4    # "boundingBox":Landroid/graphics/Rect;
    .end local v7    # "radius":F
    .restart local v19    # "boundingBox":Landroid/graphics/Rect;
    .restart local v20    # "radius":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v7, 0x40c00000    # 6.0f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1a

    .line 810
    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float v11, v11, v4

    .line 811
    :cond_1a
    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_LEFT:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-eq v14, v4, :cond_1e

    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_RIGHT:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-ne v14, v4, :cond_1b

    goto :goto_15

    .line 813
    :cond_1b
    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_UP:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-eq v14, v4, :cond_1d

    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_DOWN:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-ne v14, v4, :cond_1c

    goto :goto_14

    .line 816
    :cond_1c
    iget-object v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    aget-boolean v7, v5, v10

    invoke-virtual {v4, v14, v7, v11}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;ZF)V

    .line 817
    iget-object v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->states:[Z

    aget-boolean v7, v5, v10

    aput-boolean v7, v4, v10

    goto :goto_16

    .line 814
    :cond_1d
    :goto_14
    invoke-static {v11}, Lcom/termux/x11/controller/math/Mathf;->roundPoint(F)I

    move-result v4

    move v8, v4

    .end local v8    # "cursorDy":I
    .local v4, "cursorDy":I
    goto :goto_16

    .line 812
    .end local v4    # "cursorDy":I
    .restart local v8    # "cursorDy":I
    :cond_1e
    :goto_15
    invoke-static {v11}, Lcom/termux/x11/controller/math/Mathf;->roundPoint(F)I

    move-result v4

    move v6, v4

    .line 797
    .end local v11    # "value":F
    .end local v14    # "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    :goto_16
    add-int/lit8 v4, v10, 0x1

    int-to-byte v10, v4

    move-object/from16 v4, v19

    move/from16 v7, v20

    const/4 v13, 0x4

    goto/16 :goto_10

    .end local v19    # "boundingBox":Landroid/graphics/Rect;
    .end local v20    # "radius":F
    .local v4, "boundingBox":Landroid/graphics/Rect;
    .restart local v7    # "radius":F
    :cond_1f
    move-object/from16 v19, v4

    move/from16 v20, v7

    .line 822
    .end local v4    # "boundingBox":Landroid/graphics/Rect;
    .end local v7    # "radius":F
    .end local v10    # "i":B
    .restart local v19    # "boundingBox":Landroid/graphics/Rect;
    .restart local v20    # "radius":F
    if-nez v6, :cond_20

    if-eqz v8, :cond_21

    .line 823
    :cond_20
    iget-object v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/termux/x11/controller/widget/InputControlsView;->getXServer()Lcom/termux/x11/LorieView;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Lcom/termux/x11/LorieView;->injectPointerMoveDelta(II)V

    .line 824
    .end local v5    # "states":[Z
    .end local v6    # "cursorDx":I
    .end local v8    # "cursorDy":I
    :cond_21
    goto/16 :goto_20

    .line 825
    .end local v19    # "boundingBox":Landroid/graphics/Rect;
    .end local v20    # "radius":F
    .restart local v4    # "boundingBox":Landroid/graphics/Rect;
    .restart local v7    # "radius":F
    :cond_22
    move-object/from16 v19, v4

    move/from16 v20, v7

    .end local v4    # "boundingBox":Landroid/graphics/Rect;
    .end local v7    # "radius":F
    .restart local v19    # "boundingBox":Landroid/graphics/Rect;
    .restart local v20    # "radius":F
    const v4, -0x41666666    # -0.3f

    cmpg-float v5, v12, v4

    if-gtz v5, :cond_23

    const/4 v5, 0x1

    goto :goto_17

    :cond_23
    const/4 v5, 0x0

    :goto_17
    const v6, 0x3e99999a    # 0.3f

    cmpl-float v7, v9, v6

    if-ltz v7, :cond_24

    const/4 v7, 0x1

    goto :goto_18

    :cond_24
    const/4 v7, 0x0

    :goto_18
    cmpl-float v6, v12, v6

    if-ltz v6, :cond_25

    const/4 v6, 0x1

    goto :goto_19

    :cond_25
    const/4 v6, 0x0

    :goto_19
    cmpg-float v4, v9, v4

    if-gtz v4, :cond_26

    const/4 v4, 0x1

    goto :goto_1a

    :cond_26
    const/4 v4, 0x0

    :goto_1a
    const/4 v8, 0x4

    new-array v11, v8, [Z

    const/4 v13, 0x0

    aput-boolean v5, v11, v13

    const/4 v5, 0x1

    aput-boolean v7, v11, v5

    aput-boolean v6, v11, v10

    const/4 v6, 0x3

    aput-boolean v4, v11, v6

    move-object v4, v11

    .line 827
    .local v4, "states":[Z
    const/4 v7, 0x0

    .local v7, "i":B
    :goto_1b
    if-ge v7, v8, :cond_2c

    .line 828
    if-eq v7, v5, :cond_28

    if-ne v7, v6, :cond_27

    goto :goto_1c

    :cond_27
    move v5, v12

    goto :goto_1d

    :cond_28
    :goto_1c
    move v5, v9

    .line 829
    .local v5, "value":F
    :goto_1d
    invoke-virtual {v0, v7}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v8

    .line 830
    .local v8, "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    invoke-virtual {v8}, Lcom/termux/x11/controller/inputcontrols/Binding;->isMouseMove()Z

    move-result v10

    if-eqz v10, :cond_2b

    aget-boolean v10, v4, v7

    if-nez v10, :cond_2a

    add-int/lit8 v10, v7, 0x2

    const/4 v11, 0x4

    rem-int/2addr v10, v11

    aget-boolean v10, v4, v10

    if-eqz v10, :cond_29

    goto :goto_1e

    :cond_29
    const/4 v10, 0x0

    goto :goto_1f

    :cond_2a
    const/4 v11, 0x4

    :goto_1e
    const/4 v10, 0x1

    goto :goto_1f

    :cond_2b
    const/4 v11, 0x4

    aget-boolean v10, v4, v7

    .line 831
    .local v10, "state":Z
    :goto_1f
    iget-object v13, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v13, v8, v10, v5}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;ZF)V

    .line 832
    iget-object v13, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->states:[Z

    aput-boolean v10, v13, v7

    .line 827
    .end local v5    # "value":F
    .end local v8    # "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    .end local v10    # "state":Z
    add-int/lit8 v5, v7, 0x1

    int-to-byte v7, v5

    const/4 v5, 0x1

    const/4 v8, 0x4

    goto :goto_1b

    .line 836
    .end local v4    # "states":[Z
    .end local v7    # "i":B
    :cond_2c
    :goto_20
    const/4 v4, 0x1

    return v4

    .line 837
    .end local v9    # "deltaX":F
    .end local v12    # "deltaY":F
    .end local v19    # "boundingBox":Landroid/graphics/Rect;
    .end local v20    # "radius":F
    :cond_2d
    iget v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPointerId:I

    if-ne v1, v4, :cond_2e

    iget-object v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v5, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v4, v5, :cond_2e

    .line 838
    iget-object v4, v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scroller:Lcom/termux/x11/controller/inputcontrols/RangeScroller;

    invoke-virtual {v4, v2, v3}, Lcom/termux/x11/controller/inputcontrols/RangeScroller;->handleTouchMove(FF)V

    .line 839
    const/4 v4, 0x1

    return v4

    .line 840
    :cond_2e
    const/4 v4, 0x0

    return v4
.end method

.method public handleTouchUp(IFF)Z
    .locals 11
    .param p1, "pointerId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 844
    iget v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPointerId:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_16

    .line 845
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->CHEAT_CODE_TEXT:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 846
    iput-boolean v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->cheatCodePressed:Z

    goto/16 :goto_a

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->COMBINE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const-wide/16 v4, 0x12c

    const/4 v6, 0x0

    if-ne v0, v2, :cond_8

    .line 848
    invoke-direct {p0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->isKeepButtonPressedAfterMinTime()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 849
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v0, v7, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    .line 850
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    if-nez v0, :cond_3

    .line 851
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->states:[Z

    array-length v0, v0

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    .local v0, "i":B
    :goto_1
    if-ltz v0, :cond_3

    .line 852
    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v2

    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-eq v2, v4, :cond_2

    .line 853
    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;Z)V

    .line 851
    :cond_2
    add-int/lit8 v2, v0, -0x1

    int-to-byte v0, v2

    goto :goto_1

    .line 857
    .end local v0    # "i":B
    :cond_3
    iput-object v6, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    .line 858
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    goto :goto_3

    .line 859
    :cond_4
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->toggleSwitch:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    if-eqz v0, :cond_7

    .line 860
    :cond_5
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->states:[Z

    array-length v0, v0

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    .restart local v0    # "i":B
    :goto_2
    if-ltz v0, :cond_7

    .line 861
    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v2

    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-eq v2, v4, :cond_6

    .line 862
    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;Z)V

    .line 860
    :cond_6
    add-int/lit8 v2, v0, -0x1

    int-to-byte v0, v2

    goto :goto_2

    .line 867
    .end local v0    # "i":B
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->toggleSwitch:Z

    if-eqz v0, :cond_15

    .line 868
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    .line 869
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    goto/16 :goto_a

    .line 871
    :cond_8
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v0, v2, :cond_e

    .line 872
    invoke-virtual {p0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v0

    .line 873
    .local v0, "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    invoke-direct {p0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->isKeepButtonPressedAfterMinTime()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    if-eqz v2, :cond_b

    .line 874
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v2, v7, v4

    if-lez v2, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    .line 875
    iget-boolean v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v2, v0, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;Z)V

    .line 876
    :cond_a
    iput-object v6, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->touchTime:Ljava/lang/Object;

    .line 877
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    goto :goto_5

    .line 878
    :cond_b
    iget-boolean v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->toggleSwitch:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    if-eqz v2, :cond_d

    .line 879
    :cond_c
    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v2, v0, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;Z)V

    .line 881
    :cond_d
    :goto_5
    iget-boolean v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->toggleSwitch:Z

    if-eqz v1, :cond_f

    .line 882
    iget-boolean v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    xor-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    .line 883
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    goto :goto_6

    .line 885
    .end local v0    # "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    :cond_e
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-eq v0, v2, :cond_10

    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->D_PAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-eq v0, v2, :cond_10

    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->STICK:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-eq v0, v2, :cond_10

    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v0, v2, :cond_f

    goto :goto_7

    :cond_f
    :goto_6
    goto :goto_a

    .line 886
    :cond_10
    :goto_7
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_8
    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->states:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_12

    .line 887
    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->states:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;Z)V

    .line 888
    :cond_11
    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->states:[Z

    aput-boolean v1, v2, v0

    .line 886
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_8

    .line 891
    .end local v0    # "i":B
    :cond_12
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_13

    .line 892
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scroller:Lcom/termux/x11/controller/inputcontrols/RangeScroller;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/RangeScroller;->handleTouchUp()V

    goto :goto_9

    .line 893
    :cond_13
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->STICK:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_14

    .line 894
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    .line 897
    :cond_14
    :goto_9
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    if-eqz v0, :cond_15

    iput-object v6, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPosition:Landroid/graphics/PointF;

    .line 899
    :cond_15
    :goto_a
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->currentPointerId:I

    .line 900
    return v3

    .line 902
    :cond_16
    return v1
.end method

.method public isSelected()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    return v0
.end method

.method public isToggleSwitch()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->toggleSwitch:Z

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 277
    iput p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->backgroundColor:I

    .line 278
    iget v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->oldBackgroundColor:I

    if-gtz v0, :cond_0

    .line 279
    iput p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->oldBackgroundColor:I

    .line 281
    :cond_0
    return-void
.end method

.method public setBinding(Lcom/termux/x11/controller/inputcontrols/Binding;)V
    .locals 1
    .param p1, "binding"    # Lcom/termux/x11/controller/inputcontrols/Binding;

    .line 203
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public setBindingAt(ILcom/termux/x11/controller/inputcontrols/Binding;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "binding"    # Lcom/termux/x11/controller/inputcontrols/Binding;

    .line 192
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    array-length v0, v0

    .line 194
    .local v0, "oldLength":I
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/termux/x11/controller/inputcontrols/Binding;

    iput-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    .line 195
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    array-length v3, v3

    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->states:[Z

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 199
    .end local v0    # "oldLength":I
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    aput-object p2, v0, p1

    .line 200
    return-void
.end method

.method public setBindingCount(I)V
    .locals 1
    .param p1, "bindingCount"    # I

    .line 147
    new-array v0, p1, [Lcom/termux/x11/controller/inputcontrols/Binding;

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    .line 148
    sget-object v0, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setBinding(Lcom/termux/x11/controller/inputcontrols/Binding;)V

    .line 149
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->states:[Z

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 151
    return-void
.end method

.method public setCheatCodeText(Ljava/lang/String;)V
    .locals 0
    .param p1, "cct"    # Ljava/lang/String;

    .line 262
    iput-object p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->cheatCodeText:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setCustomIconId(Ljava/lang/String;)V
    .locals 1
    .param p1, "icId"    # Ljava/lang/String;

    .line 266
    iput-object p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->customIconId:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->oldCustomIconId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 268
    iput-object p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->oldCustomIconId:Ljava/lang/String;

    .line 270
    :cond_0
    return-void
.end method

.method public setIconId(I)V
    .locals 1
    .param p1, "iconId"    # I

    .line 254
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->iconId:B

    .line 255
    return-void
.end method

.method public setOrientation(B)V
    .locals 1
    .param p1, "orientation"    # B

    .line 175
    iput-byte p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->orientation:B

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 177
    return-void
.end method

.method public setRange(Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;)V
    .locals 0
    .param p1, "range"    # Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;

    .line 167
    iput-object p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->range:Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;

    .line 168
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 211
    iput p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 213
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 238
    iput-boolean p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->selected:Z

    .line 239
    return-void
.end method

.method public setShape(Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;)V
    .locals 1
    .param p1, "shape"    # Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    .line 158
    iput-object p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->shape:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 160
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 246
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->text:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setToggleSwitch(Z)V
    .locals 0
    .param p1, "toggleSwitch"    # Z

    .line 184
    iput-boolean p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->toggleSwitch:Z

    .line 185
    return-void
.end method

.method public setType(Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    .line 138
    iput-object p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    .line 139
    invoke-direct {p0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->reset()V

    .line 140
    return-void
.end method

.method public setX(I)V
    .locals 1
    .param p1, "x"    # I

    .line 220
    int-to-short v0, p1

    iput-short v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->x:S

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 222
    return-void
.end method

.method public setY(I)V
    .locals 1
    .param p1, "y"    # I

    .line 229
    int-to-short v0, p1

    iput-short v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->y:S

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->boundingBoxNeedsUpdate:Z

    .line 231
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 7

    .line 662
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 663
    .local v0, "elementJSONObject":Lorg/json/JSONObject;
    const-string v1, "type"

    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    invoke-virtual {v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    const-string v1, "shape"

    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->shape:Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    invoke-virtual {v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 666
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 667
    .local v1, "bindingsJSONArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->bindings:[Lcom/termux/x11/controller/inputcontrols/Binding;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .local v5, "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    invoke-virtual {v5}, Lcom/termux/x11/controller/inputcontrols/Binding;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .end local v5    # "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 669
    :cond_0
    const-string v2, "bindings"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 670
    const-string v2, "scale"

    iget v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->scale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    const-string v2, "x"

    iget-short v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->x:S

    int-to-float v3, v3

    iget-object v4, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/termux/x11/controller/widget/InputControlsView;->getMaxWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 672
    const-string v2, "y"

    iget-short v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->y:S

    int-to-float v3, v3

    iget-object v4, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v4}, Lcom/termux/x11/controller/widget/InputControlsView;->getMaxHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 673
    const-string v2, "toggleSwitch"

    iget-boolean v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->toggleSwitch:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 674
    const-string v2, "text"

    iget-object v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->text:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 675
    const-string v2, "iconId"

    iget-byte v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->iconId:B

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 676
    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->cheatCodeText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 677
    const-string v2, "cheatCodeText"

    iget-object v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->cheatCodeText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 679
    :cond_1
    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->customIconId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->customIconId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 680
    const-string v2, "customIconId"

    iget-object v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->customIconId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    :cond_2
    iget v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->backgroundColor:I

    if-lez v2, :cond_3

    .line 683
    const-string v2, "backgroundColor"

    iget v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->backgroundColor:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 686
    :cond_3
    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->type:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v3, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->range:Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;

    if-eqz v2, :cond_4

    .line 687
    const-string v2, "range"

    iget-object v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->range:Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;

    invoke-virtual {v3}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    iget-byte v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->orientation:B

    if-eqz v2, :cond_4

    const-string v2, "orientation"

    iget-byte v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlElement;->orientation:B

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :cond_4
    return-object v0

    .line 691
    .end local v0    # "elementJSONObject":Lorg/json/JSONObject;
    .end local v1    # "bindingsJSONArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

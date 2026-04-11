.class Lcom/termux/x11/input/TouchInputHandler$StylusListener;
.super Ljava/lang/Object;
.source "TouchInputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/input/TouchInputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusListener"
.end annotation


# instance fields
.field private buttons:I

.field private orientation:F

.field private pressure:F

.field final synthetic this$0:Lcom/termux/x11/input/TouchInputHandler;

.field private tilt:F

.field private x:F

.field private y:F


# direct methods
.method private constructor <init>(Lcom/termux/x11/input/TouchInputHandler;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 916
    const/4 p1, 0x0

    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->x:F

    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->y:F

    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->pressure:F

    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->tilt:F

    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->orientation:F

    .line 917
    const/4 p1, 0x0

    iput p1, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->buttons:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/termux/x11/input/TouchInputHandler;Lcom/termux/x11/input/TouchInputHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p2, "x1"    # Lcom/termux/x11/input/TouchInputHandler$1;

    .line 915
    invoke-direct {p0, p1}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-void
.end method

.method private convertOrientation(F)I
    .locals 4
    .param p1, "value"    # F

    .line 920
    const/high16 v0, 0x43340000    # 180.0f

    mul-float v0, v0, p1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    double-to-int v0, v0

    .line 921
    .local v0, "newValue":I
    const/16 v1, 0xb4

    if-le v0, v1, :cond_0

    .line 922
    add-int/lit16 v1, v0, -0x168

    rem-int/lit16 v0, v1, 0x168

    .line 923
    :cond_0
    return v0
.end method

.method private hasButton(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "button"    # I

    .line 927
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method extractButtons(Landroid/view/MotionEvent;)I
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 931
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v0}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v0

    iget-boolean v0, v0, Lcom/termux/x11/input/InputEventSender;->stylusButtonContactModifierMode:Z

    const/16 v1, 0x20

    const/16 v2, 0x40

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 932
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 933
    invoke-direct {p0, p1, v2}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->hasButton(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    const/4 v0, 0x2

    return v0

    .line 935
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->hasButton(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 936
    const/4 v0, 0x4

    return v0

    .line 938
    :cond_1
    sget v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    return v0

    .line 939
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 941
    :cond_3
    const/4 v0, 0x0

    .line 942
    .local v0, "buttons":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_4

    .line 943
    sget v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    .line 944
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->hasButton(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 945
    or-int/lit8 v0, v0, 0x2

    .line 946
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->hasButton(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 947
    or-int/lit8 v0, v0, 0x4

    .line 949
    :cond_6
    return v0
.end method

.method onTouch(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 955
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 956
    .local v2, "action":I
    const/4 v3, 0x0

    .local v3, "tiltX":I
    const/4 v4, 0x0

    .line 957
    .local v4, "tiltY":I
    invoke-virtual/range {p0 .. p1}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->extractButtons(Landroid/view/MotionEvent;)I

    move-result v15

    .line 958
    .local v15, "newButtons":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .local v5, "newX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 959
    .local v6, "newY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v14

    .line 960
    .local v14, "dev":Landroid/view/InputDevice;
    const/4 v7, 0x0

    invoke-virtual {v14, v7}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v16

    .line 961
    .local v16, "rangeX":Landroid/view/InputDevice$MotionRange;
    const/4 v13, 0x1

    invoke-virtual {v14, v13}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v17

    .line 962
    .local v17, "rangeY":Landroid/view/InputDevice$MotionRange;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v8

    const/16 v9, 0x19

    invoke-virtual {v8, v9}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    move/from16 v18, v8

    .line 963
    .local v18, "hasTilt":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v8

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    move/from16 v19, v8

    .line 965
    .local v19, "hasOrientation":Z
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/termux/x11/LorieView;->hasPointerCapture()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 966
    invoke-static {v14}, Lcom/termux/x11/input/TouchInputHandler;->isExternal(Landroid/view/InputDevice;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v16, :cond_2

    if-eqz v17, :cond_2

    .line 967
    iget-object v8, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v8}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v8

    iget v8, v8, Lcom/termux/x11/input/RenderData;->imageWidth:I

    int-to-float v8, v8

    invoke-virtual/range {v16 .. v16}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v11

    div-float/2addr v8, v11

    mul-float v5, v5, v8

    .line 968
    iget-object v8, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v8}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v8

    iget v8, v8, Lcom/termux/x11/input/RenderData;->imageHeight:I

    int-to-float v8, v8

    invoke-virtual/range {v17 .. v17}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v11

    div-float/2addr v8, v11

    mul-float v6, v6, v8

    move v12, v5

    move v11, v6

    goto :goto_2

    .line 970
    :cond_2
    iget-object v8, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v8}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v8

    iget-object v8, v8, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float v5, v5, v8

    .line 971
    iget-object v8, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v8}, Lcom/termux/x11/input/TouchInputHandler;->access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;

    move-result-object v8

    iget-object v8, v8, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float v6, v6, v8

    move v12, v5

    move v11, v6

    .line 974
    .end local v5    # "newX":F
    .end local v6    # "newY":F
    .local v11, "newY":F
    .local v12, "newX":F
    :goto_2
    iget v5, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->x:F

    cmpl-float v5, v5, v12

    if-nez v5, :cond_3

    iget v5, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->y:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_3

    iget v5, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->pressure:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    iget v5, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->tilt:F

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    iget v5, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->orientation:F

    .line 975
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    iget v5, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->buttons:I

    if-ne v5, v15, :cond_3

    .line 976
    return v13

    .line 978
    :cond_3
    if-eqz v18, :cond_4

    if-eqz v19, :cond_4

    .line 979
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    iput v5, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->orientation:F

    .line 980
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    iput v5, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->tilt:F

    .line 981
    iget v5, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->orientation:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    neg-double v5, v5

    iget v8, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->tilt:F

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v5, v5

    const-wide v7, 0x404fc00000000000L    # 63.5

    mul-double v5, v5, v7

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    sub-double v5, v5, v21

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v3, v5

    .line 982
    iget v5, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->orientation:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget v13, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->tilt:F

    float-to-double v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v5, v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v5, v5

    mul-double v5, v5, v7

    sub-double v5, v5, v21

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v4, v5

    .line 985
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " y "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pressure "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tilt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x19

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " buttonState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " extractedButtons "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "STYLUS_EVENT"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v5, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v5}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v5

    iput v12, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->x:F

    iput v11, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->y:F

    .line 989
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    iput v6, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->pressure:F

    const v7, 0x477fff00    # 65535.0f

    mul-float v6, v6, v7

    float-to-int v8, v6

    iget v6, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->orientation:F

    .line 992
    invoke-direct {v0, v6}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->convertOrientation(F)I

    move-result v13

    iput v15, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->buttons:I

    .line 994
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    const/16 v20, 0x1

    goto :goto_3

    :cond_5
    const/16 v20, 0x0

    :goto_3
    iget-object v6, v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    .line 995
    invoke-static {v6}, Lcom/termux/x11/input/TouchInputHandler;->access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;

    move-result-object v6

    iget-boolean v10, v6, Lcom/termux/x11/input/InputEventSender;->stylusIsMouse:Z

    .line 986
    move v6, v12

    move v7, v11

    move v9, v3

    move/from16 v21, v10

    move v10, v4

    move/from16 v22, v11

    .end local v11    # "newY":F
    .local v22, "newY":F
    move v11, v13

    move/from16 v24, v12

    .end local v12    # "newX":F
    .local v24, "newX":F
    move v12, v15

    const/16 v23, 0x1

    move/from16 v13, v20

    move-object/from16 v20, v14

    .end local v14    # "dev":Landroid/view/InputDevice;
    .local v20, "dev":Landroid/view/InputDevice;
    move/from16 v14, v21

    invoke-virtual/range {v5 .. v14}, Lcom/termux/x11/input/InputEventSender;->sendStylusEvent(FFIIIIIZZ)V

    .line 997
    return v23
.end method

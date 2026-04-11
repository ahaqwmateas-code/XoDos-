.class public Lcom/termux/x11/controller/widget/InputControlsView;
.super Landroid/view/View;
.source "InputControlsView.java"


# static fields
.field public static final CURSOR_ACCELERATION:F = 1.25f

.field public static final CURSOR_ACCELERATION_THRESHOLD:B = 0x6t

.field public static final DEFAULT_OVERLAY_OPACITY:F = 0.4f

.field public static final MAX_TAP_MILLISECONDS:S = 0xc8s

.field public static final MAX_TAP_TRAVEL_DISTANCE:B = 0xat


# instance fields
.field private final colorFilter:Landroid/graphics/ColorFilter;

.field private counterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final cursor:Landroid/graphics/Point;

.field private editMode:Z

.field private final icons:[Landroid/graphics/Bitmap;

.field private final mouseMoveOffset:Landroid/graphics/PointF;

.field private mouseMoveTimer:Ljava/util/Timer;

.field private moveCursor:Z

.field private offsetX:F

.field private offsetY:F

.field private overlayOpacity:F

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

.field private readyToDraw:Z

.field private selectedElement:Lcom/termux/x11/controller/inputcontrols/ControlElement;

.field private showTouchscreenControls:Z

.field private snappingSize:I

.field private touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

.field private xServer:Lcom/termux/x11/LorieView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->editMode:Z

    .line 52
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    .line 53
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->path:Landroid/graphics/Path;

    .line 54
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->colorFilter:Landroid/graphics/ColorFilter;

    .line 55
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    .line 56
    iput-boolean v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->readyToDraw:Z

    .line 57
    iput-boolean v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->moveCursor:Z

    .line 63
    const v1, 0x3ecccccd    # 0.4f

    iput v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->overlayOpacity:F

    .line 66
    const/16 v1, 0x11

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    .line 68
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->mouseMoveOffset:Landroid/graphics/PointF;

    .line 69
    iput-boolean v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->showTouchscreenControls:Z

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->counterMap:Ljava/util/Map;

    .line 102
    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/widget/InputControlsView;->setClickable(Z)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/widget/InputControlsView;->setFocusable(Z)V

    .line 104
    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/widget/InputControlsView;->setFocusableInTouchMode(Z)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/widget/InputControlsView;->setBackgroundColor(I)V

    .line 106
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/widget/InputControlsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/termux/x11/controller/widget/InputControlsView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/widget/InputControlsView;

    .line 45
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->mouseMoveOffset:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$100(Lcom/termux/x11/controller/widget/InputControlsView;)Lcom/termux/x11/LorieView;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/widget/InputControlsView;

    .line 45
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->xServer:Lcom/termux/x11/LorieView;

    return-object v0
.end method

.method private createMouseMoveTimer()V
    .locals 8

    .line 305
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->mouseMoveTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getCursorSpeed()F

    move-result v0

    .line 307
    .local v0, "cursorSpeed":F
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->mouseMoveTimer:Ljava/util/Timer;

    .line 308
    iget-object v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->mouseMoveTimer:Ljava/util/Timer;

    new-instance v3, Lcom/termux/x11/controller/widget/InputControlsView$1;

    invoke-direct {v3, p0, v0}, Lcom/termux/x11/controller/widget/InputControlsView$1;-><init>(Lcom/termux/x11/controller/widget/InputControlsView;F)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x10

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 315
    .end local v0    # "cursorSpeed":F
    :cond_0
    return-void
.end method

.method public static createShapeBitmap(FFIZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "color"    # I
    .param p3, "isCircular"    # Z

    .line 574
    float-to-int v0, p0

    float-to-int v1, p1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 575
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 576
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 577
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 579
    if-eqz p3, :cond_0

    .line 580
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 581
    .local v3, "radius":I
    div-float v5, p0, v4

    div-float v4, p1, v4

    int-to-float v6, v3

    invoke-virtual {v1, v5, v4, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 582
    .end local v3    # "radius":I
    goto :goto_0

    .line 583
    :cond_0
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 584
    .local v3, "rect":Landroid/graphics/RectF;
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 586
    .end local v3    # "rect":Landroid/graphics/RectF;
    :goto_0
    return-object v0
.end method

.method private declared-synchronized deselectAllElements()V
    .locals 3

    monitor-enter p0

    .line 217
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->selectedElement:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    .line 218
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/inputcontrols/ControlElement;

    .local v1, "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setSelected(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    goto :goto_0

    .line 221
    .end local p0    # "this":Lcom/termux/x11/controller/widget/InputControlsView;
    :cond_0
    monitor-exit p0

    return-void

    .line 216
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private drawCursor(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 179
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    int-to-float v1, v1

    const/high16 v2, 0x3d800000    # 0.0625f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 181
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const v1, -0x39d7d8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->getMaxWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 185
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->getMaxHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 187
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    return-void
.end method

.method private drawGrid(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 150
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    int-to-float v1, v1

    const/high16 v2, 0x3d800000    # 0.0625f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 155
    iget-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const v2, -0xcfcfd0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->getMaxWidth()I

    move-result v1

    .line 159
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->getMaxHeight()I

    move-result v8

    .line 161
    .local v8, "height":I
    const/4 v2, 0x0

    move v9, v2

    .local v9, "i":I
    :goto_0
    if-ge v9, v1, :cond_0

    .line 162
    int-to-float v3, v9

    int-to-float v5, v9

    int-to-float v6, v8

    iget-object v7, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 163
    int-to-float v4, v9

    int-to-float v5, v1

    int-to-float v6, v9

    iget-object v7, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 161
    iget v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    add-int/2addr v9, v2

    goto :goto_0

    .line 166
    .end local v9    # "i":I
    :cond_0
    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    iget v4, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    int-to-float v4, v4

    invoke-static {v2, v4}, Lcom/termux/x11/controller/math/Mathf;->roundTo(FF)F

    move-result v9

    .line 167
    .local v9, "cx":F
    int-to-float v2, v8

    mul-float v2, v2, v3

    iget v3, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/termux/x11/controller/math/Mathf;->roundTo(FF)F

    move-result v10

    .line 168
    .local v10, "cy":F
    iget-object v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const v3, -0xbdbdbe

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    const/4 v2, 0x0

    move v11, v2

    .local v11, "i":I
    :goto_1
    if-ge v11, v1, :cond_1

    .line 171
    int-to-float v4, v11

    iget v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    add-int/2addr v2, v11

    int-to-float v6, v2

    iget-object v7, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v9

    move v5, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 172
    int-to-float v3, v11

    iget v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    add-int/2addr v2, v11

    int-to-float v5, v2

    iget-object v7, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v10

    move v6, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 170
    iget v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v11, v2

    goto :goto_1

    .line 175
    .end local v11    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    return-void
.end method

.method private declared-synchronized intersectElement(FF)Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/inputcontrols/ControlElement;

    .line 262
    .local v1, "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    invoke-virtual {v1, p1, p2}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->containsPoint(FF)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v1

    .line 263
    .end local v1    # "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    :cond_0
    goto :goto_0

    .line 265
    .end local p0    # "this":Lcom/termux/x11/controller/widget/InputControlsView;
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 259
    .end local p1    # "x":F
    .end local p2    # "y":F
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private processJoystickInput(Lcom/termux/x11/controller/inputcontrols/ExternalController;)V
    .locals 9
    .param p1, "controller"    # Lcom/termux/x11/controller/inputcontrols/ExternalController;

    .line 319
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 320
    .local v1, "axes":[I
    iget-object v2, p1, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v2, v2, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLX:F

    iget-object v3, p1, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v3, v3, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLY:F

    iget-object v4, p1, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v4, v4, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbRX:F

    iget-object v5, p1, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v5, v5, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbRY:F

    iget-object v6, p1, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    invoke-virtual {v6}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->getDPadX()B

    move-result v6

    int-to-float v6, v6

    iget-object v7, p1, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    invoke-virtual {v7}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->getDPadY()B

    move-result v7

    int-to-float v7, v7

    new-array v0, v0, [F

    const/4 v8, 0x0

    aput v2, v0, v8

    const/4 v2, 0x1

    aput v3, v0, v2

    const/4 v3, 0x2

    aput v4, v0, v3

    const/4 v3, 0x3

    aput v5, v0, v3

    const/4 v3, 0x4

    aput v6, v0, v3

    const/4 v3, 0x5

    aput v7, v0, v3

    .line 322
    .local v0, "values":[F
    const/4 v3, 0x0

    .local v3, "i":B
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 323
    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3e19999a    # 0.15f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 324
    aget v4, v1, v3

    aget v5, v0, v3

    invoke-static {v5}, Lcom/termux/x11/controller/math/Mathf;->sign(F)B

    move-result v5

    invoke-static {v4, v5}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->getKeyCodeForAxis(IB)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    move-result-object v4

    .line 325
    .local v4, "controllerBinding":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    if-eqz v4, :cond_2

    .line 326
    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v5

    aget v6, v0, v3

    invoke-virtual {p0, v5, v2, v6}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;ZF)V

    goto :goto_1

    .line 328
    .end local v4    # "controllerBinding":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    :cond_0
    aget v4, v1, v3

    invoke-static {v4, v2}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->getKeyCodeForAxis(IB)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    move-result-object v4

    .line 329
    .restart local v4    # "controllerBinding":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    if-eqz v4, :cond_1

    .line 330
    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v5

    aget v6, v0, v3

    invoke-virtual {p0, v5, v8, v6}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;ZF)V

    .line 331
    :cond_1
    aget v5, v1, v3

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->getKeyCodeForAxis(IB)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    move-result-object v4

    .line 332
    if-eqz v4, :cond_2

    .line 333
    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v5

    aget v6, v0, v3

    invoke-virtual {p0, v5, v8, v6}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;ZF)V

    .line 322
    :cond_2
    :goto_1
    add-int/lit8 v5, v3, 0x1

    int-to-byte v3, v5

    goto :goto_0

    .line 336
    .end local v3    # "i":B
    .end local v4    # "controllerBinding":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0xb
        0xe
        0xf
        0x10
    .end array-data
.end method

.method private selectElement(Lcom/termux/x11/controller/inputcontrols/ControlElement;)V
    .locals 2
    .param p1, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;

    .line 224
    invoke-direct {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->deselectAllElements()V

    .line 225
    if-eqz p1, :cond_0

    .line 226
    iput-object p1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->selectedElement:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    .line 227
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->selectedElement:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setSelected(Z)V

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    .line 230
    return-void
.end method


# virtual methods
.method public declared-synchronized addElement()Z
    .locals 2

    monitor-enter p0

    .line 191
    :try_start_0
    iget-boolean v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->editMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;-><init>(Lcom/termux/x11/controller/widget/InputControlsView;)V

    .line 193
    .local v0, "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    iget-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setX(I)V

    .line 194
    iget-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setY(I)V

    .line 195
    iget-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v1, v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->addElement(Lcom/termux/x11/controller/inputcontrols/ControlElement;)V

    .line 196
    iget-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 197
    invoke-direct {p0, v0}, Lcom/termux/x11/controller/widget/InputControlsView;->selectElement(Lcom/termux/x11/controller/inputcontrols/ControlElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 199
    .end local v0    # "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .end local p0    # "this":Lcom/termux/x11/controller/widget/InputControlsView;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 190
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clipBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isCircular"    # Z

    .line 556
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 557
    .local v0, "clippedBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 558
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 559
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, p1, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 560
    .local v3, "shader":Landroid/graphics/BitmapShader;
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 561
    if-eqz p2, :cond_0

    .line 562
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 563
    .local v4, "centerX":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 564
    .local v5, "centerY":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 565
    .local v6, "radius":I
    int-to-float v7, v4

    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {v1, v7, v8, v9, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 566
    .end local v4    # "centerX":I
    .end local v5    # "centerY":I
    .end local v6    # "radius":I
    goto :goto_0

    .line 567
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 568
    .local v4, "rect":Landroid/graphics/RectF;
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 570
    .end local v4    # "rect":Landroid/graphics/RectF;
    :goto_0
    return-object v0
.end method

.method public counterMapDecrease(Ljava/lang/String;)V
    .locals 2
    .param p1, "iconId"    # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->counterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 83
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->counterMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    return-void
.end method

.method public counterMapIncrease(Ljava/lang/String;)V
    .locals 3
    .param p1, "iconId"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->counterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 74
    .local v0, "v":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 75
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->counterMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public counterMapZero(Ljava/lang/String;)Z
    .locals 3
    .param p1, "iconId"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->counterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 91
    .local v0, "v":Ljava/lang/Integer;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 92
    return v1

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_1

    .line 95
    return v1

    .line 97
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 591
    iget-boolean v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->editMode:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-nez v0, :cond_0

    goto :goto_1

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getController(I)Lcom/termux/x11/controller/inputcontrols/ExternalController;

    move-result-object v0

    .line 594
    .local v0, "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 596
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 597
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 599
    .local v2, "isActionDown":Z
    :goto_0
    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    move-result-object v4

    .line 600
    .local v4, "binding":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    if-eqz v4, :cond_3

    .line 601
    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;Z)V

    .line 602
    return v3

    .line 605
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 591
    .end local v0    # "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .end local v1    # "keyCode":I
    .end local v2    # "isActionDown":Z
    .end local v4    # "binding":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->colorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getCustomIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "iconId"    # Ljava/lang/String;

    .line 548
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/home/.buttonIcons"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .local v0, "buttonIconFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 550
    const/4 v1, 0x0

    return-object v1

    .line 552
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getIcon(B)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "id"    # B

    .line 537
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 538
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 539
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputcontrols/icons/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    iget-object v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 542
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    goto :goto_1

    .line 539
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "context":Landroid/content/Context;
    .end local p1    # "id":B
    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 541
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local p1    # "id":B
    :catch_0
    move-exception v1

    .line 544
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 2

    .line 301
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/termux/x11/controller/math/Mathf;->roundTo(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .line 297
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/termux/x11/controller/math/Mathf;->roundTo(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public getPrimaryColor()I
    .locals 2

    .line 252
    iget v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->overlayOpacity:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v1, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getProfile()Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .locals 1

    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 233
    .end local p0    # "this":Lcom/termux/x11/controller/widget/InputControlsView;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSecondaryColor()I
    .locals 4

    .line 256
    iget v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->overlayOpacity:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v1, 0x77

    const/16 v2, 0xbd

    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public getSelectedElement()Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->selectedElement:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    return-object v0
.end method

.method public getSnappingSize()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    return v0
.end method

.method public getTouchpadView()Lcom/termux/x11/controller/widget/TouchpadView;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    return-object v0
.end method

.method public getXServer()Lcom/termux/x11/LorieView;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->xServer:Lcom/termux/x11/LorieView;

    return-object v0
.end method

.method public handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;Z)V
    .locals 1
    .param p1, "binding"    # Lcom/termux/x11/controller/inputcontrols/Binding;
    .param p2, "isActionDown"    # Z

    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;ZF)V

    .line 470
    return-void
.end method

.method public handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;ZF)V
    .locals 6
    .param p1, "binding"    # Lcom/termux/x11/controller/inputcontrols/Binding;
    .param p2, "isActionDown"    # Z
    .param p3, "offset"    # F

    .line 473
    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/Binding;->isGamepad()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 474
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->xServer:Lcom/termux/x11/LorieView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->xServer:Lcom/termux/x11/LorieView;

    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->getWinHandler()Lcom/termux/x11/controller/winhandler/WinHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 475
    .local v0, "winHandler":Lcom/termux/x11/controller/winhandler/WinHandler;
    :goto_0
    iget-object v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v2}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getGamepadState()Lcom/termux/x11/controller/inputcontrols/GamepadState;

    move-result-object v2

    .line 476
    .local v2, "state":Lcom/termux/x11/controller/inputcontrols/GamepadState;
    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/Binding;->ordinal()I

    move-result v3

    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_BUTTON_A:Lcom/termux/x11/controller/inputcontrols/Binding;

    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/Binding;->ordinal()I

    move-result v4

    sub-int/2addr v3, v4

    .line 477
    .local v3, "buttonIdx":I
    const/16 v4, 0xb

    if-gt v3, v4, :cond_1

    .line 478
    invoke-virtual {v2, v3, p2}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->setPressed(IZ)V

    goto/16 :goto_5

    .line 480
    :cond_1
    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_UP:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-eq p1, v4, :cond_d

    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_DOWN:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-ne p1, v4, :cond_2

    goto :goto_4

    .line 482
    :cond_2
    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_LEFT:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-eq p1, v4, :cond_b

    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_RIGHT:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-ne p1, v4, :cond_3

    goto :goto_3

    .line 484
    :cond_3
    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_UP:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-eq p1, v4, :cond_9

    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_DOWN:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-ne p1, v4, :cond_4

    goto :goto_2

    .line 486
    :cond_4
    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_LEFT:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-eq p1, v4, :cond_7

    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_RIGHT:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-ne p1, v4, :cond_5

    goto :goto_1

    .line 488
    :cond_5
    sget-object v1, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_DPAD_UP:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-eq p1, v1, :cond_6

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_DPAD_RIGHT:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-eq p1, v1, :cond_6

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_DPAD_DOWN:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-eq p1, v1, :cond_6

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_DPAD_LEFT:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-ne p1, v1, :cond_f

    .line 490
    :cond_6
    iget-object v1, v2, Lcom/termux/x11/controller/inputcontrols/GamepadState;->dpad:[Z

    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/Binding;->ordinal()I

    move-result v4

    sget-object v5, Lcom/termux/x11/controller/inputcontrols/Binding;->GAMEPAD_DPAD_UP:Lcom/termux/x11/controller/inputcontrols/Binding;

    invoke-virtual {v5}, Lcom/termux/x11/controller/inputcontrols/Binding;->ordinal()I

    move-result v5

    sub-int/2addr v4, v5

    aput-boolean p2, v1, v4

    goto :goto_5

    .line 487
    :cond_7
    :goto_1
    if-eqz p2, :cond_8

    move v1, p3

    :cond_8
    iput v1, v2, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbRX:F

    goto :goto_5

    .line 485
    :cond_9
    :goto_2
    if-eqz p2, :cond_a

    move v1, p3

    :cond_a
    iput v1, v2, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbRY:F

    goto :goto_5

    .line 483
    :cond_b
    :goto_3
    if-eqz p2, :cond_c

    move v1, p3

    :cond_c
    iput v1, v2, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLX:F

    goto :goto_5

    .line 481
    :cond_d
    :goto_4
    if-eqz p2, :cond_e

    move v1, p3

    :cond_e
    iput v1, v2, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLY:F

    .line 493
    :cond_f
    :goto_5
    if-eqz v0, :cond_11

    .line 494
    invoke-virtual {v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->getCurrentController()Lcom/termux/x11/controller/inputcontrols/ExternalController;

    move-result-object v1

    .line 495
    .local v1, "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    if-eqz v1, :cond_10

    .line 496
    iget-object v4, v1, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    invoke-virtual {v4, v2}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->copy(Lcom/termux/x11/controller/inputcontrols/GamepadState;)V

    .line 498
    :cond_10
    invoke-virtual {v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->sendGamepadState()V

    .line 500
    .end local v0    # "winHandler":Lcom/termux/x11/controller/winhandler/WinHandler;
    .end local v1    # "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .end local v2    # "state":Lcom/termux/x11/controller/inputcontrols/GamepadState;
    .end local v3    # "buttonIdx":I
    :cond_11
    goto/16 :goto_c

    .line 501
    :cond_12
    sget-object v0, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_LEFT:Lcom/termux/x11/controller/inputcontrols/Binding;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p1, v0, :cond_1c

    sget-object v0, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_RIGHT:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-ne p1, v0, :cond_13

    goto :goto_9

    .line 505
    :cond_13
    sget-object v0, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_DOWN:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-eq p1, v0, :cond_18

    sget-object v0, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_UP:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-ne p1, v0, :cond_14

    goto :goto_6

    .line 510
    :cond_14
    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/Binding;->getPointerButton()Lcom/termux/x11/controller/xserver/Pointer$Button;

    move-result-object v0

    .line 511
    .local v0, "pointerButton":Lcom/termux/x11/controller/xserver/Pointer$Button;
    if-eqz p2, :cond_16

    .line 513
    if-eqz v0, :cond_15

    .line 514
    iget-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->xServer:Lcom/termux/x11/LorieView;

    invoke-virtual {v1, v0}, Lcom/termux/x11/LorieView;->injectPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    goto :goto_c

    .line 516
    :cond_15
    iget-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->xServer:Lcom/termux/x11/LorieView;

    iget-object v2, p1, Lcom/termux/x11/controller/inputcontrols/Binding;->keycode:Lcom/termux/x11/controller/xserver/XKeycode;

    invoke-virtual {v1, v2}, Lcom/termux/x11/LorieView;->injectKeyPress(Lcom/termux/x11/controller/xserver/XKeycode;)V

    goto :goto_c

    .line 520
    :cond_16
    if-eqz v0, :cond_17

    .line 521
    iget-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->xServer:Lcom/termux/x11/LorieView;

    invoke-virtual {v1, v0}, Lcom/termux/x11/LorieView;->injectPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    goto :goto_c

    .line 523
    :cond_17
    iget-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->xServer:Lcom/termux/x11/LorieView;

    iget-object v2, p1, Lcom/termux/x11/controller/inputcontrols/Binding;->keycode:Lcom/termux/x11/controller/xserver/XKeycode;

    invoke-virtual {v1, v2}, Lcom/termux/x11/LorieView;->injectKeyRelease(Lcom/termux/x11/controller/xserver/XKeycode;)V

    goto :goto_c

    .line 507
    .end local v0    # "pointerButton":Lcom/termux/x11/controller/xserver/Pointer$Button;
    :cond_18
    :goto_6
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->mouseMoveOffset:Landroid/graphics/PointF;

    if-eqz p2, :cond_1b

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_19

    move v1, p3

    goto :goto_8

    :cond_19
    sget-object v1, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_UP:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-ne p1, v1, :cond_1a

    goto :goto_7

    :cond_1a
    const/4 v2, 0x1

    :goto_7
    int-to-float v1, v2

    :cond_1b
    :goto_8
    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 508
    if-eqz p2, :cond_20

    invoke-direct {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->createMouseMoveTimer()V

    goto :goto_c

    .line 503
    :cond_1c
    :goto_9
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->mouseMoveOffset:Landroid/graphics/PointF;

    if-eqz p2, :cond_1f

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_1d

    move v1, p3

    goto :goto_b

    :cond_1d
    sget-object v1, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_LEFT:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-ne p1, v1, :cond_1e

    goto :goto_a

    :cond_1e
    const/4 v2, 0x1

    :goto_a
    int-to-float v1, v2

    :cond_1f
    :goto_b
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 504
    if-eqz p2, :cond_20

    invoke-direct {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->createMouseMoveTimer()V

    .line 528
    :cond_20
    :goto_c
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 403
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-virtual {v0, p1}, Lcom/termux/x11/controller/widget/TouchpadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 406
    :cond_0
    iget-boolean v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->editMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_b

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 408
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 409
    .local v2, "pointerId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 410
    .local v3, "actionMasked":I
    const/4 v4, 0x0

    .line 412
    .local v4, "handled":Z
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 432
    :pswitch_1
    const/4 v1, 0x0

    .local v1, "i":B
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    int-to-byte v5, v5

    .local v5, "count":B
    :goto_0
    if-ge v1, v5, :cond_4

    .line 433
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 434
    .local v6, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 435
    .local v7, "y":F
    const/4 v4, 0x0

    .line 436
    iget-object v8, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v8}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/termux/x11/controller/inputcontrols/ControlElement;

    .line 437
    .local v9, "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    invoke-virtual {v9, v1, v6, v7}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->handleTouchMove(IFF)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 438
    const/4 v4, 0x1

    .line 440
    .end local v9    # "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    :cond_1
    goto :goto_1

    .line 441
    :cond_2
    if-nez v4, :cond_3

    .line 442
    iget-object v8, p0, Lcom/termux/x11/controller/widget/InputControlsView;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-virtual {v8, p1}, Lcom/termux/x11/controller/widget/TouchpadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 432
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_3
    add-int/lit8 v6, v1, 0x1

    int-to-byte v1, v6

    goto :goto_0

    .line 445
    .end local v1    # "i":B
    .end local v5    # "count":B
    :cond_4
    goto/16 :goto_5

    .line 450
    :pswitch_2
    const/4 v1, 0x0

    .restart local v1    # "i":B
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    int-to-byte v5, v5

    .restart local v5    # "count":B
    :goto_2
    if-ge v1, v5, :cond_a

    .line 451
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 452
    .restart local v6    # "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 453
    .restart local v7    # "y":F
    iget-object v8, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v8}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/termux/x11/controller/inputcontrols/ControlElement;

    .line 454
    .restart local v9    # "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    invoke-virtual {v9, v2, v6, v7}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->handleTouchUp(IFF)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 455
    const/4 v4, 0x1

    .line 454
    .end local v9    # "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    :cond_5
    goto :goto_3

    .line 457
    :cond_6
    if-nez v4, :cond_7

    .line 458
    iget-object v8, p0, Lcom/termux/x11/controller/widget/InputControlsView;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-virtual {v8, p1}, Lcom/termux/x11/controller/widget/TouchpadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 450
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_7
    add-int/lit8 v6, v1, 0x1

    int-to-byte v1, v6

    goto :goto_2

    .line 415
    .end local v1    # "i":B
    .end local v5    # "count":B
    :pswitch_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 416
    .local v5, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 417
    .local v6, "y":F
    iget-object v7, p0, Lcom/termux/x11/controller/widget/InputControlsView;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/termux/x11/controller/widget/TouchpadView;->setPointerButtonLeftEnabled(Z)V

    .line 418
    iget-object v7, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v7}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/termux/x11/controller/inputcontrols/ControlElement;

    .line 419
    .local v8, "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    invoke-virtual {v8, v2, v5, v6}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->handleTouchDown(IFF)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 420
    const/4 v4, 0x1

    .line 421
    invoke-virtual {v8, v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v9

    sget-object v10, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_LEFT_BUTTON:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-ne v9, v10, :cond_8

    .line 422
    iget-object v9, p0, Lcom/termux/x11/controller/widget/InputControlsView;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-virtual {v9, v1}, Lcom/termux/x11/controller/widget/TouchpadView;->setPointerButtonLeftEnabled(Z)V

    .line 425
    .end local v8    # "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    :cond_8
    goto :goto_4

    .line 426
    :cond_9
    if-nez v4, :cond_a

    .line 427
    iget-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-virtual {v1, p1}, Lcom/termux/x11/controller/widget/TouchpadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 463
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_a
    :goto_5
    return v4

    .line 465
    .end local v0    # "actionIndex":I
    .end local v2    # "pointerId":I
    .end local v3    # "actionMasked":I
    .end local v4    # "handled":Z
    :cond_b
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public isShowTouchscreenControls()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->showTouchscreenControls:Z

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->getWidth()I

    move-result v0

    .line 124
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->getHeight()I

    move-result v1

    .line 126
    .local v1, "height":I
    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    .line 132
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->readyToDraw:Z

    .line 134
    iget-boolean v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->editMode:Z

    if-eqz v2, :cond_1

    .line 135
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/widget/InputControlsView;->drawGrid(Landroid/graphics/Canvas;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/widget/InputControlsView;->drawCursor(Landroid/graphics/Canvas;)V

    .line 138
    .end local p0    # "this":Lcom/termux/x11/controller/widget/InputControlsView;
    :cond_1
    iget-object v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v2, :cond_3

    .line 139
    iget-object v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v2}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->isElementsLoaded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v2, p0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->loadElements(Lcom/termux/x11/controller/widget/InputControlsView;)V

    .line 142
    :cond_2
    iget-boolean v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->showTouchscreenControls:Z

    if-eqz v2, :cond_3

    .line 143
    iget-object v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v2}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/termux/x11/controller/inputcontrols/ControlElement;

    .local v3, "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    invoke-virtual {v3, p1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->draw(Landroid/graphics/Canvas;)V

    .end local v3    # "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    goto :goto_0

    .line 146
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 127
    :cond_4
    :goto_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/termux/x11/controller/widget/InputControlsView;->readyToDraw:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 122
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 340
    iget-boolean v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->editMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getController(I)Lcom/termux/x11/controller/inputcontrols/ExternalController;

    move-result-object v0

    .line 342
    .local v0, "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->updateStateFromMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    move-result-object v1

    .line 345
    .local v1, "controllerBinding":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v2

    iget-object v3, v0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->isPressed(I)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;Z)V

    .line 348
    :cond_0
    const/16 v2, 0x69

    invoke-virtual {v0, v2}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    move-result-object v1

    .line 349
    if-eqz v1, :cond_1

    .line 350
    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v2

    iget-object v3, v0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->isPressed(I)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/termux/x11/controller/widget/InputControlsView;->handleInputEvent(Lcom/termux/x11/controller/inputcontrols/Binding;Z)V

    .line 352
    :cond_1
    invoke-direct {p0, v0}, Lcom/termux/x11/controller/widget/InputControlsView;->processJoystickInput(Lcom/termux/x11/controller/inputcontrols/ExternalController;)V

    .line 353
    const/4 v2, 0x1

    return v2

    .line 356
    .end local v0    # "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .end local v1    # "controllerBinding":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 361
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-virtual {v0, p1}, Lcom/termux/x11/controller/widget/TouchpadView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 366
    iget-boolean v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->editMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->readyToDraw:Z

    if-eqz v0, :cond_3

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 383
    :pswitch_0
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->selectedElement:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    if-eqz v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->selectedElement:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/termux/x11/controller/widget/InputControlsView;->offsetX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/termux/x11/controller/math/Mathf;->roundTo(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setX(I)V

    .line 385
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->selectedElement:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/termux/x11/controller/widget/InputControlsView;->offsetY:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/termux/x11/controller/math/Mathf;->roundTo(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setY(I)V

    .line 386
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    goto :goto_0

    .line 391
    :pswitch_1
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->selectedElement:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 392
    :cond_0
    iget-boolean v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->moveCursor:Z

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/termux/x11/controller/math/Mathf;->roundTo(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/termux/x11/controller/widget/InputControlsView;->snappingSize:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/termux/x11/controller/math/Mathf;->roundTo(FF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    goto :goto_0

    .line 369
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 370
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 372
    .local v2, "y":F
    invoke-direct {p0, v0, v2}, Lcom/termux/x11/controller/widget/InputControlsView;->intersectElement(FF)Lcom/termux/x11/controller/inputcontrols/ControlElement;

    move-result-object v3

    .line 373
    .local v3, "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    iput-boolean v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->moveCursor:Z

    .line 374
    if-eqz v3, :cond_2

    .line 375
    invoke-virtual {v3}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getX()S

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    iput v4, p0, Lcom/termux/x11/controller/widget/InputControlsView;->offsetX:F

    .line 376
    invoke-virtual {v3}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getY()S

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    iput v4, p0, Lcom/termux/x11/controller/widget/InputControlsView;->offsetY:F

    .line 377
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/termux/x11/controller/widget/InputControlsView;->moveCursor:Z

    .line 379
    :cond_2
    invoke-direct {p0, v3}, Lcom/termux/x11/controller/widget/InputControlsView;->selectElement(Lcom/termux/x11/controller/inputcontrols/ControlElement;)V

    .line 380
    nop

    .line 399
    .end local v0    # "x":F
    .end local v2    # "y":F
    .end local v3    # "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    :cond_3
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized removeElement()Z
    .locals 2

    monitor-enter p0

    .line 203
    :try_start_0
    iget-boolean v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->editMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->selectedElement:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    iget-object v1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->selectedElement:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->removeElement(Lcom/termux/x11/controller/inputcontrols/ControlElement;)V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->selectedElement:Lcom/termux/x11/controller/inputcontrols/ControlElement;

    .line 206
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 207
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 209
    .end local p0    # "this":Lcom/termux/x11/controller/widget/InputControlsView;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 202
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->xServer:Lcom/termux/x11/LorieView;

    invoke-virtual {v0, p1}, Lcom/termux/x11/LorieView;->injectText(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_ENTER:Lcom/termux/x11/controller/xserver/XKeycode;

    invoke-virtual {v0, v1}, Lcom/termux/x11/LorieView;->injectKeyPress(Lcom/termux/x11/controller/xserver/XKeycode;)V

    .line 533
    iget-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->xServer:Lcom/termux/x11/LorieView;

    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_ENTER:Lcom/termux/x11/controller/xserver/XKeycode;

    invoke-virtual {v0, v1}, Lcom/termux/x11/LorieView;->injectKeyRelease(Lcom/termux/x11/controller/xserver/XKeycode;)V

    .line 534
    return-void
.end method

.method public setEditMode(Z)V
    .locals 0
    .param p1, "editMode"    # Z

    .line 110
    iput-boolean p1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->editMode:Z

    .line 111
    return-void
.end method

.method public setOverlayOpacity(F)V
    .locals 0
    .param p1, "overlayOpacity"    # F

    .line 114
    iput p1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->overlayOpacity:F

    .line 115
    return-void
.end method

.method public declared-synchronized setProfile(Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    monitor-enter p0

    .line 237
    if-eqz p1, :cond_0

    .line 238
    :try_start_0
    iput-object p1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 239
    invoke-direct {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->deselectAllElements()V

    goto :goto_0

    .line 240
    .end local p0    # "this":Lcom/termux/x11/controller/widget/InputControlsView;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/controller/widget/InputControlsView;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    .end local p1    # "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setShowTouchscreenControls(Z)V
    .locals 0
    .param p1, "showTouchscreenControls"    # Z

    .line 248
    iput-boolean p1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->showTouchscreenControls:Z

    .line 249
    return-void
.end method

.method public setTouchpadView(Lcom/termux/x11/controller/widget/TouchpadView;)V
    .locals 0
    .param p1, "touchpadView"    # Lcom/termux/x11/controller/widget/TouchpadView;

    .line 284
    iput-object p1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    .line 285
    return-void
.end method

.method public setXServer(Lcom/termux/x11/LorieView;)V
    .locals 0
    .param p1, "xServer"    # Lcom/termux/x11/LorieView;

    .line 292
    iput-object p1, p0, Lcom/termux/x11/controller/widget/InputControlsView;->xServer:Lcom/termux/x11/LorieView;

    .line 293
    invoke-direct {p0}, Lcom/termux/x11/controller/widget/InputControlsView;->createMouseMoveTimer()V

    .line 294
    return-void
.end method

.class Lcom/termux/x11/controller/widget/TouchpadView$Finger;
.super Ljava/lang/Object;
.source "TouchpadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/controller/widget/TouchpadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Finger"
.end annotation


# instance fields
.field private lastX:I

.field private lastY:I

.field private final startX:I

.field private final startY:I

.field final synthetic this$0:Lcom/termux/x11/controller/widget/TouchpadView;

.field private final touchTime:J

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/termux/x11/controller/widget/TouchpadView;FF)V
    .locals 2
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 84
    iput-object p1, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->this$0:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    float-to-int p1, p2

    iput p1, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->lastX:I

    iput p1, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->startX:I

    iput p1, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->x:I

    .line 86
    float-to-int p1, p3

    iput p1, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->lastY:I

    iput p1, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->startY:I

    iput p1, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->y:I

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->touchTime:J

    .line 88
    return-void
.end method

.method static synthetic access$200(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 75
    iget v0, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->x:I

    return v0
.end method

.method static synthetic access$300(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 75
    iget v0, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->y:I

    return v0
.end method

.method static synthetic access$400(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 75
    invoke-direct {p0}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->isTap()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 75
    iget v0, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->lastY:I

    return v0
.end method

.method static synthetic access$600(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)F
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 75
    invoke-direct {p0}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->travelDistance()F

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 75
    invoke-direct {p0}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->deltaX()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/termux/x11/controller/widget/TouchpadView$Finger;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/widget/TouchpadView$Finger;

    .line 75
    invoke-direct {p0}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->deltaY()I

    move-result v0

    return v0
.end method

.method private deltaX()I
    .locals 3

    .line 98
    iget v0, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->x:I

    iget v1, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->lastX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->this$0:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-static {v1}, Lcom/termux/x11/controller/widget/TouchpadView;->access$000(Lcom/termux/x11/controller/widget/TouchpadView;)F

    move-result v1

    mul-float v0, v0, v1

    .line 99
    .local v0, "dx":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v0, v0, v1

    .line 100
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/controller/math/Mathf;->roundPoint(F)I

    move-result v1

    return v1
.end method

.method private deltaY()I
    .locals 3

    .line 104
    iget v0, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->y:I

    iget v1, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->lastY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->this$0:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-static {v1}, Lcom/termux/x11/controller/widget/TouchpadView;->access$000(Lcom/termux/x11/controller/widget/TouchpadView;)F

    move-result v1

    mul-float v0, v0, v1

    .line 105
    .local v0, "dy":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v0, v0, v1

    .line 106
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/controller/math/Mathf;->roundPoint(F)I

    move-result v1

    return v1
.end method

.method private isTap()Z
    .locals 7

    .line 110
    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->this$0:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-static {v0}, Lcom/termux/x11/controller/widget/TouchpadView;->access$100(Lcom/termux/x11/controller/widget/TouchpadView;)Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    move-result-object v0

    sget-object v1, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;->TOUCH_SCREEN:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->touchTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    invoke-direct {p0}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->travelDistance()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 113
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->touchTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xc8

    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    invoke-direct {p0}, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->travelDistance()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private travelDistance()F
    .locals 4

    .line 117
    iget v0, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->x:I

    iget v1, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->startX:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->y:I

    iget v3, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->startY:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public update(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 91
    iget v0, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->x:I

    iput v0, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->lastX:I

    .line 92
    iget v0, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->y:I

    iput v0, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->lastY:I

    .line 93
    float-to-int v0, p1

    iput v0, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->x:I

    .line 94
    float-to-int v0, p2

    iput v0, p0, Lcom/termux/x11/controller/widget/TouchpadView$Finger;->y:I

    .line 95
    return-void
.end method

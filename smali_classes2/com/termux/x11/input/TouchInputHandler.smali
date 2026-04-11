.class public Lcom/termux/x11/input/TouchInputHandler;
.super Ljava/lang/Object;
.source "TouchInputHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/input/TouchInputHandler$StylusListener;,
        Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;,
        Lcom/termux/x11/input/TouchInputHandler$GestureListener;,
        Lcom/termux/x11/input/TouchInputHandler$InputMode;,
        Lcom/termux/x11/input/TouchInputHandler$DexListener;,
        Lcom/termux/x11/input/TouchInputHandler$CapturedPointerTransformation;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 0.001f

.field private static final KEY_BACK:I = 0x9e

.field public static STYLUS_INPUT_HELPER_MODE:I

.field static capturedPointerTransformation:I

.field private static final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private static mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private static mDisplayRotation:I


# instance fields
.field private backButtonAction:Lj$/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final buttons:[[I

.field private currentBS:I

.field private keyIntercepting:Z

.field private final mActivity:Lcom/termux/x11/MainActivity;

.field private final mDexListener:Lcom/termux/x11/input/TouchInputHandler$DexListener;

.field private final mHMListener:Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;

.field private final mInjector:Lcom/termux/x11/input/InputEventSender;

.field private mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

.field private mIsDragging:Z

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private final mRenderData:Lcom/termux/x11/input/RenderData;

.field private final mScroller:Landroid/view/GestureDetector;

.field private final mStylusListener:Lcom/termux/x11/input/TouchInputHandler$StylusListener;

.field private mSuppressCursorMovement:Z

.field private mSwipeCompleted:Z

.field private final mSwipePinchDetector:Lcom/termux/x11/input/SwipeDetector;

.field private final mSwipeThreshold:F

.field private final mTapDetector:Lcom/termux/x11/input/TapGestureDetector;

.field private mTotalMotionY:F

.field private final mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

.field private mediaKeysAction:Lj$/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final noAction:Lj$/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private savedBS:I

.field private swipeDownAction:Lj$/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private swipeUpAction:Lj$/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volumeDownAction:Lj$/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volumeUpAction:Lj$/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const/4 v0, 0x1

    sput v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    .line 137
    new-instance v0, Lcom/termux/x11/input/TouchInputHandler$1;

    invoke-direct {v0}, Lcom/termux/x11/input/TouchInputHandler$1;-><init>()V

    sput-object v0, Lcom/termux/x11/input/TouchInputHandler;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 154
    const/4 v0, 0x0

    sput v0, Lcom/termux/x11/input/TouchInputHandler;->capturedPointerTransformation:I

    return-void
.end method

.method public constructor <init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/input/InputEventSender;)V
    .locals 2
    .param p1, "activity"    # Lcom/termux/x11/MainActivity;
    .param p2, "injector"    # Lcom/termux/x11/input/InputEventSender;

    .line 236
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/termux/x11/input/TouchInputHandler;-><init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/input/RenderData;Lcom/termux/x11/input/InputEventSender;Z)V

    .line 237
    return-void
.end method

.method private constructor <init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/input/RenderData;Lcom/termux/x11/input/InputEventSender;Z)V
    .locals 8
    .param p1, "activity"    # Lcom/termux/x11/MainActivity;
    .param p2, "renderData"    # Lcom/termux/x11/input/RenderData;
    .param p3, "injector"    # Lcom/termux/x11/input/InputEventSender;
    .param p4, "isTouchpad"    # Z

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;-><init>(Lcom/termux/x11/input/TouchInputHandler;Lcom/termux/x11/input/TouchInputHandler$1;)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mStylusListener:Lcom/termux/x11/input/TouchInputHandler$StylusListener;

    .line 85
    new-instance v0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;-><init>(Lcom/termux/x11/input/TouchInputHandler;Lcom/termux/x11/input/TouchInputHandler$1;)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mHMListener:Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;

    .line 95
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mMetrics:Landroid/util/DisplayMetrics;

    .line 97
    new-instance v0, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda5;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Lj$/util/function/BiConsumer;

    .line 98
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Lj$/util/function/BiConsumer;

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->swipeUpAction:Lj$/util/function/BiConsumer;

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Lj$/util/function/BiConsumer;

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->swipeDownAction:Lj$/util/function/BiConsumer;

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Lj$/util/function/BiConsumer;

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeUpAction:Lj$/util/function/BiConsumer;

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Lj$/util/function/BiConsumer;

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeDownAction:Lj$/util/function/BiConsumer;

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Lj$/util/function/BiConsumer;

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->backButtonAction:Lj$/util/function/BiConsumer;

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Lj$/util/function/BiConsumer;

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mediaKeysAction:Lj$/util/function/BiConsumer;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler;->keyIntercepting:Z

    .line 155
    const/4 v2, 0x3

    new-array v3, v2, [[I

    const/4 v4, 0x1

    filled-new-array {v4, v4}, [I

    move-result-object v5

    aput-object v5, v3, v0

    const/4 v5, 0x4

    const/4 v6, 0x2

    filled-new-array {v5, v6}, [I

    move-result-object v7

    aput-object v7, v3, v4

    filled-new-array {v6, v2}, [I

    move-result-object v2

    aput-object v2, v3, v6

    iput-object v3, p0, Lcom/termux/x11/input/TouchInputHandler;->buttons:[[I

    .line 160
    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler;->savedBS:I

    .line 161
    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler;->currentBS:I

    .line 172
    if-eqz p3, :cond_3

    .line 175
    if-eqz p2, :cond_0

    move-object v2, p2

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/termux/x11/input/RenderData;

    invoke-direct {v2}, Lcom/termux/x11/input/RenderData;-><init>()V

    :goto_0
    iput-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    .line 176
    iput-object p3, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    .line 177
    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    .line 178
    sget-object v2, Lcom/termux/x11/input/TouchInputHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Lcom/termux/x11/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    sput-object v2, Lcom/termux/x11/input/TouchInputHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 180
    sget-object v2, Lcom/termux/x11/input/TouchInputHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    rem-int/2addr v2, v5

    sput v2, Lcom/termux/x11/input/TouchInputHandler;->mDisplayRotation:I

    .line 181
    sget-object v2, Lcom/termux/x11/input/TouchInputHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v3, Lcom/termux/x11/input/TouchInputHandler;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v2, v3, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 184
    :cond_1
    new-instance v2, Lcom/termux/x11/input/TouchInputHandler$GestureListener;

    invoke-direct {v2, p0, v1}, Lcom/termux/x11/input/TouchInputHandler$GestureListener;-><init>(Lcom/termux/x11/input/TouchInputHandler;Lcom/termux/x11/input/TouchInputHandler$1;)V

    .line 185
    .local v2, "listener":Lcom/termux/x11/input/TouchInputHandler$GestureListener;
    new-instance v3, Landroid/view/GestureDetector;

    invoke-direct {v3, p1, v2, v1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mScroller:Landroid/view/GestureDetector;

    .line 191
    iget-object v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mScroller:Landroid/view/GestureDetector;

    invoke-virtual {v3, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 193
    new-instance v0, Lcom/termux/x11/input/TapGestureDetector;

    invoke-direct {v0, p1, v2}, Lcom/termux/x11/input/TapGestureDetector;-><init>(Landroid/content/Context;Lcom/termux/x11/input/TapGestureDetector$OnTapListener;)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTapDetector:Lcom/termux/x11/input/TapGestureDetector;

    .line 194
    new-instance v0, Lcom/termux/x11/input/SwipeDetector;

    invoke-direct {v0, p1}, Lcom/termux/x11/input/SwipeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipePinchDetector:Lcom/termux/x11/input/SwipeDetector;

    .line 199
    invoke-virtual {p1}, Lcom/termux/x11/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 200
    .local v0, "density":F
    const/high16 v3, 0x42200000    # 40.0f

    mul-float v3, v3, v0

    iput v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipeThreshold:F

    .line 204
    invoke-virtual {p0, v4}, Lcom/termux/x11/input/TouchInputHandler;->setInputMode(I)V

    .line 205
    new-instance v3, Lcom/termux/x11/input/TouchInputHandler$DexListener;

    invoke-direct {v3, p0, p1}, Lcom/termux/x11/input/TouchInputHandler$DexListener;-><init>(Lcom/termux/x11/input/TouchInputHandler;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mDexListener:Lcom/termux/x11/input/TouchInputHandler$DexListener;

    .line 206
    if-eqz p4, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/termux/x11/input/TouchInputHandler;

    iget-object v5, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    invoke-direct {v3, p1, v5, p3, v4}, Lcom/termux/x11/input/TouchInputHandler;-><init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/input/RenderData;Lcom/termux/x11/input/InputEventSender;Z)V

    :goto_1
    iput-object v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    .line 208
    invoke-static {}, Lcom/termux/x11/input/TouchInputHandler;->refreshInputDevices()V

    .line 209
    iget-object v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    const-string v4, "input"

    invoke-virtual {v3, v4}, Lcom/termux/x11/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager;

    new-instance v4, Lcom/termux/x11/input/TouchInputHandler$2;

    invoke-direct {v4, p0}, Lcom/termux/x11/input/TouchInputHandler$2;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    invoke-virtual {v3, v4, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 233
    return-void

    .line 173
    .end local v0    # "density":F
    .end local v2    # "listener":Lcom/termux/x11/input/TouchInputHandler$GestureListener;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static synthetic access$1000(Lcom/termux/x11/input/TouchInputHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 54
    invoke-direct {p0}, Lcom/termux/x11/input/TouchInputHandler;->onSwipe()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/SwipeDetector;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 54
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipePinchDetector:Lcom/termux/x11/input/SwipeDetector;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/termux/x11/input/TouchInputHandler;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->moveCursorToScreenPoint(FF)V

    return-void
.end method

.method static synthetic access$1300(Lcom/termux/x11/input/TouchInputHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 54
    iget-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mSuppressCursorMovement:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/termux/x11/input/TouchInputHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/termux/x11/input/TouchInputHandler;->mSuppressCursorMovement:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 54
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/termux/x11/input/TouchInputHandler;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->moveCursorByOffset(FF)V

    return-void
.end method

.method static synthetic access$1600(Lcom/termux/x11/input/TouchInputHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 54
    iget-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mIsDragging:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/termux/x11/input/TouchInputHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/termux/x11/input/TouchInputHandler;->mIsDragging:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/termux/x11/input/TouchInputHandler;)Landroid/util/DisplayMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 54
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/TouchInputHandler;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 54
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/TapGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 54
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTapDetector:Lcom/termux/x11/input/TapGestureDetector;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 54
    sget v0, Lcom/termux/x11/input/TouchInputHandler;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 54
    sput p0, Lcom/termux/x11/input/TouchInputHandler;->mDisplayRotation:I

    return p0
.end method

.method static synthetic access$300()Landroid/hardware/display/DisplayManager;
    .locals 1

    .line 54
    sget-object v0, Lcom/termux/x11/input/TouchInputHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/MainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 54
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputStrategyInterface;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 54
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 54
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    return-object v0
.end method

.method static synthetic access$800(Lcom/termux/x11/input/TouchInputHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 54
    iget-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipeCompleted:Z

    return v0
.end method

.method static synthetic access$924(Lcom/termux/x11/input/TouchInputHandler;F)F
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p1, "x1"    # F

    .line 54
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTotalMotionY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTotalMotionY:F

    return v0
.end method

.method public static isExternal(Landroid/view/InputDevice;)Z
    .locals 4
    .param p0, "d"    # Landroid/view/InputDevice;

    .line 420
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 421
    invoke-virtual {p0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v0

    return v0

    .line 426
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/view/InputDevice;

    const-string v2, "isExternal"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 427
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static isMediaSessionKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 776
    sparse-switch p0, :sswitch_data_0

    .line 789
    const/4 v0, 0x0

    return v0

    .line 787
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic lambda$extractUserActionFromPreferences$7(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/Integer;
    .param p1, "down"    # Ljava/lang/Boolean;

    .line 493
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->fullscreen:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->fullscreen:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->put(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/Integer;
    .param p1, "down"    # Ljava/lang/Boolean;

    .line 97
    return-void
.end method

.method static synthetic lambda$refreshInputDevices$1(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/InputDevice;)V
    .locals 8
    .param p0, "stylusAvailable"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "externalKeyboardAvailable"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "device"    # Landroid/view/InputDevice;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found device \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 249
    const/16 v1, 0x4002

    invoke-virtual {p2, v1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v2

    const-string v3, "external "

    const-string v4, ""

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/termux/x11/input/TouchInputHandler;->isExternal(Landroid/view/InputDevice;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "stylus "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    const/16 v2, 0x101

    invoke-virtual {p2, v2}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v5

    if-ne v5, v6, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/termux/x11/input/TouchInputHandler;->isExternal(Landroid/view/InputDevice;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "keyboard "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "sources "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    invoke-virtual {p2}, Landroid/view/InputDevice;->getSources()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v5, v7

    const-string v3, "0x%08X"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string v3, "DEVICES"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p2, v1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 256
    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v0

    if-ne v0, v6, :cond_5

    invoke-static {p2}, Lcom/termux/x11/input/TouchInputHandler;->isExternal(Landroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 257
    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 258
    :cond_5
    return-void
.end method

.method private moveCursorByOffset(FF)V
    .locals 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 560
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    instance-of v0, v0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    neg-float v1, p1

    neg-float v2, p2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/input/InputEventSender;->sendCursorMove(FFZ)V

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    instance-of v0, v0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    invoke-virtual {v0}, Lcom/termux/x11/input/RenderData;->getCursorPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 564
    .local v0, "cursorPos":Landroid/graphics/PointF;
    neg-float v1, p1

    neg-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->offset(FF)V

    .line 565
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget v2, v2, Lcom/termux/x11/input/RenderData;->screenWidth:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget v4, v4, Lcom/termux/x11/input/RenderData;->screenHeight:I

    int-to-float v4, v4

    invoke-static {v2, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 566
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/termux/x11/input/RenderData;->setCursorPosition(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/termux/x11/input/InputEventSender;->sendCursorMove(FFZ)V

    .line 569
    .end local v0    # "cursorPos":Landroid/graphics/PointF;
    :cond_1
    :goto_0
    return-void
.end method

.method private moveCursorToScreenPoint(FF)V
    .locals 6
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F

    .line 573
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    instance-of v0, v0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    instance-of v0, v0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;

    if-eqz v0, :cond_1

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget-object v0, v0, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, p1

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget-object v1, v1, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, p2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    move-object v1, v2

    .line 575
    .local v1, "imagePoint":[F
    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    aget v4, v1, v3

    aget v5, v1, v0

    invoke-virtual {v2, v4, v5}, Lcom/termux/x11/input/RenderData;->setCursorPosition(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    aget v4, v1, v3

    float-to-int v4, v4

    int-to-float v4, v4

    aget v0, v1, v0

    invoke-virtual {v2, v4, v0, v3}, Lcom/termux/x11/input/InputEventSender;->sendCursorMove(FFZ)V

    .line 578
    .end local v1    # "imagePoint":[F
    :cond_1
    return-void
.end method

.method private onSwipe()Z
    .locals 6

    .line 582
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTotalMotionY:F

    iget v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipeThreshold:F

    const/4 v2, 0x0

    .line 583
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 582
    const/4 v4, 0x1

    .line 583
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 582
    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->swipeDownAction:Lj$/util/function/BiConsumer;

    invoke-interface {v0, v3, v5}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 584
    :cond_0
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTotalMotionY:F

    iget v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipeThreshold:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->swipeUpAction:Lj$/util/function/BiConsumer;

    invoke-interface {v0, v3, v5}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 589
    :goto_0
    iput-boolean v4, p0, Lcom/termux/x11/input/TouchInputHandler;->mSuppressCursorMovement:Z

    .line 590
    iput-boolean v4, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipeCompleted:Z

    .line 591
    return v4

    .line 587
    :cond_1
    return v2
.end method

.method public static refreshInputDevices()V
    .locals 6

    .line 240
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 241
    .local v0, "stylusAvailable":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v1, v2

    .line 242
    .local v1, "externalKeyboardAvailable":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "external keyboard connected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DEVICES"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    invoke-static {v2}, Lj$/util/DesugarArrays;->stream([I)Lj$/util/stream/IntStream;

    move-result-object v2

    new-instance v5, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda10;

    invoke-direct {v5}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda10;-><init>()V

    .line 244
    invoke-interface {v2, v5}, Lj$/util/stream/IntStream;->mapToObj(Lj$/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda6;-><init>()V

    .line 245
    invoke-interface {v2, v5}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0, v1}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 246
    invoke-interface {v2, v5}, Lj$/util/stream/Stream;->forEach(Lj$/util/function/Consumer;)V

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requesting stylus "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v2}, Lcom/termux/x11/LorieView;->requestStylusEnabled(Z)V

    .line 262
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/termux/x11/MainActivity;->setExternalKeyboardConnected(Z)V

    .line 263
    return-void
.end method

.method private resetTransformation()V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget v0, v0, Lcom/termux/x11/input/RenderData;->screenWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget v1, v1, Lcom/termux/x11/input/RenderData;->imageWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 370
    .local v0, "sx":F
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget v1, v1, Lcom/termux/x11/input/RenderData;->screenHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget v2, v2, Lcom/termux/x11/input/RenderData;->imageHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 371
    .local v1, "sy":F
    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget-object v2, v2, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 372
    return-void
.end method


# virtual methods
.method public extractIntentFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "p"    # Lcom/termux/x11/Prefs;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 503
    iget-object v0, p1, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;

    .line 504
    .local v0, "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 505
    return-object v1

    .line 507
    :cond_0
    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "restart activity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v3, "release pointer and keyboard capture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_2
    const-string v3, "open preferences"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v3, "exit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_4
    const-string v3, "toggle additional key bar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "toggle soft keyboard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const/high16 v3, 0xc000000

    packed-switch v2, :pswitch_data_0

    .line 525
    return-object v1

    .line 521
    :pswitch_0
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    new-instance v2, Lcom/termux/x11/input/TouchInputHandler$4;

    const-string v4, "com.termux.x11.ACTION_CUSTOM"

    invoke-direct {v2, p0, v4, p2}, Lcom/termux/x11/input/TouchInputHandler$4;-><init>(Lcom/termux/x11/input/TouchInputHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 515
    :pswitch_1
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    .line 516
    invoke-virtual {v2}, Lcom/termux/x11/MainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 515
    invoke-static {v1, p3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 509
    :pswitch_2
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    new-instance v2, Lcom/termux/x11/input/TouchInputHandler$3;

    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    const-class v5, Lcom/termux/x11/LoriePreferences;

    invoke-direct {v2, p0, v4, v5}, Lcom/termux/x11/input/TouchInputHandler$3;-><init>(Lcom/termux/x11/input/TouchInputHandler;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, p3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x540f04af -> :sswitch_5
        -0x18b72fdb -> :sswitch_4
        0x2fb91e -> :sswitch_3
        0x23da9222 -> :sswitch_2
        0x480e12b2 -> :sswitch_1
        0x7fce9600 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public extractTitleFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "p"    # Lcom/termux/x11/Prefs;
    .param p2, "name"    # Ljava/lang/String;

    .line 531
    iget-object v0, p1, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;

    .line 532
    .local v0, "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 533
    return-object v1

    .line 535
    :cond_0
    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v3}, Lcom/termux/x11/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notification_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v5}, Lcom/termux/x11/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "string"

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 537
    .local v3, "id":I
    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public extractUserActionFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Lj$/util/function/BiConsumer;
    .locals 3
    .param p1, "p"    # Lcom/termux/x11/Prefs;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/x11/Prefs;",
            "Ljava/lang/String;",
            ")",
            "Lj$/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 483
    iget-object v0, p1, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;

    .line 484
    .local v0, "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    if-nez v0, :cond_0

    .line 485
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Lj$/util/function/BiConsumer;

    return-object v1

    .line 487
    :cond_0
    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "restart activity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "release pointer and keyboard capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v2, "open preferences"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "send volume up"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_4
    const-string v2, "exit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v2, "toggle additional key bar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v2, "send media action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_7
    const-string v2, "send volume down"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_8
    const-string v2, "toggle fullscreen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_9
    const-string v2, "toggle soft keyboard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 498
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Lj$/util/function/BiConsumer;

    return-object v1

    .line 497
    :pswitch_0
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    .line 496
    :pswitch_1
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    .line 495
    :pswitch_2
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda2;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    .line 494
    :pswitch_3
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda1;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    .line 493
    :pswitch_4
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda0;-><init>()V

    return-object v1

    .line 492
    :pswitch_5
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda12;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    .line 491
    :pswitch_6
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda11;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    .line 490
    :pswitch_7
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda10;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    .line 489
    :pswitch_8
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda9;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    .line 488
    :pswitch_9
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda8;-><init>(Lcom/termux/x11/input/TouchInputHandler;Lcom/termux/x11/Prefs;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x540f04af -> :sswitch_9
        -0x51c183f9 -> :sswitch_8
        -0x40db02b0 -> :sswitch_7
        -0x37f0f476 -> :sswitch_6
        -0x18b72fdb -> :sswitch_5
        0x2fb91e -> :sswitch_4
        0x12503ac9 -> :sswitch_3
        0x23da9222 -> :sswitch_2
        0x480e12b2 -> :sswitch_1
        0x7fce9600 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

.method public handleClientSizeChanged(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 375
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iput p1, v0, Lcom/termux/x11/input/RenderData;->screenWidth:I

    .line 376
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iput p2, v0, Lcom/termux/x11/input/RenderData;->screenHeight:I

    .line 378
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->handleClientSizeChanged(II)V

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/termux/x11/input/TouchInputHandler;->resetTransformation()V

    .line 382
    return-void
.end method

.method public handleHostSizeChanged(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 385
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iput p1, v0, Lcom/termux/x11/input/RenderData;->imageWidth:I

    .line 386
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iput p2, v0, Lcom/termux/x11/input/RenderData;->imageHeight:I

    .line 388
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->handleHostSizeChanged(II)V

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/termux/x11/input/TouchInputHandler;->resetTransformation()V

    .line 392
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0}, Lcom/termux/x11/MainActivity;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 393
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view0"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 279
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    const v1, 0x100008

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 280
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p3}, Lcom/termux/x11/input/TouchInputHandler;->isDexEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/termux/x11/input/TouchInputHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 283
    :cond_2
    const/4 v0, 0x2

    const/4 v3, 0x0

    if-eq p1, p2, :cond_3

    .line 284
    new-array v4, v0, [I

    .line 285
    .local v4, "view0Location":[I
    new-array v5, v0, [I

    .line 287
    .local v5, "viewLocation":[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 288
    invoke-virtual {p2, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 290
    aget v6, v5, v3

    aget v7, v4, v3

    sub-int/2addr v6, v7

    .line 291
    .local v6, "offsetX":I
    aget v7, v5, v2

    aget v8, v4, v2

    sub-int/2addr v7, v8

    .line 293
    .local v7, "offsetY":I
    iget-object v8, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iput v6, v8, Lcom/termux/x11/input/RenderData;->offsetX:I

    .line 294
    iget-object v8, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iput v7, v8, Lcom/termux/x11/input/RenderData;->offsetY:I

    .line 295
    neg-int v8, v6

    int-to-float v8, v8

    neg-int v9, v7

    int-to-float v9, v9

    invoke-virtual {p3, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 299
    .end local v4    # "view0Location":[I
    .end local v5    # "viewLocation":[I
    .end local v6    # "offsetX":I
    .end local v7    # "offsetY":I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    .line 300
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 302
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_5

    .line 303
    invoke-virtual {p0, v2}, Lcom/termux/x11/input/TouchInputHandler;->setCapturingEnabled(Z)V

    .line 305
    :cond_5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-eq v4, v0, :cond_10

    .line 306
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_6

    goto/16 :goto_3

    .line 309
    :cond_6
    invoke-virtual {p0, p3}, Lcom/termux/x11/input/TouchInputHandler;->isDexEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8

    .line 310
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v4, 0x2002

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_8

    .line 311
    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v4, 0x20004

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_9

    .line 312
    :cond_8
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mHMListener:Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;

    invoke-virtual {v0, p2, p3}, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 314
    :cond_9
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v2, :cond_f

    .line 316
    invoke-virtual {p0, p3}, Lcom/termux/x11/input/TouchInputHandler;->isDexEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mDexListener:Lcom/termux/x11/input/TouchInputHandler$DexListener;

    invoke-virtual {v0, p2, p3}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 317
    return v2

    .line 322
    :cond_a
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    instance-of v0, v0, Lcom/termux/x11/input/InputStrategyInterface$NullInputStrategy;

    if-eqz v0, :cond_b

    .line 323
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    invoke-virtual {v0, p3, v4}, Lcom/termux/x11/input/InputEventSender;->sendTouchEvent(Landroid/view/MotionEvent;Lcom/termux/x11/input/RenderData;)V

    goto :goto_0

    .line 325
    :cond_b
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    invoke-interface {v0, p3}, Lcom/termux/x11/input/InputStrategyInterface;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mScroller:Landroid/view/GestureDetector;

    invoke-virtual {v0, p3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 330
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTapDetector:Lcom/termux/x11/input/TapGestureDetector;

    invoke-virtual {v0, p3}, Lcom/termux/x11/input/TapGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 331
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipePinchDetector:Lcom/termux/x11/input/SwipeDetector;

    invoke-virtual {v0, p3}, Lcom/termux/x11/input/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 334
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    .line 335
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler;->currentBS:I

    .line 336
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->buttons:[[I

    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_d

    aget-object v5, v0, v4

    .line 337
    .local v5, "button":[I
    aget v6, v5, v3

    invoke-virtual {p0, v6}, Lcom/termux/x11/input/TouchInputHandler;->isMouseButtonChanged(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 338
    iget-object v6, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    aget v7, v5, v2

    aget v8, v5, v3

    invoke-virtual {p0, v8}, Lcom/termux/x11/input/TouchInputHandler;->mouseButtonDown(I)Z

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v7, v8, v2}, Lcom/termux/x11/input/InputEventSender;->sendMouseEvent(Landroid/graphics/PointF;IZZ)V

    .line 336
    .end local v5    # "button":[I
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 339
    :cond_d
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler;->currentBS:I

    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler;->savedBS:I

    .line 341
    :cond_e
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    .line 349
    :sswitch_0
    const/16 v0, 0x9

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/high16 v1, -0x3d380000    # -100.0f

    mul-float v0, v0, v1

    .line 350
    .local v0, "scrollY":F
    const/16 v3, 0xa

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    mul-float v3, v3, v1

    .line 352
    .local v3, "scrollX":F
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    invoke-virtual {v1, v3, v0}, Lcom/termux/x11/input/InputEventSender;->sendMouseWheelEvent(FF)V

    .line 353
    return v2

    .line 356
    .end local v0    # "scrollY":F
    .end local v3    # "scrollX":F
    :sswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTotalMotionY:F

    .line 357
    goto :goto_2

    .line 343
    :sswitch_2
    iput-boolean v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mSuppressCursorMovement:Z

    .line 344
    iput-boolean v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipeCompleted:Z

    .line 345
    iput-boolean v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mIsDragging:Z

    .line 346
    nop

    .line 362
    :goto_2
    return v2

    .line 365
    :cond_f
    return v3

    .line 307
    :cond_10
    :goto_3
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mStylusListener:Lcom/termux/x11/input/TouchInputHandler$StylusListener;

    invoke-virtual {v0, p3}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x5 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method isDexEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 270
    const/16 v0, 0x3002

    .line 271
    .local v0, "SOURCE_DEX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const v2, 0x100008

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 271
    :goto_0
    return v2
.end method

.method isMouseButtonChanged(I)Z
    .locals 2
    .param p1, "mask"    # I

    .line 163
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler;->savedBS:I

    and-int/2addr v0, p1

    iget v1, p0, Lcom/termux/x11/input/TouchInputHandler;->currentBS:I

    and-int/2addr v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$extractUserActionFromPreferences$10$com-termux-x11-input-TouchInputHandler(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 496
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    return-void
.end method

.method synthetic lambda$extractUserActionFromPreferences$11$com-termux-x11-input-TouchInputHandler(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 497
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    return-void
.end method

.method synthetic lambda$extractUserActionFromPreferences$2$com-termux-x11-input-TouchInputHandler(Lcom/termux/x11/Prefs;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "p"    # Lcom/termux/x11/Prefs;
    .param p2, "key"    # Ljava/lang/Integer;
    .param p3, "down"    # Ljava/lang/Boolean;

    .line 488
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9e

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/termux/x11/Prefs;->enableFloatBallMenu:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-static {v0}, Lcom/termux/x11/MainActivity;->toggleKeyboardVisibility(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$extractUserActionFromPreferences$3$com-termux-x11-input-TouchInputHandler(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 489
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->toggleExtraKeys()V

    :cond_0
    return-void
.end method

.method synthetic lambda$extractUserActionFromPreferences$4$com-termux-x11-input-TouchInputHandler(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 490
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/x11/MainActivity;->openPreference(Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$extractUserActionFromPreferences$5$com-termux-x11-input-TouchInputHandler(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 491
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->stopDesktop()V

    :cond_0
    return-void
.end method

.method synthetic lambda$extractUserActionFromPreferences$6$com-termux-x11-input-TouchInputHandler(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 492
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/termux/x11/input/TouchInputHandler;->setCapturingEnabled(Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$extractUserActionFromPreferences$8$com-termux-x11-input-TouchInputHandler(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 494
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->prepareToExit()V

    :cond_0
    return-void
.end method

.method synthetic lambda$extractUserActionFromPreferences$9$com-termux-x11-input-TouchInputHandler(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 495
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    return-void
.end method

.method mouseButtonDown(I)Z
    .locals 1
    .param p1, "mask"    # I

    .line 167
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler;->currentBS:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reloadPreferences(Lcom/termux/x11/Prefs;)V
    .locals 7
    .param p1, "p"    # Lcom/termux/x11/Prefs;

    .line 434
    iget-object v0, p1, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/x11/input/TouchInputHandler;->setInputMode(I)V

    .line 435
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->tapToMove:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->tapToMove:Z

    .line 436
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->preferScancodes:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->preferScancodes:Z

    .line 437
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->pointerCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->pointerCapture:Z

    .line 438
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->scaleTouchpad:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 439
    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 440
    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    const-string v4, "native"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->scaleTouchpad:Z

    .line 441
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->capturedPointerSpeedFactor:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;->get()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    iput v1, v0, Lcom/termux/x11/input/InputEventSender;->capturedPointerSpeedFactor:F

    .line 442
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->dexMetaKeyCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->dexMetaKeyCapture:Z

    .line 443
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->stylusIsMouse:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->stylusIsMouse:Z

    .line 444
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->stylusButtonContactModifierMode:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->stylusButtonContactModifierMode:Z

    .line 445
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->pauseKeyInterceptingWithEsc:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->pauseKeyInterceptingWithEsc:Z

    .line 446
    iget-object v0, p1, Lcom/termux/x11/Prefs;->transformCapturedPointer:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v1, "ud"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_1
    const-string v1, "cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_2
    const-string v1, "at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_3
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 460
    sput v3, Lcom/termux/x11/input/TouchInputHandler;->capturedPointerTransformation:I

    goto :goto_3

    .line 457
    :pswitch_0
    sput v6, Lcom/termux/x11/input/TouchInputHandler;->capturedPointerTransformation:I

    .line 458
    goto :goto_3

    .line 454
    :pswitch_1
    sput v4, Lcom/termux/x11/input/TouchInputHandler;->capturedPointerTransformation:I

    .line 455
    goto :goto_3

    .line 451
    :pswitch_2
    sput v2, Lcom/termux/x11/input/TouchInputHandler;->capturedPointerTransformation:I

    .line 452
    goto :goto_3

    .line 448
    :pswitch_3
    sput v5, Lcom/termux/x11/input/TouchInputHandler;->capturedPointerTransformation:I

    .line 449
    nop

    .line 463
    :goto_3
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0}, Lcom/termux/x11/MainActivity;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 465
    iget-object v0, p1, Lcom/termux/x11/Prefs;->pointerCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->hasPointerCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->releasePointerCapture()V

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-boolean v0, v0, Lcom/termux/x11/input/InputEventSender;->pauseKeyInterceptingWithEsc:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->hasPointerCapture()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler;->keyIntercepting:Z

    .line 469
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-boolean v1, v1, Lcom/termux/x11/input/InputEventSender;->dexMetaKeyCapture:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/termux/x11/input/TouchInputHandler;->keyIntercepting:Z

    if-eqz v1, :cond_5

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    :goto_6
    invoke-static {v0, v2}, Lcom/termux/x11/utils/SamsungDexUtils;->dexMetaKeyCapture(Landroid/app/Activity;Z)V

    .line 471
    const-string v0, "swipeUp"

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/input/TouchInputHandler;->extractUserActionFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Lj$/util/function/BiConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->swipeUpAction:Lj$/util/function/BiConsumer;

    .line 472
    const-string v0, "swipeDown"

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/input/TouchInputHandler;->extractUserActionFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Lj$/util/function/BiConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->swipeDownAction:Lj$/util/function/BiConsumer;

    .line 473
    const-string v0, "volumeUp"

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/input/TouchInputHandler;->extractUserActionFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Lj$/util/function/BiConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeUpAction:Lj$/util/function/BiConsumer;

    .line 474
    const-string v0, "volumeDown"

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/input/TouchInputHandler;->extractUserActionFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Lj$/util/function/BiConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeDownAction:Lj$/util/function/BiConsumer;

    .line 476
    const-string v0, "mediaKeys"

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/input/TouchInputHandler;->extractUserActionFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Lj$/util/function/BiConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mediaKeysAction:Lj$/util/function/BiConsumer;

    .line 478
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    if-eqz v0, :cond_6

    .line 479
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p1}, Lcom/termux/x11/input/TouchInputHandler;->reloadPreferences(Lcom/termux/x11/Prefs;)V

    .line 480
    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_3
        0xc33 -> :sswitch_2
        0xc60 -> :sswitch_1
        0xe8f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/KeyEvent;

    .line 793
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 795
    .local v0, "k":I
    sget-boolean v1, Lcom/termux/x11/MainActivity;->mLorieViewConnected:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 796
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 797
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->prepareToExit()V

    .line 800
    :cond_0
    return v3

    .line 803
    :cond_1
    invoke-static {v0}, Lcom/termux/x11/input/TouchInputHandler;->isMediaSessionKey(I)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 804
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mediaKeysAction:Lj$/util/function/BiConsumer;

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Lj$/util/function/BiConsumer;

    if-ne v1, v2, :cond_2

    .line 805
    return v3

    .line 807
    :cond_2
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mediaKeysAction:Lj$/util/function/BiConsumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 808
    return v4

    .line 811
    :cond_4
    const/16 v1, 0x19

    if-ne v0, v1, :cond_7

    .line 812
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeDownAction:Lj$/util/function/BiConsumer;

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Lj$/util/function/BiConsumer;

    if-ne v1, v2, :cond_5

    .line 813
    return v3

    .line 815
    :cond_5
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeDownAction:Lj$/util/function/BiConsumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_6

    const/4 v3, 0x1

    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 816
    return v4

    .line 819
    :cond_7
    const/16 v1, 0x18

    if-ne v0, v1, :cond_a

    .line 820
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeUpAction:Lj$/util/function/BiConsumer;

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Lj$/util/function/BiConsumer;

    if-ne v1, v2, :cond_8

    .line 821
    return v3

    .line 823
    :cond_8
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeUpAction:Lj$/util/function/BiConsumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_9

    const/4 v3, 0x1

    :cond_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 824
    return v4

    .line 827
    :cond_a
    if-ne v0, v2, :cond_14

    .line 828
    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_f

    const v1, 0x20004

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_0

    .line 836
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    const/16 v2, 0x9e

    if-ne v1, v2, :cond_c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    if-nez v1, :cond_14

    .line 837
    :cond_d
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->backButtonAction:Lj$/util/function/BiConsumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_e

    const/4 v3, 0x1

    :cond_e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 838
    return v4

    .line 829
    :cond_f
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-eqz v1, :cond_10

    .line 830
    return v4

    .line 831
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_13

    .line 832
    :cond_11
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_12

    const/4 v9, 0x1

    goto :goto_1

    :cond_12
    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x3

    invoke-virtual/range {v5 .. v10}, Lcom/termux/x11/LorieView;->sendMouseEvent(FFIZZ)V

    .line 833
    :cond_13
    return v4

    .line 842
    :cond_14
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    invoke-virtual {v1, p1}, Lcom/termux/x11/input/InputEventSender;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public setCapturingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 407
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-boolean v0, v0, Lcom/termux/x11/input/InputEventSender;->pointerCapture:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->requestPointerCapture()V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->releasePointerCapture()V

    .line 412
    :goto_0
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-boolean v0, v0, Lcom/termux/x11/input/InputEventSender;->pauseKeyInterceptingWithEsc:Z

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-boolean v0, v0, Lcom/termux/x11/input/InputEventSender;->dexMetaKeyCapture:Z

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-static {v0, p1}, Lcom/termux/x11/utils/SamsungDexUtils;->dexMetaKeyCapture(Landroid/app/Activity;Z)V

    .line 415
    :cond_1
    iput-boolean p1, p0, Lcom/termux/x11/input/TouchInputHandler;->keyIntercepting:Z

    .line 417
    :cond_2
    return-void
.end method

.method public setInputMode(I)V
    .locals 4
    .param p1, "inputMode"    # I

    .line 396
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    invoke-direct {v0, v1}, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;-><init>(Lcom/termux/x11/input/InputEventSender;)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    goto :goto_0

    .line 398
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 399
    new-instance v0, Lcom/termux/x11/input/InputStrategyInterface$NullInputStrategy;

    invoke-direct {v0}, Lcom/termux/x11/input/InputStrategyInterface$NullInputStrategy;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    goto :goto_0

    .line 400
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 401
    new-instance v0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;-><init>(Lcom/termux/x11/input/RenderData;Lcom/termux/x11/input/InputEventSender;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    goto :goto_0

    .line 403
    :cond_2
    new-instance v0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    invoke-direct {v0, v1}, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;-><init>(Lcom/termux/x11/input/InputEventSender;)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    .line 404
    :goto_0
    return-void
.end method

.method public setLongPressedDelay(I)V
    .locals 1
    .param p1, "delay"    # I

    .line 267
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTapDetector:Lcom/termux/x11/input/TapGestureDetector;

    invoke-virtual {v0, p1}, Lcom/termux/x11/input/TapGestureDetector;->setLongPressedDelay(I)V

    .line 268
    return-void
.end method

.method public setupNotification(Lcom/termux/x11/Prefs;Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4
    .param p1, "prefs"    # Lcom/termux/x11/Prefs;
    .param p2, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 543
    const-string v0, "notificationTap"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/termux/x11/input/TouchInputHandler;->extractIntentFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v0

    .local v2, "i":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 546
    :cond_0
    const/4 v0, 0x1

    const-string v3, "notificationButton0"

    invoke-virtual {p0, p1, v3, v0}, Lcom/termux/x11/input/TouchInputHandler;->extractIntentFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {p0, p1, v3}, Lcom/termux/x11/input/TouchInputHandler;->extractTitleFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 549
    :cond_1
    const/4 v0, 0x2

    const-string v3, "notificationButton1"

    invoke-virtual {p0, p1, v3, v0}, Lcom/termux/x11/input/TouchInputHandler;->extractIntentFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_2

    .line 550
    invoke-virtual {p0, p1, v3}, Lcom/termux/x11/input/TouchInputHandler;->extractTitleFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 552
    :cond_2
    return-object p2
.end method

.method public shouldInterceptKeys()Z
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-boolean v0, v0, Lcom/termux/x11/input/InputEventSender;->pauseKeyInterceptingWithEsc:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler;->keyIntercepting:Z

    if-eqz v0, :cond_0

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

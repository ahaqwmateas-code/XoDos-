.class public Lcom/termux/x11/LorieView;
.super Landroid/view/SurfaceView;
.source "LorieView.java"

# interfaces
.implements Lcom/termux/x11/input/InputStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/LorieView$Callback;,
        Lcom/termux/x11/LorieView$PixelFormat;
    }
.end annotation


# static fields
.field private static clipboardSyncEnabled:Z

.field private static hardwareKbdScancodesWorkaround:Z

.field static final imeBuggyKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private clipboard:Landroid/content/ClipboardManager;

.field clipboardListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field commitedText:Z

.field public cursorLocker:Lcom/termux/x11/controller/core/CursorLocker;

.field public final inputDeviceManager:Lcom/termux/x11/controller/xserver/InputDeviceManager;

.field keyReleaseHandler:Landroid/os/Handler;

.field public final keyboard:Lcom/termux/x11/controller/xserver/Keyboard;

.field private lastClipboardTimestamp:J

.field private mCallback:Lcom/termux/x11/LorieView$Callback;

.field private final mConnection:Landroid/view/inputmethod/InputConnection;

.field private final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field private final mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private final p:Landroid/graphics/Point;

.field public final pointer:Lcom/termux/x11/controller/xserver/Pointer;

.field public screenInfo:Lcom/termux/x11/ScreenInfo;

.field public winHandler:Lcom/termux/x11/controller/winhandler/WinHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 418
    const/4 v0, 0x0

    sput-boolean v0, Lcom/termux/x11/LorieView;->clipboardSyncEnabled:Z

    .line 419
    sput-boolean v0, Lcom/termux/x11/LorieView;->hardwareKbdScancodesWorkaround:Z

    .line 812
    nop

    .line 813
    const/16 v0, 0x43

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 814
    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 815
    const/16 v2, 0x72

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 816
    const/16 v3, 0x3b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 817
    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 812
    invoke-static {v0, v1, v2, v3, v4}, Lcom/termux/x11/LorieView$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/termux/x11/LorieView;->imeBuggyKeys:Ljava/util/Set;

    .line 1023
    const-string v0, "Xlorie"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 657
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-static {p0}, Lcom/termux/x11/controller/xserver/Keyboard;->createKeyboard(Lcom/termux/x11/LorieView;)Lcom/termux/x11/controller/xserver/Keyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/LorieView;->keyboard:Lcom/termux/x11/controller/xserver/Keyboard;

    .line 350
    new-instance v0, Lcom/termux/x11/controller/xserver/Pointer;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/xserver/Pointer;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    .line 351
    new-instance v0, Lcom/termux/x11/controller/xserver/InputDeviceManager;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/xserver/InputDeviceManager;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->inputDeviceManager:Lcom/termux/x11/controller/xserver/InputDeviceManager;

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/termux/x11/LorieView;->lastClipboardTimestamp:J

    .line 420
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 422
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/LorieView;->commitedText:Z

    .line 424
    new-instance v1, Lcom/termux/x11/InputConnectionWrapper;

    new-instance v2, Lcom/termux/x11/LorieView$1;

    invoke-direct {v2, p0, p0, v0}, Lcom/termux/x11/LorieView$1;-><init>(Lcom/termux/x11/LorieView;Landroid/view/View;Z)V

    invoke-direct {v1, v2}, Lcom/termux/x11/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;)V

    iput-object v1, p0, Lcom/termux/x11/LorieView;->mConnection:Landroid/view/inputmethod/InputConnection;

    .line 630
    new-instance v0, Lcom/termux/x11/LorieView$2;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$2;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 820
    new-instance v0, Lcom/termux/x11/LorieView$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/LorieView$4;-><init>(Lcom/termux/x11/LorieView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->keyReleaseHandler:Landroid/os/Handler;

    .line 865
    new-instance v0, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->clipboardListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 658
    invoke-direct {p0}, Lcom/termux/x11/LorieView;->init()V

    .line 659
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 662
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 349
    invoke-static {p0}, Lcom/termux/x11/controller/xserver/Keyboard;->createKeyboard(Lcom/termux/x11/LorieView;)Lcom/termux/x11/controller/xserver/Keyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/LorieView;->keyboard:Lcom/termux/x11/controller/xserver/Keyboard;

    .line 350
    new-instance v0, Lcom/termux/x11/controller/xserver/Pointer;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/xserver/Pointer;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    .line 351
    new-instance v0, Lcom/termux/x11/controller/xserver/InputDeviceManager;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/xserver/InputDeviceManager;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->inputDeviceManager:Lcom/termux/x11/controller/xserver/InputDeviceManager;

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/termux/x11/LorieView;->lastClipboardTimestamp:J

    .line 420
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 422
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/LorieView;->commitedText:Z

    .line 424
    new-instance v1, Lcom/termux/x11/InputConnectionWrapper;

    new-instance v2, Lcom/termux/x11/LorieView$1;

    invoke-direct {v2, p0, p0, v0}, Lcom/termux/x11/LorieView$1;-><init>(Lcom/termux/x11/LorieView;Landroid/view/View;Z)V

    invoke-direct {v1, v2}, Lcom/termux/x11/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;)V

    iput-object v1, p0, Lcom/termux/x11/LorieView;->mConnection:Landroid/view/inputmethod/InputConnection;

    .line 630
    new-instance v0, Lcom/termux/x11/LorieView$2;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$2;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 820
    new-instance v0, Lcom/termux/x11/LorieView$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/LorieView$4;-><init>(Lcom/termux/x11/LorieView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->keyReleaseHandler:Landroid/os/Handler;

    .line 865
    new-instance v0, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->clipboardListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 663
    invoke-direct {p0}, Lcom/termux/x11/LorieView;->init()V

    .line 664
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 667
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 349
    invoke-static {p0}, Lcom/termux/x11/controller/xserver/Keyboard;->createKeyboard(Lcom/termux/x11/LorieView;)Lcom/termux/x11/controller/xserver/Keyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/LorieView;->keyboard:Lcom/termux/x11/controller/xserver/Keyboard;

    .line 350
    new-instance v0, Lcom/termux/x11/controller/xserver/Pointer;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/xserver/Pointer;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    .line 351
    new-instance v0, Lcom/termux/x11/controller/xserver/InputDeviceManager;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/xserver/InputDeviceManager;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->inputDeviceManager:Lcom/termux/x11/controller/xserver/InputDeviceManager;

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/termux/x11/LorieView;->lastClipboardTimestamp:J

    .line 420
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 422
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/LorieView;->commitedText:Z

    .line 424
    new-instance v1, Lcom/termux/x11/InputConnectionWrapper;

    new-instance v2, Lcom/termux/x11/LorieView$1;

    invoke-direct {v2, p0, p0, v0}, Lcom/termux/x11/LorieView$1;-><init>(Lcom/termux/x11/LorieView;Landroid/view/View;Z)V

    invoke-direct {v1, v2}, Lcom/termux/x11/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;)V

    iput-object v1, p0, Lcom/termux/x11/LorieView;->mConnection:Landroid/view/inputmethod/InputConnection;

    .line 630
    new-instance v0, Lcom/termux/x11/LorieView$2;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$2;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 820
    new-instance v0, Lcom/termux/x11/LorieView$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/LorieView$4;-><init>(Lcom/termux/x11/LorieView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->keyReleaseHandler:Landroid/os/Handler;

    .line 865
    new-instance v0, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->clipboardListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 668
    invoke-direct {p0}, Lcom/termux/x11/LorieView;->init()V

    .line 669
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 673
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 349
    invoke-static {p0}, Lcom/termux/x11/controller/xserver/Keyboard;->createKeyboard(Lcom/termux/x11/LorieView;)Lcom/termux/x11/controller/xserver/Keyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/LorieView;->keyboard:Lcom/termux/x11/controller/xserver/Keyboard;

    .line 350
    new-instance v0, Lcom/termux/x11/controller/xserver/Pointer;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/xserver/Pointer;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    .line 351
    new-instance v0, Lcom/termux/x11/controller/xserver/InputDeviceManager;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/xserver/InputDeviceManager;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->inputDeviceManager:Lcom/termux/x11/controller/xserver/InputDeviceManager;

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/termux/x11/LorieView;->lastClipboardTimestamp:J

    .line 420
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 422
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/LorieView;->commitedText:Z

    .line 424
    new-instance v1, Lcom/termux/x11/InputConnectionWrapper;

    new-instance v2, Lcom/termux/x11/LorieView$1;

    invoke-direct {v2, p0, p0, v0}, Lcom/termux/x11/LorieView$1;-><init>(Lcom/termux/x11/LorieView;Landroid/view/View;Z)V

    invoke-direct {v1, v2}, Lcom/termux/x11/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;)V

    iput-object v1, p0, Lcom/termux/x11/LorieView;->mConnection:Landroid/view/inputmethod/InputConnection;

    .line 630
    new-instance v0, Lcom/termux/x11/LorieView$2;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$2;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 820
    new-instance v0, Lcom/termux/x11/LorieView$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/LorieView$4;-><init>(Lcom/termux/x11/LorieView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->keyReleaseHandler:Landroid/os/Handler;

    .line 865
    new-instance v0, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->clipboardListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 674
    invoke-direct {p0}, Lcom/termux/x11/LorieView;->init()V

    .line 675
    return-void
.end method

.method static synthetic access$000(Lcom/termux/x11/LorieView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/LorieView;

    .line 348
    iget-object v0, p0, Lcom/termux/x11/LorieView;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/termux/x11/LorieView;Landroid/view/Surface;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/LorieView;
    .param p1, "x1"    # Landroid/view/Surface;

    .line 348
    invoke-direct {p0, p1}, Lcom/termux/x11/LorieView;->surfaceChanged(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$200(Lcom/termux/x11/LorieView;)Lcom/termux/x11/LorieView$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/LorieView;

    .line 348
    iget-object v0, p0, Lcom/termux/x11/LorieView;->mCallback:Lcom/termux/x11/LorieView$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/termux/x11/LorieView;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/LorieView;

    .line 348
    iget-object v0, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    return-object v0
.end method

.method static native connect(I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static native connected()Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .line 719
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 720
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 721
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 722
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 724
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 727
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method private init()V
    .locals 2

    .line 678
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/LorieView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 679
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/termux/x11/LorieView;->clipboard:Landroid/content/ClipboardManager;

    .line 680
    invoke-direct {p0}, Lcom/termux/x11/LorieView;->nativeInit()V

    .line 681
    new-instance v0, Lcom/termux/x11/ScreenInfo;

    invoke-direct {v0, p0}, Lcom/termux/x11/ScreenInfo;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    .line 682
    new-instance v0, Lcom/termux/x11/controller/core/CursorLocker;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/core/CursorLocker;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->cursorLocker:Lcom/termux/x11/controller/core/CursorLocker;

    .line 683
    return-void
.end method

.method private native nativeInit()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native requestConnection()Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native requestStylusEnabled(Z)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static native sendWindowChange(IIILjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static native setClipboardSyncEnabled(ZZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static native startLogcat(I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native surfaceChanged(Landroid/view/Surface;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public checkForClipboardChange()V
    .locals 6

    .line 904
    iget-object v0, p0, Lcom/termux/x11/LorieView;->clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 905
    .local v0, "desc":Landroid/content/ClipDescription;
    sget-boolean v1, Lcom/termux/x11/LorieView;->clipboardSyncEnabled:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/termux/x11/LorieView;->lastClipboardTimestamp:J

    .line 906
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getTimestamp()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 907
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 908
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 909
    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 910
    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/termux/x11/LorieView;->lastClipboardTimestamp:J

    .line 911
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->sendClipboardAnnounce()V

    .line 912
    const-string v1, "CLIP"

    const-string v2, "sending clipboard announce"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 846
    sget-object v0, Lcom/termux/x11/LorieView;->imeBuggyKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 849
    .local v0, "action":I
    if-ne v0, v1, :cond_0

    .line 850
    iget-object v2, p0, Lcom/termux/x11/LorieView;->keyReleaseHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 852
    .end local v0    # "action":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 853
    .local v0, "k":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 854
    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->isFromSource(I)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x20004

    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 855
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 856
    return v1

    .line 857
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 858
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x3

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/termux/x11/LorieView;->sendMouseEvent(FFIZZ)V

    .line 859
    :cond_5
    return v1

    .line 862
    :cond_6
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 829
    sget-object v0, Lcom/termux/x11/LorieView;->imeBuggyKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 834
    .local v0, "action":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 835
    iget-object v1, p0, Lcom/termux/x11/LorieView;->keyReleaseHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 838
    .end local v0    # "action":I
    :cond_0
    sget-boolean v0, Lcom/termux/x11/LorieView;->hardwareKbdScancodesWorkaround:Z

    if-eqz v0, :cond_1

    .line 839
    const/4 v0, 0x0

    return v0

    .line 841
    :cond_1
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/x11/MainActivity;->handleKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method getDimensionsFromSettings()V
    .locals 9

    .line 731
    invoke-static {}, Lcom/termux/x11/MainActivity;->getPrefs()Lcom/termux/x11/Prefs;

    move-result-object v0

    .line 732
    .local v0, "prefs":Lcom/termux/x11/Prefs;
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getMeasuredWidth()I

    move-result v1

    .line 733
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getMeasuredHeight()I

    move-result v2

    .line 734
    .local v2, "height":I
    move v3, v1

    .line 735
    .local v3, "w":I
    move v4, v2

    .line 736
    .local v4, "h":I
    iget-object v5, v0, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v6, "exact"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_1
    const-string v6, "scaled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_2
    const-string v6, "custom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :goto_0
    const/4 v5, -0x1

    :goto_1
    const-string v6, "x"

    packed-switch v5, :pswitch_data_0

    goto :goto_3

    .line 751
    :pswitch_0
    :try_start_0
    iget-object v5, v0, Lcom/termux/x11/Prefs;->displayResolutionCustom:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 752
    .local v5, "resolution":[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    .line 753
    aget-object v6, v5, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 757
    .end local v5    # "resolution":[Ljava/lang/String;
    goto :goto_3

    .line 754
    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v5

    .line 755
    .local v5, "ignored":Ljava/lang/IllegalArgumentException;
    :goto_2
    const/16 v3, 0x500

    .line 756
    const/16 v4, 0x400

    goto :goto_3

    .line 744
    .end local v5    # "ignored":Ljava/lang/IllegalArgumentException;
    :pswitch_1
    iget-object v5, v0, Lcom/termux/x11/Prefs;->displayResolutionExact:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 745
    .local v5, "resolution":[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 746
    aget-object v6, v5, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 747
    goto :goto_3

    .line 738
    .end local v5    # "resolution":[Ljava/lang/String;
    :pswitch_2
    iget-object v5, v0, Lcom/termux/x11/Prefs;->displayScale:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;->get()I

    move-result v5

    .line 739
    .local v5, "scale":I
    mul-int/lit8 v6, v1, 0x64

    div-int v3, v6, v5

    .line 740
    mul-int/lit8 v6, v2, 0x64

    div-int v4, v6, v5

    .line 741
    nop

    .line 762
    .end local v5    # "scale":I
    :goto_3
    iget-object v5, v0, Lcom/termux/x11/Prefs;->adjustResolution:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ge v1, v2, :cond_1

    if-gt v3, v4, :cond_2

    :cond_1
    if-le v1, v2, :cond_3

    if-ge v3, v4, :cond_3

    .line 763
    :cond_2
    iget-object v5, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Point;->set(II)V

    .line 764
    iget-object v5, p0, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    int-to-short v6, v4

    iput v6, v5, Lcom/termux/x11/ScreenInfo;->screenWidth:I

    .line 765
    iget-object v5, p0, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    int-to-short v6, v3

    iput v6, v5, Lcom/termux/x11/ScreenInfo;->screenHeight:I

    goto :goto_4

    .line 768
    :cond_3
    iget-object v5, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 769
    iget-object v5, p0, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    int-to-short v6, v3

    iput v6, v5, Lcom/termux/x11/ScreenInfo;->screenWidth:I

    .line 770
    iget-object v5, p0, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    int-to-short v6, v4

    iput v6, v5, Lcom/termux/x11/ScreenInfo;->screenHeight:I

    .line 772
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5069748f -> :sswitch_2
        -0x3621dfa6 -> :sswitch_1
        0x5c74aff -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWinHandler()Lcom/termux/x11/controller/winhandler/WinHandler;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/termux/x11/LorieView;->winHandler:Lcom/termux/x11/controller/winhandler/WinHandler;

    return-object v0
.end method

.method public handleClipboardChange()V
    .locals 0

    .line 900
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->checkForClipboardChange()V

    .line 901
    return-void
.end method

.method public injectKeyPress(Lcom/termux/x11/controller/xserver/XKeycode;)V
    .locals 1
    .param p1, "xKeycode"    # Lcom/termux/x11/controller/xserver/XKeycode;

    .line 980
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/LorieView;->injectKeyPress(Lcom/termux/x11/controller/xserver/XKeycode;I)V

    .line 981
    return-void
.end method

.method public injectKeyPress(Lcom/termux/x11/controller/xserver/XKeycode;I)V
    .locals 2
    .param p1, "xKeycode"    # Lcom/termux/x11/controller/xserver/XKeycode;
    .param p2, "keysym"    # I

    .line 984
    iget-object v0, p0, Lcom/termux/x11/LorieView;->keyboard:Lcom/termux/x11/controller/xserver/Keyboard;

    iget-byte v1, p1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    invoke-virtual {v0, v1, p2}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeyPress(BI)V

    .line 985
    return-void
.end method

.method public injectKeyRelease(Lcom/termux/x11/controller/xserver/XKeycode;)V
    .locals 2
    .param p1, "xKeycode"    # Lcom/termux/x11/controller/xserver/XKeycode;

    .line 988
    iget-object v0, p0, Lcom/termux/x11/LorieView;->keyboard:Lcom/termux/x11/controller/xserver/Keyboard;

    iget-byte v1, p1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeyRelease(B)V

    .line 989
    return-void
.end method

.method public injectPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V
    .locals 2
    .param p1, "buttonCode"    # Lcom/termux/x11/controller/xserver/Pointer$Button;

    .line 972
    iget-object v0, p0, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/termux/x11/controller/xserver/Pointer;->setButton(Lcom/termux/x11/controller/xserver/Pointer$Button;Z)V

    .line 973
    return-void
.end method

.method public injectPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V
    .locals 2
    .param p1, "buttonCode"    # Lcom/termux/x11/controller/xserver/Pointer$Button;

    .line 976
    iget-object v0, p0, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/termux/x11/controller/xserver/Pointer;->setButton(Lcom/termux/x11/controller/xserver/Pointer$Button;Z)V

    .line 977
    return-void
.end method

.method public injectPointerMove(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 964
    iget-object v0, p0, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    invoke-virtual {v0, p1, p2}, Lcom/termux/x11/controller/xserver/Pointer;->moveTo(II)V

    .line 965
    return-void
.end method

.method public injectPointerMoveDelta(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 968
    iget-object v0, p0, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    invoke-virtual {v0, p1, p2}, Lcom/termux/x11/controller/xserver/Pointer;->moveDelta(II)V

    .line 969
    return-void
.end method

.method public injectText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 992
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    return-void

    .line 995
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/x11/LorieView;->sendTextEvent([B)V

    .line 996
    return-void
.end method

.method public isFullscreen()Z
    .locals 1

    .line 405
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$triggerCallback$0$com-termux-x11-LorieView(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 715
    iget-object v0, p0, Lcom/termux/x11/LorieView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x5

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 933
    invoke-static {}, Lcom/termux/x11/MainActivity;->getPrefs()Lcom/termux/x11/Prefs;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/x11/Prefs;->enforceCharBasedInput:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 936
    :cond_0
    const v0, 0x80001

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 937
    :goto_0
    const-string v0, "\u21b5"

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 940
    const/high16 v0, 0x2000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 941
    iget-object v0, p0, Lcom/termux/x11/LorieView;->mConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 372
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 373
    .local v0, "vScroll":F
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 375
    .local v1, "hScroll":F
    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_5

    .line 376
    :cond_0
    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    .line 377
    sget-object v3, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {p0, v3}, Lcom/termux/x11/LorieView;->injectPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 378
    sget-object v3, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {p0, v3}, Lcom/termux/x11/LorieView;->injectPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    goto :goto_0

    .line 379
    :cond_1
    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    .line 380
    sget-object v3, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {p0, v3}, Lcom/termux/x11/LorieView;->injectPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 381
    sget-object v3, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {p0, v3}, Lcom/termux/x11/LorieView;->injectPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 384
    :cond_2
    :goto_0
    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    .line 385
    sget-object v2, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_CLICK_RIGHT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {p0, v2}, Lcom/termux/x11/LorieView;->injectPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 386
    sget-object v2, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_CLICK_RIGHT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {p0, v2}, Lcom/termux/x11/LorieView;->injectPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    goto :goto_1

    .line 387
    :cond_3
    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    .line 388
    sget-object v2, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_CLICK_LEFT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {p0, v2}, Lcom/termux/x11/LorieView;->injectPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 389
    sget-object v2, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_CLICK_LEFT:Lcom/termux/x11/controller/xserver/Pointer$Button;

    invoke-virtual {p0, v2}, Lcom/termux/x11/LorieView;->injectPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V

    .line 392
    :cond_4
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 396
    .end local v0    # "vScroll":F
    .end local v1    # "hScroll":F
    :cond_5
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 776
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 778
    invoke-static {}, Lcom/termux/x11/MainActivity;->getPrefs()Lcom/termux/x11/Prefs;

    move-result-object v0

    .line 779
    .local v0, "prefs":Lcom/termux/x11/Prefs;
    iget-object v1, v0, Lcom/termux/x11/Prefs;->displayStretch:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 780
    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    const-string v2, "native"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 781
    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scaled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getDimensionsFromSettings()V

    .line 788
    iget-object v1, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-gtz v1, :cond_1

    goto :goto_1

    .line 791
    :cond_1
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getMeasuredWidth()I

    move-result v1

    .line 792
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getMeasuredHeight()I

    move-result v2

    .line 794
    .local v2, "height":I
    iget-object v3, v0, Lcom/termux/x11/Prefs;->adjustResolution:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v3

    if-eqz v3, :cond_4

    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-gt v3, v4, :cond_3

    :cond_2
    if-le v1, v2, :cond_4

    iget-object v3, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ge v3, v4, :cond_4

    .line 796
    :cond_3
    iget-object v3, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 798
    :cond_4
    iget-object v3, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v2

    iget-object v4, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    if-le v1, v3, :cond_5

    .line 799
    iget-object v3, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v2

    iget-object v4, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    div-int v1, v3, v4

    goto :goto_0

    .line 801
    :cond_5
    iget-object v3, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    mul-int v3, v3, v1

    iget-object v4, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    div-int v2, v3, v4

    .line 803
    :goto_0
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-interface {v3, v4, v5}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 804
    invoke-virtual {p0, v1, v2}, Lcom/termux/x11/LorieView;->setMeasuredDimension(II)V

    .line 805
    return-void

    .line 789
    .end local v1    # "width":I
    .end local v2    # "height":I
    :cond_6
    :goto_1
    return-void

    .line 782
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 783
    return-void
.end method

.method public regenerate()V
    .locals 3

    .line 691
    iget-object v0, p0, Lcom/termux/x11/LorieView;->mCallback:Lcom/termux/x11/LorieView$Callback;

    .line 692
    .local v0, "callback":Lcom/termux/x11/LorieView$Callback;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/termux/x11/LorieView;->mCallback:Lcom/termux/x11/LorieView$Callback;

    .line 693
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 694
    iput-object v0, p0, Lcom/termux/x11/LorieView;->mCallback:Lcom/termux/x11/LorieView$Callback;

    .line 696
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->triggerCallback()V

    .line 697
    return-void
.end method

.method public reloadPreferences(Lcom/termux/x11/Prefs;)V
    .locals 2
    .param p1, "p"    # Lcom/termux/x11/Prefs;

    .line 868
    iget-object v0, p1, Lcom/termux/x11/Prefs;->hardwareKbdScancodesWorkaround:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    sput-boolean v0, Lcom/termux/x11/LorieView;->hardwareKbdScancodesWorkaround:Z

    .line 869
    iget-object v0, p1, Lcom/termux/x11/Prefs;->clipboardEnable:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    sput-boolean v0, Lcom/termux/x11/LorieView;->clipboardSyncEnabled:Z

    .line 870
    sget-boolean v0, Lcom/termux/x11/LorieView;->clipboardSyncEnabled:Z

    sget-boolean v1, Lcom/termux/x11/LorieView;->clipboardSyncEnabled:Z

    invoke-static {v0, v1}, Lcom/termux/x11/LorieView;->setClipboardSyncEnabled(ZZ)V

    .line 871
    invoke-static {}, Lcom/termux/x11/input/TouchInputHandler;->refreshInputDevices()V

    .line 872
    return-void
.end method

.method requestClipboard()V
    .locals 4

    .line 886
    sget-boolean v0, Lcom/termux/x11/LorieView;->clipboardSyncEnabled:Z

    if-nez v0, :cond_0

    .line 887
    const-string v0, ""

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/x11/LorieView;->sendClipboardEvent([B)V

    .line 888
    return-void

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/LorieView;->clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 892
    .local v0, "clip":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 893
    iget-object v1, p0, Lcom/termux/x11/LorieView;->clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 894
    .local v1, "text":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/LorieView;->sendClipboardEvent([B)V

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending clipboard contents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CLIP"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method resetIme()V
    .locals 2

    .line 953
    iget-boolean v0, p0, Lcom/termux/x11/LorieView;->commitedText:Z

    if-nez v0, :cond_0

    .line 954
    return-void

    .line 956
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 957
    iget-object v0, p0, Lcom/termux/x11/LorieView;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->invalidateInput(Landroid/view/View;)V

    goto :goto_0

    .line 959
    :cond_1
    iget-object v0, p0, Lcom/termux/x11/LorieView;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 960
    :goto_0
    return-void
.end method

.method public native sendClipboardAnnounce()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native sendClipboardEvent([B)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public sendKeyEvent(IIZ)Z
    .locals 1
    .param p1, "scanCode"    # I
    .param p2, "keyCode"    # I
    .param p3, "keyDown"    # Z

    .line 1016
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZI)Z

    move-result v0

    return v0
.end method

.method public native sendKeyEvent(IIZI)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native sendMouseEvent(FFIZZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public sendMouseWheelEvent(FF)V
    .locals 6
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 809
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/termux/x11/LorieView;->sendMouseEvent(FFIZZ)V

    .line 810
    return-void
.end method

.method public native sendStylusEvent(FFIIIIIZZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native sendTextEvent([B)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native sendTouchEvent(IIII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public setCallback(Lcom/termux/x11/LorieView$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/termux/x11/LorieView$Callback;

    .line 686
    iput-object p1, p0, Lcom/termux/x11/LorieView;->mCallback:Lcom/termux/x11/LorieView$Callback;

    .line 687
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->triggerCallback()V

    .line 688
    return-void
.end method

.method setClipboardText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 876
    iget-object v0, p0, Lcom/termux/x11/LorieView;->clipboard:Landroid/content/ClipboardManager;

    const-string v1, "X11 clipboard"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/termux/x11/LorieView;->lastClipboardTimestamp:J

    .line 882
    return-void
.end method

.method public setWinHandler(Lcom/termux/x11/controller/winhandler/WinHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/termux/x11/controller/winhandler/WinHandler;

    .line 357
    iput-object p1, p0, Lcom/termux/x11/LorieView;->winHandler:Lcom/termux/x11/controller/winhandler/WinHandler;

    .line 358
    return-void
.end method

.method public triggerCallback()V
    .locals 3

    .line 700
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/x11/LorieView;->setFocusable(Z)V

    .line 701
    invoke-virtual {p0, v0}, Lcom/termux/x11/LorieView;->setFocusableInTouchMode(Z)V

    .line 702
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->requestFocus()Z

    .line 704
    new-instance v0, Lcom/termux/x11/LorieView$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/LorieView$3;-><init>(Lcom/termux/x11/LorieView;I)V

    invoke-virtual {p0, v0}, Lcom/termux/x11/LorieView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 714
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 715
    .local v0, "r":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/termux/x11/LorieView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda2;-><init>(Lcom/termux/x11/LorieView;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 716
    return-void
.end method

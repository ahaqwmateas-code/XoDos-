.class public Lcom/termux/x11/controller/xserver/InputDeviceManager;
.super Ljava/lang/Object;
.source "InputDeviceManager.java"

# interfaces
.implements Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;
.implements Lcom/termux/x11/controller/xserver/Keyboard$OnKeyboardListener;


# static fields
.field private static final MOUSE_WHEEL_DELTA:B = 0x78t


# instance fields
.field private final eventKeyCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xServer:Lcom/termux/x11/LorieView;


# direct methods
.method public constructor <init>(Lcom/termux/x11/LorieView;)V
    .locals 1
    .param p1, "xServer"    # Lcom/termux/x11/LorieView;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/termux/x11/controller/xserver/InputDeviceManager;->createKeyMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->eventKeyCodeMap:Ljava/util/HashMap;

    .line 16
    iput-object p1, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->xServer:Lcom/termux/x11/LorieView;

    .line 17
    iget-object v0, p1, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    invoke-virtual {v0, p0}, Lcom/termux/x11/controller/xserver/Pointer;->addOnPointerMotionListener(Lcom/termux/x11/controller/xserver/Pointer$OnPointerMotionListener;)V

    .line 18
    iget-object v0, p1, Lcom/termux/x11/LorieView;->keyboard:Lcom/termux/x11/controller/xserver/Keyboard;

    invoke-virtual {v0, p0}, Lcom/termux/x11/controller/xserver/Keyboard;->addOnKeyboardListener(Lcom/termux/x11/controller/xserver/Keyboard$OnKeyboardListener;)V

    .line 19
    return-void
.end method

.method private static createKeyMap()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/termux/x11/controller/xserver/Keyboard;->createKeycodeMap()[Lcom/termux/x11/controller/xserver/XKeycode;

    move-result-object v0

    .line 23
    .local v0, "keycodeMap":[Lcom/termux/x11/controller/xserver/XKeycode;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v1, "keyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 26
    aget-object v3, v0, v2

    .line 27
    .local v3, "xKeycode":Lcom/termux/x11/controller/xserver/XKeycode;
    if-eqz v3, :cond_1

    .line 28
    iget-byte v4, v3, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    iget-byte v4, v3, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .end local v3    # "xKeycode":Lcom/termux/x11/controller/xserver/XKeycode;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public onKeyPress(BI)V
    .locals 5
    .param p1, "keycode"    # B
    .param p2, "keysym"    # I

    .line 77
    move v0, p1

    .line 78
    .local v0, "realKeyCode":I
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->eventKeyCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 79
    .local v1, "mkeyCode":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 83
    :cond_0
    const/4 v2, 0x1

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->xServer:Lcom/termux/x11/LorieView;

    iget-object v3, v3, Lcom/termux/x11/LorieView;->keyboard:Lcom/termux/x11/controller/xserver/Keyboard;

    invoke-virtual {v3, p1, p2}, Lcom/termux/x11/controller/xserver/Keyboard;->hasKeysym(BI)Z

    move-result v3

    if-nez v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->xServer:Lcom/termux/x11/LorieView;

    invoke-virtual {v3, p2, v0, v2}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 85
    return-void

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->xServer:Lcom/termux/x11/LorieView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v2}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 88
    return-void
.end method

.method public onKeyRelease(B)V
    .locals 4
    .param p1, "keycode"    # B

    .line 92
    move v0, p1

    .line 93
    .local v0, "realKeyCode":I
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->eventKeyCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 94
    .local v1, "mkeyCode":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->xServer:Lcom/termux/x11/LorieView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v3}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 99
    return-void
.end method

.method public onPointMoveDelta(II)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 72
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->xServer:Lcom/termux/x11/LorieView;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/termux/x11/LorieView;->sendMouseEvent(FFIZZ)V

    .line 73
    return-void
.end method

.method public onPointerButtonPress(Lcom/termux/x11/controller/xserver/Pointer$Button;)V
    .locals 7
    .param p1, "button"    # Lcom/termux/x11/controller/xserver/Pointer$Button;

    .line 41
    sget-object v0, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/termux/x11/controller/xserver/Pointer$Button;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/termux/x11/controller/xserver/Pointer$Button;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->xServer:Lcom/termux/x11/LorieView;

    invoke-virtual {p1}, Lcom/termux/x11/controller/xserver/Pointer$Button;->code()B

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/termux/x11/LorieView;->sendMouseEvent(FFIZZ)V

    .line 47
    return-void

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/termux/x11/controller/xserver/Pointer$Button;

    if-ne p1, v0, :cond_2

    const/16 v0, 0x78

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/termux/x11/controller/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/termux/x11/controller/xserver/Pointer$Button;

    if-ne p1, v0, :cond_3

    const/16 v0, -0x78

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 43
    .local v0, "wheelDelta":I
    :goto_1
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->xServer:Lcom/termux/x11/LorieView;

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/termux/x11/LorieView;->sendMouseWheelEvent(FF)V

    .line 44
    return-void
.end method

.method public onPointerButtonRelease(Lcom/termux/x11/controller/xserver/Pointer$Button;)V
    .locals 6
    .param p1, "button"    # Lcom/termux/x11/controller/xserver/Pointer$Button;

    .line 51
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->xServer:Lcom/termux/x11/LorieView;

    invoke-virtual {p1}, Lcom/termux/x11/controller/xserver/Pointer$Button;->code()B

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/termux/x11/LorieView;->sendMouseEvent(FFIZZ)V

    .line 52
    return-void
.end method

.method public onPointerMove(II)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 57
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->xServer:Lcom/termux/x11/LorieView;

    iget-object v0, v0, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    invoke-virtual {v0}, Lcom/termux/x11/controller/xserver/Pointer;->getPointerButton()Lcom/termux/x11/controller/xserver/Pointer$Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->xServer:Lcom/termux/x11/LorieView;

    int-to-float v2, p1

    int-to-float v3, p2

    iget-object v0, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->xServer:Lcom/termux/x11/LorieView;

    iget-object v0, v0, Lcom/termux/x11/LorieView;->pointer:Lcom/termux/x11/controller/xserver/Pointer;

    invoke-virtual {v0}, Lcom/termux/x11/controller/xserver/Pointer;->getPointerButton()Lcom/termux/x11/controller/xserver/Pointer$Button;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/xserver/Pointer$Button;->code()B

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/termux/x11/LorieView;->sendMouseEvent(FFIZZ)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v7, p0, Lcom/termux/x11/controller/xserver/InputDeviceManager;->xServer:Lcom/termux/x11/LorieView;

    int-to-float v8, p1

    int-to-float v9, p2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/termux/x11/LorieView;->sendMouseEvent(FFIZZ)V

    .line 63
    :goto_0
    return-void
.end method

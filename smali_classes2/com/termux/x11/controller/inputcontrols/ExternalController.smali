.class public Lcom/termux/x11/controller/inputcontrols/ExternalController;
.super Ljava/lang/Object;
.source "ExternalController.java"


# static fields
.field public static final IDX_BUTTON_A:B = 0x0t

.field public static final IDX_BUTTON_B:B = 0x1t

.field public static final IDX_BUTTON_L1:B = 0x4t

.field public static final IDX_BUTTON_L2:B = 0xat

.field public static final IDX_BUTTON_L3:B = 0x8t

.field public static final IDX_BUTTON_R1:B = 0x5t

.field public static final IDX_BUTTON_R2:B = 0xbt

.field public static final IDX_BUTTON_R3:B = 0x9t

.field public static final IDX_BUTTON_SELECT:B = 0x6t

.field public static final IDX_BUTTON_START:B = 0x7t

.field public static final IDX_BUTTON_X:B = 0x2t

.field public static final IDX_BUTTON_Y:B = 0x3t


# instance fields
.field private final controllerBindings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId:I

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field public final state:Lcom/termux/x11/controller/inputcontrols/GamepadState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->deviceId:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Lcom/termux/x11/controller/inputcontrols/GamepadState;

    invoke-direct {v0}, Lcom/termux/x11/controller/inputcontrols/GamepadState;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    return-void
.end method

.method public static getButtonIdxByKeyCode(I)I
    .locals 1
    .param p0, "keyCode"    # I

    .line 246
    packed-switch p0, :pswitch_data_0

    .line 272
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 260
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 262
    :pswitch_2
    const/4 v0, 0x7

    return v0

    .line 266
    :pswitch_3
    const/16 v0, 0x9

    return v0

    .line 264
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 270
    :pswitch_5
    const/16 v0, 0xb

    return v0

    .line 268
    :pswitch_6
    const/16 v0, 0xa

    return v0

    .line 258
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 256
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 254
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 252
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 250
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 248
    :pswitch_c
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getButtonIdxByName(Ljava/lang/String;)I
    .locals 14
    .param p0, "name"    # Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xb

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "START"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "R3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "R2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_3
    const-string v0, "R1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "L3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_5
    const-string v0, "L2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_6
    const-string v0, "L1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "Y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_8
    const-string v0, "X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_9
    const-string v0, "B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_a
    const-string v0, "A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_b
    const-string v0, "SELECT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 303
    return v13

    .line 301
    :pswitch_0
    return v1

    .line 299
    :pswitch_1
    return v2

    .line 297
    :pswitch_2
    return v3

    .line 295
    :pswitch_3
    return v4

    .line 293
    :pswitch_4
    return v5

    .line 291
    :pswitch_5
    return v6

    .line 289
    :pswitch_6
    return v7

    .line 287
    :pswitch_7
    return v8

    .line 285
    :pswitch_8
    return v9

    .line 283
    :pswitch_9
    return v10

    .line 281
    :pswitch_a
    return v11

    .line 279
    :pswitch_b
    return v12

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e6dd704 -> :sswitch_b
        0x41 -> :sswitch_a
        0x42 -> :sswitch_9
        0x58 -> :sswitch_8
        0x59 -> :sswitch_7
        0x965 -> :sswitch_6
        0x966 -> :sswitch_5
        0x967 -> :sswitch_4
        0xa1f -> :sswitch_3
        0xa20 -> :sswitch_2
        0xa21 -> :sswitch_1
        0x4b8cc42 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
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

.method public static getCenteredAxis(Landroid/view/MotionEvent;II)F
    .locals 5
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "axis"    # I
    .param p2, "historyPos"    # I

    .line 225
    const/16 v0, 0xf

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 230
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 231
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    .line 232
    .local v1, "range":Landroid/view/InputDevice$MotionRange;
    if-eqz v1, :cond_4

    .line 233
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v2

    .line 234
    .local v2, "flat":F
    if-gez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v3

    .line 235
    .local v3, "value":F
    :goto_0
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_4

    return v3

    .line 226
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "range":Landroid/view/InputDevice$MotionRange;
    .end local v2    # "flat":F
    .end local v3    # "value":F
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 227
    .local v0, "value":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    return v0

    .line 228
    .end local v0    # "value":F
    :cond_3
    nop

    .line 238
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static getController(I)Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .locals 5
    .param p0, "deviceId"    # I

    .line 201
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 202
    .local v0, "deviceIds":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 203
    aget v2, v0, v1

    if-eq v2, p0, :cond_0

    if-nez p0, :cond_1

    .line 204
    :cond_0
    aget v2, v0, v1

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 205
    .local v2, "device":Landroid/view/InputDevice;
    invoke-static {v2}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->isGameController(Landroid/view/InputDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    new-instance v3, Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-direct {v3}, Lcom/termux/x11/controller/inputcontrols/ExternalController;-><init>()V

    .line 207
    .local v3, "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->setId(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->setName(Ljava/lang/String;)V

    .line 209
    aget v4, v0, v1

    iput v4, v3, Lcom/termux/x11/controller/inputcontrols/ExternalController;->deviceId:I

    .line 210
    return-object v3

    .line 202
    .end local v2    # "device":Landroid/view/InputDevice;
    .end local v3    # "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 214
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getController(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .line 196
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getControllers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/inputcontrols/ExternalController;

    .local v1, "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .end local v1    # "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    :cond_0
    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getControllers()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/termux/x11/controller/inputcontrols/ExternalController;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 182
    .local v0, "deviceIds":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v1, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/termux/x11/controller/inputcontrols/ExternalController;>;"
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 184
    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 185
    .local v3, "device":Landroid/view/InputDevice;
    invoke-static {v3}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->isGameController(Landroid/view/InputDevice;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    new-instance v4, Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-direct {v4}, Lcom/termux/x11/controller/inputcontrols/ExternalController;-><init>()V

    .line 187
    .local v4, "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->setId(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->setName(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v3    # "device":Landroid/view/InputDevice;
    .end local v4    # "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 192
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static isGameController(Landroid/view/InputDevice;)Z
    .locals 4
    .param p0, "device"    # Landroid/view/InputDevice;

    .line 218
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    .line 220
    .local v1, "sources":I
    invoke-virtual {p0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v2

    if-nez v2, :cond_2

    and-int/lit16 v2, v1, 0x401

    const/16 v3, 0x401

    if-eq v2, v3, :cond_1

    const v2, 0x1000010

    and-int v3, v1, v2

    if-ne v3, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isJoystickDevice(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 242
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processJoystickInput(Landroid/view/MotionEvent;I)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "historyPos"    # I

    .line 122
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v2

    iput v2, v0, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLX:F

    .line 123
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    const/4 v2, 0x1

    invoke-static {p1, v2, p2}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v3

    iput v3, v0, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLY:F

    .line 124
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    const/16 v3, 0xb

    invoke-static {p1, v3, p2}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v3

    iput v3, v0, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbRX:F

    .line 125
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    const/16 v3, 0xe

    invoke-static {p1, v3, p2}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v3

    iput v3, v0, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbRY:F

    .line 127
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 128
    const/16 v0, 0xf

    invoke-static {p1, v0, p2}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v0

    .line 129
    .local v0, "axisX":F
    const/16 v3, 0x10

    invoke-static {p1, v3, p2}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v3

    .line 131
    .local v3, "axisY":F
    iget-object v4, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget-object v4, v4, Lcom/termux/x11/controller/inputcontrols/GamepadState;->dpad:[Z

    const/high16 v5, -0x40800000    # -1.0f

    const v6, 0x3e19999a    # 0.15f

    cmpl-float v7, v3, v5

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v7, v7, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLY:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    aput-boolean v7, v4, v1

    .line 132
    iget-object v4, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget-object v4, v4, Lcom/termux/x11/controller/inputcontrols/GamepadState;->dpad:[Z

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, v0, v7

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v8, v8, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLX:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v6

    if-gez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    aput-boolean v8, v4, v2

    .line 133
    iget-object v4, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget-object v4, v4, Lcom/termux/x11/controller/inputcontrols/GamepadState;->dpad:[Z

    cmpl-float v7, v3, v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v7, v7, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLY:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x2

    aput-boolean v7, v4, v8

    .line 134
    iget-object v4, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget-object v4, v4, Lcom/termux/x11/controller/inputcontrols/GamepadState;->dpad:[Z

    cmpl-float v5, v0, v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v5, v5, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    const/4 v1, 0x1

    :cond_3
    const/4 v2, 0x3

    aput-boolean v1, v4, v2

    .line 136
    .end local v0    # "axisX":F
    .end local v3    # "axisY":F
    :cond_4
    return-void
.end method

.method private processTriggerButton(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 139
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    const/16 v1, 0x17

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v1}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->setPressed(IZ)V

    .line 140
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    const/16 v1, 0x16

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->setPressed(IZ)V

    .line 141
    return-void
.end method


# virtual methods
.method public addControllerBinding(Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)V
    .locals 1
    .param p1, "controllerBinding"    # Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    .line 83
    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->getKeyCodeForAxis()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 118
    instance-of v0, p1, Lcom/termux/x11/controller/inputcontrols/ExternalController;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/termux/x11/controller/inputcontrols/ExternalController;

    iget-object v0, v0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getControllerBinding(I)Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    .locals 3
    .param p1, "keyCode"    # I

    .line 72
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    .line 73
    .local v1, "controllerBinding":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->getKeyCodeForAxis()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 74
    .end local v1    # "controllerBinding":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    :cond_0
    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getControllerBindingAt(I)Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    .locals 1
    .param p1, "index"    # I

    .line 79
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    return-object v0
.end method

.method public getControllerBindingCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDeviceId()I
    .locals 7

    .line 51
    iget v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->deviceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 52
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 53
    .local v3, "deviceId":I
    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 54
    .local v4, "device":Landroid/view/InputDevice;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    iput v3, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->deviceId:I

    .line 56
    goto :goto_1

    .line 52
    .end local v3    # "deviceId":I
    .end local v4    # "device":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    :goto_1
    iget v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->deviceId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition(Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)I
    .locals 1
    .param p1, "controllerBinding"    # Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    .line 87
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 8

    .line 64
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 65
    .local v4, "deviceId":I
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 66
    .local v5, "device":Landroid/view/InputDevice;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    return v0

    .line 64
    .end local v4    # "deviceId":I
    .end local v5    # "device":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_1
    return v2
.end method

.method public removeControllerBinding(Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)V
    .locals 1
    .param p1, "controllerBinding"    # Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    .line 91
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->id:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .line 100
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 101
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 102
    .local v1, "controllerJSONObject":Lorg/json/JSONObject;
    const-string v2, "id"

    iget-object v3, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v2, "name"

    iget-object v3, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 106
    .local v2, "controllerBindingsJSONArray":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    .local v4, "controllerBinding":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 107
    .end local v4    # "controllerBinding":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    :cond_1
    const-string v3, "controllerBindings"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-object v1

    .line 111
    .end local v1    # "controllerJSONObject":Lorg/json/JSONObject;
    .end local v2    # "controllerBindingsJSONArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Lorg/json/JSONException;
    return-object v0
.end method

.method public updateStateFromKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 155
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 156
    .local v0, "pressed":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 157
    .local v3, "keyCode":I
    invoke-static {v3}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getButtonIdxByKeyCode(I)I

    move-result v4

    .line 158
    .local v4, "buttonIdx":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 159
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    invoke-virtual {v1, v4, v0}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->setPressed(IZ)V

    .line 160
    return v2

    .line 163
    :cond_1
    const v5, 0x3e19999a    # 0.15f

    packed-switch v3, :pswitch_data_0

    .line 177
    return v1

    .line 168
    :pswitch_0
    iget-object v6, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget-object v6, v6, Lcom/termux/x11/controller/inputcontrols/GamepadState;->dpad:[Z

    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v7, v7, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLX:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    aput-boolean v1, v6, v2

    .line 169
    return v2

    .line 174
    :pswitch_1
    iget-object v6, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget-object v6, v6, Lcom/termux/x11/controller/inputcontrols/GamepadState;->dpad:[Z

    if-eqz v0, :cond_3

    iget-object v7, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v7, v7, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLX:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_3

    const/4 v1, 0x1

    :cond_3
    const/4 v5, 0x3

    aput-boolean v1, v6, v5

    .line 175
    return v2

    .line 171
    :pswitch_2
    iget-object v6, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget-object v6, v6, Lcom/termux/x11/controller/inputcontrols/GamepadState;->dpad:[Z

    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v7, v7, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLY:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_4

    const/4 v1, 0x1

    :cond_4
    const/4 v5, 0x2

    aput-boolean v1, v6, v5

    .line 172
    return v2

    .line 165
    :pswitch_3
    iget-object v6, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget-object v6, v6, Lcom/termux/x11/controller/inputcontrols/GamepadState;->dpad:[Z

    if-eqz v0, :cond_5

    iget-object v7, p0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v7, v7, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLY:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v6, v1

    .line 166
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateStateFromMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 144
    invoke-static {p1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->isJoystickDevice(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->processTriggerButton(Landroid/view/MotionEvent;)V

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 147
    .local v0, "historySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->processJoystickInput(Landroid/view/MotionEvent;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :cond_0
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 149
    const/4 v1, 0x1

    return v1

    .line 151
    .end local v0    # "historySize":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

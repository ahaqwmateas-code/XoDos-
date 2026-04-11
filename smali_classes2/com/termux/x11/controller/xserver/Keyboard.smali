.class public Lcom/termux/x11/controller/xserver/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/controller/xserver/Keyboard$OnKeyboardListener;
    }
.end annotation


# static fields
.field public static final KEYSYMS_PER_KEYCODE:B = 0x2t

.field public static final KEYS_COUNT:S = 0xf8s


# instance fields
.field private final keycodeMap:[Lcom/termux/x11/controller/xserver/XKeycode;

.field public final keysyms:[I

.field private final modifiersMask:Lcom/termux/x11/controller/xserver/Bitmask;

.field private final onKeyboardListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/termux/x11/controller/xserver/Keyboard$OnKeyboardListener;",
            ">;"
        }
    .end annotation
.end field

.field private final pressedKeys:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final xServer:Lcom/termux/x11/LorieView;


# direct methods
.method public constructor <init>(Lcom/termux/x11/LorieView;)V
    .locals 1
    .param p1, "xServer"    # Lcom/termux/x11/LorieView;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0xf8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->keysyms:[I

    .line 17
    new-instance v0, Lcom/termux/x11/controller/xserver/Bitmask;

    invoke-direct {v0}, Lcom/termux/x11/controller/xserver/Bitmask;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->modifiersMask:Lcom/termux/x11/controller/xserver/Bitmask;

    .line 18
    invoke-static {}, Lcom/termux/x11/controller/xserver/Keyboard;->createKeycodeMap()[Lcom/termux/x11/controller/xserver/XKeycode;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->keycodeMap:[Lcom/termux/x11/controller/xserver/XKeycode;

    .line 19
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->onKeyboardListeners:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/termux/x11/controller/xserver/Keyboard;->xServer:Lcom/termux/x11/LorieView;

    .line 31
    return-void
.end method

.method public static createKeyboard(Lcom/termux/x11/LorieView;)Lcom/termux/x11/controller/xserver/Keyboard;
    .locals 5
    .param p0, "xServer"    # Lcom/termux/x11/LorieView;

    .line 223
    new-instance v0, Lcom/termux/x11/controller/xserver/Keyboard;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/xserver/Keyboard;-><init>(Lcom/termux/x11/LorieView;)V

    .line 224
    .local v0, "keyboard":Lcom/termux/x11/controller/xserver/Keyboard;
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_ESC:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xff1b

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 225
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_ENTER:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xff0d

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 226
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_RIGHT:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xff53

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 227
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_UP:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xff52

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 228
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_LEFT:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xff51

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 229
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_DOWN:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xff54

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 230
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_DEL:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffff

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 231
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_BKSP:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xff08

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 232
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_INSERT:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xff63

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 233
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_PRIOR:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xff55

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 234
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_NEXT:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xff56

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 235
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_HOME:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xff50

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 236
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_END:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xff57

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 237
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SHIFT_L:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffe1

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 238
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SHIFT_R:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffe2

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 239
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_CTRL_L:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffe3

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 240
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_CTRL_R:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffe4

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 241
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_ALT_L:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffe7

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 242
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_ALT_R:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffe8

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 243
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_TAB:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xff09

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 244
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SPACE:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v2}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 245
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_A:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x61

    const/16 v4, 0x41

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 246
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_B:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x62

    const/16 v4, 0x42

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 247
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_C:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x63

    const/16 v4, 0x43

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 248
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_D:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x64

    const/16 v4, 0x44

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 249
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_E:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x65

    const/16 v4, 0x45

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 250
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x66

    const/16 v4, 0x46

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 251
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_G:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x67

    const/16 v4, 0x47

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 252
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_H:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x68

    const/16 v4, 0x48

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 253
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_I:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x69

    const/16 v4, 0x49

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 254
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_J:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x6a

    const/16 v4, 0x4a

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 255
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_K:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x6b

    const/16 v4, 0x4b

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 256
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_L:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x6c

    const/16 v4, 0x4c

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 257
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_M:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x6d

    const/16 v4, 0x4d

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 258
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_N:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x6e

    const/16 v4, 0x4e

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 259
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_O:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x6f

    const/16 v4, 0x4f

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 260
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_P:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x70

    const/16 v4, 0x50

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 261
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_Q:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x71

    const/16 v4, 0x51

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 262
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_R:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x72

    const/16 v4, 0x52

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 263
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_S:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x73

    const/16 v4, 0x53

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 264
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_T:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x74

    const/16 v4, 0x54

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 265
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_U:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x75

    const/16 v4, 0x55

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 266
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_V:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x76

    const/16 v4, 0x56

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 267
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_W:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x77

    const/16 v4, 0x57

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 268
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_X:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x78

    const/16 v4, 0x58

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 269
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_Y:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x79

    const/16 v4, 0x59

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 270
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_Z:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x7a

    const/16 v4, 0x5a

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 271
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_1:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x31

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 272
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_2:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x32

    const/16 v4, 0x40

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 273
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_3:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x33

    const/16 v4, 0x23

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 274
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_4:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x34

    const/16 v4, 0x24

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 275
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_5:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x35

    const/16 v4, 0x25

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 276
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_6:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x36

    const/16 v4, 0x5e

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 277
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_7:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x37

    const/16 v4, 0x26

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 278
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_8:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x38

    const/16 v4, 0x2a

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 279
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_9:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x39

    const/16 v4, 0x28

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 280
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_0:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x30

    const/16 v4, 0x29

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 281
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_COMMA:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x2c

    const/16 v4, 0x3c

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 282
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_PERIOD:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x2e

    const/16 v4, 0x3e

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 283
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SEMICOLON:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x3b

    const/16 v4, 0x3a

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 284
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_APOSTROPHE:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x27

    const/16 v4, 0x22

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 285
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_BRACKET_LEFT:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x5b

    const/16 v4, 0x7b

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 286
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_BRACKET_RIGHT:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x5d

    const/16 v4, 0x7d

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 287
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_GRAVE:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x60

    const/16 v4, 0x7e

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 288
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_MINUS:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x2d

    const/16 v4, 0x5f

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 289
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_EQUAL:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x3d

    const/16 v4, 0x2b

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 290
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SLASH:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x2f

    const/16 v4, 0x3f

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 291
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_BACKSLASH:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const/16 v2, 0x5c

    const/16 v4, 0x7c

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 292
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_DIVIDE:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffaf

    invoke-virtual {v0, v1, v2, v2}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 293
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_MULTIPLY:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffaa

    invoke-virtual {v0, v1, v2, v2}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 294
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_SUBTRACT:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffad

    invoke-virtual {v0, v1, v2, v2}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 295
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_ADD:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffab

    invoke-virtual {v0, v1, v2, v2}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 296
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_0:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffb0

    const v4, 0xff9e

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 297
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_1:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffb1

    const v4, 0xff9c

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 298
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_2:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffb2

    const v4, 0xff99

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 299
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_3:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffb3

    invoke-virtual {v0, v1, v2, v2}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 300
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_4:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffb4

    const v4, 0xff96

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 301
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_5:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffb5

    invoke-virtual {v0, v1, v2, v2}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 302
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_6:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffb6

    const v4, 0xff98

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 303
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_7:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffb7

    const v4, 0xff95

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 304
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_8:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffb8

    const v4, 0xff97

    invoke-virtual {v0, v1, v2, v4}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 305
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_9:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffb9

    invoke-virtual {v0, v1, v2, v2}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 306
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_DEL:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xff9f

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 307
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F1:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffbe

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 308
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F2:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffbf

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 309
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F3:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffc0

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 310
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F4:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffc1

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 311
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F5:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffc2

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 312
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F6:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffc3

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 313
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F7:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffc4

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 314
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F8:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffc5

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 315
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F9:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffc6

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 316
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F10:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffc7

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 317
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F11:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 318
    sget-object v1, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F12:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v1, v1, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    const v2, 0xffc9

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/xserver/Keyboard;->setKeysyms(BII)V

    .line 319
    return-object v0
.end method

.method static createKeycodeMap()[Lcom/termux/x11/controller/xserver/XKeycode;
    .locals 3

    .line 116
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/termux/x11/controller/xserver/XKeycode;

    .line 117
    .local v0, "keycodeMap":[Lcom/termux/x11/controller/xserver/XKeycode;
    const/16 v1, 0x6f

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_ESC:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 118
    const/16 v1, 0x42

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_ENTER:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 119
    const/16 v1, 0x15

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_LEFT:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 120
    const/16 v1, 0x16

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_RIGHT:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 121
    const/16 v1, 0x13

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_UP:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 122
    const/16 v1, 0x14

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_DOWN:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 123
    const/16 v1, 0x43

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_BKSP:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 124
    const/16 v1, 0x7c

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_INSERT:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 125
    const/16 v1, 0x70

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_DEL:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 126
    const/16 v1, 0x7a

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_HOME:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 127
    const/16 v1, 0x7b

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_END:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 128
    const/16 v1, 0x5c

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_PRIOR:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 129
    const/16 v1, 0x5d

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_NEXT:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 130
    const/16 v1, 0x3b

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SHIFT_L:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 131
    const/16 v1, 0x3c

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SHIFT_R:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 132
    const/16 v1, 0x71

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_CTRL_L:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 133
    const/16 v1, 0x72

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_CTRL_R:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 134
    const/16 v1, 0x39

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_ALT_L:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 135
    const/16 v1, 0x3a

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_ALT_R:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 136
    const/16 v1, 0x3d

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_TAB:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 137
    const/16 v1, 0x3e

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SPACE:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 138
    const/16 v1, 0x1d

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_A:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 139
    const/16 v1, 0x1e

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_B:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 140
    const/16 v1, 0x1f

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_C:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 141
    const/16 v1, 0x20

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_D:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 142
    const/16 v1, 0x21

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_E:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 143
    const/16 v1, 0x22

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 144
    const/16 v1, 0x23

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_G:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 145
    const/16 v1, 0x24

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_H:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 146
    const/16 v1, 0x25

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_I:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 147
    const/16 v1, 0x26

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_J:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 148
    const/16 v1, 0x27

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_K:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 149
    const/16 v1, 0x28

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_L:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 150
    const/16 v1, 0x29

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_M:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 151
    const/16 v1, 0x2a

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_N:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 152
    const/16 v1, 0x2b

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_O:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 153
    const/16 v1, 0x2c

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_P:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 154
    const/16 v1, 0x2d

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_Q:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 155
    const/16 v1, 0x2e

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_R:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 156
    const/16 v1, 0x2f

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_S:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 157
    const/16 v1, 0x30

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_T:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 158
    const/16 v1, 0x31

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_U:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 159
    const/16 v1, 0x32

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_V:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 160
    const/16 v1, 0x33

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_W:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 161
    const/16 v1, 0x34

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_X:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 162
    const/16 v1, 0x35

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_Y:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 163
    const/16 v1, 0x36

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_Z:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 164
    const/4 v1, 0x7

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_0:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 165
    const/16 v1, 0x8

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_1:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 166
    const/16 v1, 0x9

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_2:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 167
    const/16 v1, 0xa

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_3:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 168
    const/16 v1, 0xb

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_4:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 169
    const/16 v1, 0xc

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_5:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 170
    const/16 v1, 0xd

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_6:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 171
    const/16 v1, 0xe

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_7:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 172
    const/16 v1, 0xf

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_8:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 173
    const/16 v1, 0x10

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_9:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 174
    const/16 v1, 0x11

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_8:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 175
    const/16 v1, 0x12

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_3:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 176
    const/16 v1, 0x37

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_COMMA:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 177
    const/16 v1, 0x38

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_PERIOD:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 178
    const/16 v1, 0x4a

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SEMICOLON:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 179
    const/16 v1, 0x4b

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_APOSTROPHE:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 180
    const/16 v1, 0x47

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_BRACKET_LEFT:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 181
    const/16 v1, 0x48

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_BRACKET_RIGHT:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 182
    const/16 v1, 0x44

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_GRAVE:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 183
    const/16 v1, 0x45

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_MINUS:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 184
    const/16 v1, 0x51

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_EQUAL:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 185
    const/16 v1, 0x46

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_EQUAL:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 186
    const/16 v1, 0x4c

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SLASH:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 187
    const/16 v1, 0x4d

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_2:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 188
    const/16 v1, 0x49

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_BACKSLASH:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 189
    const/16 v1, 0x9a

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_DIVIDE:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 190
    const/16 v1, 0x9b

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_MULTIPLY:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 191
    const/16 v1, 0x9c

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_SUBTRACT:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 192
    const/16 v1, 0x9d

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_ADD:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 193
    const/16 v1, 0x9e

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_DEL:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 194
    const/16 v1, 0x90

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_0:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 195
    const/16 v1, 0x91

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_1:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 196
    const/16 v1, 0x92

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_2:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 197
    const/16 v1, 0x93

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_3:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 198
    const/16 v1, 0x94

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_4:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 199
    const/16 v1, 0x95

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_5:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 200
    const/16 v1, 0x96

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_6:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 201
    const/16 v1, 0x97

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_7:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 202
    const/16 v1, 0x98

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_8:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 203
    const/16 v1, 0x99

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_KP_9:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 204
    const/16 v1, 0x83

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F1:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 205
    const/16 v1, 0x84

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F2:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 206
    const/16 v1, 0x85

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F3:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 207
    const/16 v1, 0x86

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F4:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 208
    const/16 v1, 0x87

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F5:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 209
    const/16 v1, 0x88

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F6:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 210
    const/16 v1, 0x89

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F7:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 211
    const/16 v1, 0x8a

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F8:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 212
    const/16 v1, 0x8b

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F9:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 213
    const/16 v1, 0x8c

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F10:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 214
    const/16 v1, 0x8d

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F11:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 215
    const/16 v1, 0x8e

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_F12:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 216
    const/16 v1, 0x8f

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_NUM_LOCK:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 217
    const/16 v1, 0x73

    sget-object v2, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_CAPS_LOCK:Lcom/termux/x11/controller/xserver/XKeycode;

    aput-object v2, v0, v1

    .line 218
    return-object v0
.end method

.method public static getModifierFlag(B)I
    .locals 1
    .param p0, "keycode"    # B

    .line 336
    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SHIFT_L:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_7

    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SHIFT_R:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-ne p0, v0, :cond_0

    goto :goto_2

    .line 338
    :cond_0
    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_CAPS_LOCK:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-ne p0, v0, :cond_1

    .line 339
    const/4 v0, 0x2

    return v0

    .line 340
    :cond_1
    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_CTRL_L:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_6

    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_CTRL_R:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-ne p0, v0, :cond_2

    goto :goto_1

    .line 342
    :cond_2
    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_ALT_L:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_5

    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_ALT_R:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-ne p0, v0, :cond_3

    goto :goto_0

    .line 344
    :cond_3
    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_NUM_LOCK:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-ne p0, v0, :cond_4

    .line 345
    const/16 v0, 0x10

    return v0

    .line 347
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 343
    :cond_5
    :goto_0
    const/16 v0, 0x8

    return v0

    .line 341
    :cond_6
    :goto_1
    const/4 v0, 0x4

    return v0

    .line 337
    :cond_7
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isModifier(B)Z
    .locals 1
    .param p0, "keycode"    # B

    .line 323
    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SHIFT_L:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SHIFT_R:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_CTRL_L:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_CTRL_R:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_ALT_L:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_ALT_R:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_CAPS_LOCK:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_NUM_LOCK:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-ne p0, v0, :cond_0

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

.method public static isModifierSticky(B)Z
    .locals 1
    .param p0, "keycode"    # B

    .line 351
    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_CAPS_LOCK:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_NUM_LOCK:Lcom/termux/x11/controller/xserver/XKeycode;

    iget-byte v0, v0, Lcom/termux/x11/controller/xserver/XKeycode;->id:B

    if-ne p0, v0, :cond_0

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

.method private triggerOnKeyPress(BI)V
    .locals 2
    .param p1, "keycode"    # B
    .param p2, "keysym"    # I

    .line 83
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Keyboard;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/xserver/Keyboard$OnKeyboardListener;

    invoke-interface {v1, p1, p2}, Lcom/termux/x11/controller/xserver/Keyboard$OnKeyboardListener;->onKeyPress(BI)V

    .line 83
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private triggerOnKeyRelease(B)V
    .locals 2
    .param p1, "keycode"    # B

    .line 89
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Keyboard;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/xserver/Keyboard$OnKeyboardListener;

    invoke-interface {v1, p1}, Lcom/termux/x11/controller/xserver/Keyboard$OnKeyboardListener;->onKeyRelease(B)V

    .line 89
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnKeyboardListener(Lcom/termux/x11/controller/xserver/Keyboard$OnKeyboardListener;)V
    .locals 1
    .param p1, "onKeyboardListener"    # Lcom/termux/x11/controller/xserver/Keyboard$OnKeyboardListener;

    .line 75
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public getModifiersMask()Lcom/termux/x11/controller/xserver/Bitmask;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->modifiersMask:Lcom/termux/x11/controller/xserver/Bitmask;

    return-object v0
.end method

.method public hasKeysym(BI)Z
    .locals 5
    .param p1, "keycode"    # B
    .param p2, "keysym"    # I

    .line 44
    add-int/lit8 v0, p1, -0x8

    .line 45
    .local v0, "index":I
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Keyboard;->keysyms:[I

    mul-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    add-int/2addr v2, v3

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Keyboard;->keysyms:[I

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v2

    aget v1, v1, v4

    if-ne v1, p2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 95
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->isGameController(Landroid/view/InputDevice;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 98
    .local v0, "action":I
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_8

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 100
    .local v3, "keyCode":I
    iget-object v4, p0, Lcom/termux/x11/controller/xserver/Keyboard;->keycodeMap:[Lcom/termux/x11/controller/xserver/XKeycode;

    aget-object v4, v4, v3

    .line 101
    .local v4, "xKeycode":Lcom/termux/x11/controller/xserver/XKeycode;
    if-nez v4, :cond_2

    return v1

    .line 103
    :cond_2
    if-nez v0, :cond_6

    .line 104
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x4d

    if-eq v3, v5, :cond_3

    const/16 v5, 0x11

    if-eq v3, v5, :cond_3

    const/16 v5, 0x12

    if-eq v3, v5, :cond_3

    const/16 v5, 0x51

    if-ne v3, v5, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 105
    .local v1, "shiftPressed":Z
    :cond_4
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/termux/x11/controller/xserver/Keyboard;->xServer:Lcom/termux/x11/LorieView;

    sget-object v6, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SHIFT_L:Lcom/termux/x11/controller/xserver/XKeycode;

    invoke-virtual {v5, v6}, Lcom/termux/x11/LorieView;->injectKeyPress(Lcom/termux/x11/controller/xserver/XKeycode;)V

    .line 106
    :cond_5
    iget-object v5, p0, Lcom/termux/x11/controller/xserver/Keyboard;->xServer:Lcom/termux/x11/LorieView;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/termux/x11/LorieView;->injectKeyPress(Lcom/termux/x11/controller/xserver/XKeycode;I)V

    .end local v1    # "shiftPressed":Z
    goto :goto_0

    .line 107
    :cond_6
    if-ne v0, v2, :cond_7

    .line 108
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Keyboard;->xServer:Lcom/termux/x11/LorieView;

    sget-object v5, Lcom/termux/x11/controller/xserver/XKeycode;->KEY_SHIFT_L:Lcom/termux/x11/controller/xserver/XKeycode;

    invoke-virtual {v1, v5}, Lcom/termux/x11/LorieView;->injectKeyRelease(Lcom/termux/x11/controller/xserver/XKeycode;)V

    .line 109
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Keyboard;->xServer:Lcom/termux/x11/LorieView;

    invoke-virtual {v1, v4}, Lcom/termux/x11/LorieView;->injectKeyRelease(Lcom/termux/x11/controller/xserver/XKeycode;)V

    goto :goto_1

    .line 107
    :cond_7
    :goto_0
    nop

    .line 112
    .end local v3    # "keyCode":I
    .end local v4    # "xKeycode":Lcom/termux/x11/controller/xserver/XKeycode;
    :cond_8
    :goto_1
    return v2
.end method

.method public removeOnKeyboardListener(Lcom/termux/x11/controller/xserver/Keyboard$OnKeyboardListener;)V
    .locals 1
    .param p1, "onKeyboardListener"    # Lcom/termux/x11/controller/xserver/Keyboard$OnKeyboardListener;

    .line 79
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public setKeyPress(BI)V
    .locals 2
    .param p1, "keycode"    # B
    .param p2, "keysym"    # I

    .line 49
    invoke-static {p1}, Lcom/termux/x11/controller/xserver/Keyboard;->isModifierSticky(B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->modifiersMask:Lcom/termux/x11/controller/xserver/Bitmask;

    invoke-static {p1}, Lcom/termux/x11/controller/xserver/Keyboard;->getModifierFlag(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/xserver/Bitmask;->unset(I)V

    .line 53
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/xserver/Keyboard;->triggerOnKeyRelease(B)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->modifiersMask:Lcom/termux/x11/controller/xserver/Bitmask;

    invoke-static {p1}, Lcom/termux/x11/controller/xserver/Keyboard;->getModifierFlag(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/xserver/Bitmask;->set(I)V

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/termux/x11/controller/xserver/Keyboard;->triggerOnKeyPress(BI)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {p1}, Lcom/termux/x11/controller/xserver/Keyboard;->isModifier(B)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->modifiersMask:Lcom/termux/x11/controller/xserver/Bitmask;

    invoke-static {p1}, Lcom/termux/x11/controller/xserver/Keyboard;->getModifierFlag(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/xserver/Bitmask;->set(I)V

    .line 62
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/termux/x11/controller/xserver/Keyboard;->triggerOnKeyPress(BI)V

    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method public setKeyRelease(B)V
    .locals 2
    .param p1, "keycode"    # B

    .line 67
    invoke-static {p1}, Lcom/termux/x11/controller/xserver/Keyboard;->isModifierSticky(B)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->pressedKeys:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 69
    invoke-static {p1}, Lcom/termux/x11/controller/xserver/Keyboard;->isModifier(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/xserver/Keyboard;->modifiersMask:Lcom/termux/x11/controller/xserver/Bitmask;

    invoke-static {p1}, Lcom/termux/x11/controller/xserver/Keyboard;->getModifierFlag(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/xserver/Bitmask;->unset(I)V

    .line 70
    :cond_0
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/xserver/Keyboard;->triggerOnKeyRelease(B)V

    .line 72
    :cond_1
    return-void
.end method

.method public setKeysyms(BII)V
    .locals 3
    .param p1, "keycode"    # B
    .param p2, "minKeysym"    # I
    .param p3, "majKeysym"    # I

    .line 38
    add-int/lit8 v0, p1, -0x8

    .line 39
    .local v0, "index":I
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Keyboard;->keysyms:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x0

    aput p2, v1, v2

    .line 40
    iget-object v1, p0, Lcom/termux/x11/controller/xserver/Keyboard;->keysyms:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aput p3, v1, v2

    .line 41
    return-void
.end method

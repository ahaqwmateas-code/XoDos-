.class public abstract Lcom/termux/x11/controller/winhandler/MouseEventFlags;
.super Ljava/lang/Object;
.source "MouseEventFlags.java"


# static fields
.field public static final ABSOLUTE:I = 0x8000

.field public static final LEFTDOWN:I = 0x2

.field public static final LEFTUP:I = 0x4

.field public static final MIDDLEDOWN:I = 0x20

.field public static final MIDDLEUP:I = 0x40

.field public static final MOVE:I = 0x1

.field public static final RIGHTDOWN:I = 0x8

.field public static final RIGHTUP:I = 0x10

.field public static final VIRTUALDESK:I = 0x4000

.field public static final WHEEL:I = 0x800

.field public static final XDOWN:I = 0x80

.field public static final XUP:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFlagFor(Lcom/termux/x11/controller/xserver/Pointer$Button;Z)I
    .locals 2
    .param p0, "button"    # Lcom/termux/x11/controller/xserver/Pointer$Button;
    .param p1, "isActionDown"    # Z

    .line 21
    sget-object v0, Lcom/termux/x11/controller/winhandler/MouseEventFlags$1;->$SwitchMap$com$termux$x11$controller$xserver$Pointer$Button:[I

    invoke-virtual {p0}, Lcom/termux/x11/controller/xserver/Pointer$Button;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32
    const/4 v0, 0x0

    return v0

    .line 30
    :pswitch_0
    const/16 v0, 0x800

    return v0

    .line 27
    :pswitch_1
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    return v0

    .line 25
    :pswitch_2
    if-eqz p1, :cond_1

    const/16 v0, 0x20

    goto :goto_1

    :cond_1
    const/16 v0, 0x40

    :goto_1
    return v0

    .line 23
    :pswitch_3
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

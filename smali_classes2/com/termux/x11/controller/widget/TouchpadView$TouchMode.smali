.class public final enum Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;
.super Ljava/lang/Enum;
.source "TouchpadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/controller/widget/TouchpadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

.field public static final enum TOUCH_SCREEN:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

.field public static final enum TRACK_PAD:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;


# direct methods
.method private static synthetic $values()[Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;
    .locals 3

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    sget-object v1, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;->TRACK_PAD:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;->TOUCH_SCREEN:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    const-string v1, "TRACK_PAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;->TRACK_PAD:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    new-instance v0, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    const-string v1, "TOUCH_SCREEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;->TOUCH_SCREEN:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    .line 20
    invoke-static {}, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;->$values()[Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    move-result-object v0

    sput-object v0, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;->$VALUES:[Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    return-object v0
.end method

.method public static values()[Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;
    .locals 1

    .line 20
    sget-object v0, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;->$VALUES:[Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    invoke-virtual {v0}, [Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    return-object v0
.end method

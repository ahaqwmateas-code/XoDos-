.class public final enum Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;
.super Ljava/lang/Enum;
.source "WineThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/controller/core/WineThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackgroundType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;

.field public static final enum COLOR:Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;

.field public static final enum IMAGE:Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;


# direct methods
.method private static synthetic $values()[Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;
    .locals 3

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;

    sget-object v1, Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;->IMAGE:Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;->COLOR:Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;->IMAGE:Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;

    new-instance v0, Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;

    const-string v1, "COLOR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;->COLOR:Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;

    invoke-static {}, Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;->$values()[Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;

    move-result-object v0

    sput-object v0, Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;->$VALUES:[Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;

    return-object v0
.end method

.method public static values()[Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;
    .locals 1

    .line 21
    sget-object v0, Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;->$VALUES:[Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;

    invoke-virtual {v0}, [Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/x11/controller/core/WineThemeManager$BackgroundType;

    return-object v0
.end method

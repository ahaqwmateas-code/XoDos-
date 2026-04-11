.class public final enum Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;
.super Ljava/lang/Enum;
.source "DisplaySlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/terminal/DisplaySlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

.field public static final enum CENTER_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

.field public static final enum LEFT_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

.field public static final enum RIGHT_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;


# direct methods
.method private static synthetic $values()[Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;
    .locals 3

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    sget-object v1, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->LEFT_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->CENTER_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->RIGHT_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    const-string v1, "LEFT_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->LEFT_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    new-instance v0, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    const-string v1, "CENTER_CONTENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->CENTER_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    new-instance v0, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    const-string v1, "RIGHT_CONTENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->RIGHT_CONTENT:Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    .line 18
    invoke-static {}, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->$values()[Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    move-result-object v0

    sput-object v0, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->$VALUES:[Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    return-object v0
.end method

.method public static values()[Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;
    .locals 1

    .line 18
    sget-object v0, Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->$VALUES:[Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    invoke-virtual {v0}, [Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/app/terminal/DisplaySlidingWindow$ContentType;

    return-object v0
.end method

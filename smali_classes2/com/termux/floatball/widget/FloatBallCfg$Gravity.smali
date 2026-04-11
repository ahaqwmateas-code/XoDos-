.class public final enum Lcom/termux/floatball/widget/FloatBallCfg$Gravity;
.super Ljava/lang/Enum;
.source "FloatBallCfg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/floatball/widget/FloatBallCfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/floatball/widget/FloatBallCfg$Gravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

.field public static final enum LEFT_BOTTOM:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

.field public static final enum LEFT_CENTER:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

.field public static final enum LEFT_TOP:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

.field public static final enum RIGHT_BOTTOM:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

.field public static final enum RIGHT_CENTER:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

.field public static final enum RIGHT_TOP:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;


# instance fields
.field mValue:I


# direct methods
.method private static synthetic $values()[Lcom/termux/floatball/widget/FloatBallCfg$Gravity;
    .locals 3

    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    sget-object v1, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->LEFT_TOP:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->LEFT_CENTER:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->LEFT_BOTTOM:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->RIGHT_TOP:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->RIGHT_CENTER:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->RIGHT_BOTTOM:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 62
    new-instance v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    const/4 v1, 0x0

    const/16 v2, 0x33

    const-string v3, "LEFT_TOP"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->LEFT_TOP:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    .line 63
    new-instance v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    const/4 v1, 0x1

    const/16 v2, 0x13

    const-string v3, "LEFT_CENTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->LEFT_CENTER:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    .line 64
    new-instance v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    const/4 v1, 0x2

    const/16 v2, 0x53

    const-string v3, "LEFT_BOTTOM"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->LEFT_BOTTOM:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    .line 65
    new-instance v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    const/4 v1, 0x3

    const/16 v2, 0x35

    const-string v3, "RIGHT_TOP"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->RIGHT_TOP:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    .line 66
    new-instance v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    const/4 v1, 0x4

    const/16 v2, 0x15

    const-string v3, "RIGHT_CENTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->RIGHT_CENTER:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    .line 67
    new-instance v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    const/4 v1, 0x5

    const/16 v2, 0x55

    const-string v3, "RIGHT_BOTTOM"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->RIGHT_BOTTOM:Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    .line 61
    invoke-static {}, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->$values()[Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    move-result-object v0

    sput-object v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->$VALUES:[Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->mValue:I

    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/floatball/widget/FloatBallCfg$Gravity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 61
    const-class v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    return-object v0
.end method

.method public static values()[Lcom/termux/floatball/widget/FloatBallCfg$Gravity;
    .locals 1

    .line 61
    sget-object v0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->$VALUES:[Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    invoke-virtual {v0}, [Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/floatball/widget/FloatBallCfg$Gravity;

    return-object v0
.end method


# virtual methods
.method public getGravity()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/termux/floatball/widget/FloatBallCfg$Gravity;->mValue:I

    return v0
.end method

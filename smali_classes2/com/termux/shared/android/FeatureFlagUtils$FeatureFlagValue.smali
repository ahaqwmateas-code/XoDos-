.class public final enum Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;
.super Ljava/lang/Enum;
.source "FeatureFlagUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/android/FeatureFlagUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureFlagValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

.field public static final enum FALSE:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

.field public static final enum TRUE:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

.field public static final enum UNKNOWN:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

.field public static final enum UNSUPPORTED:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;
    .locals 3

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    sget-object v1, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->UNKNOWN:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->UNSUPPORTED:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->TRUE:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->FALSE:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 58
    new-instance v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    const/4 v1, 0x0

    const-string v2, "<unknown>"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->UNKNOWN:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    .line 61
    new-instance v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    const/4 v1, 0x1

    const-string v2, "<unsupported>"

    const-string v3, "UNSUPPORTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->UNSUPPORTED:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    .line 64
    new-instance v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    const/4 v1, 0x2

    const-string v2, "true"

    const-string v3, "TRUE"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->TRUE:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    .line 67
    new-instance v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    const/4 v1, 0x3

    const-string v2, "false"

    const-string v3, "FALSE"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->FALSE:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    .line 55
    invoke-static {}, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->$values()[Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->$VALUES:[Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->name:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    const-class v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    return-object v0
.end method

.method public static values()[Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;
    .locals 1

    .line 55
    sget-object v0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->$VALUES:[Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    invoke-virtual {v0}, [Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->name:Ljava/lang/String;

    return-object v0
.end method

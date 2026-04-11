.class public final enum Lcom/termux/shared/theme/NightMode;
.super Ljava/lang/Enum;
.source "NightMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/shared/theme/NightMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/theme/NightMode;

.field private static APP_NIGHT_MODE:Lcom/termux/shared/theme/NightMode; = null

.field public static final enum FALSE:Lcom/termux/shared/theme/NightMode;

.field private static final LOG_TAG:Ljava/lang/String; = "NightMode"

.field public static final enum SYSTEM:Lcom/termux/shared/theme/NightMode;

.field public static final enum TRUE:Lcom/termux/shared/theme/NightMode;


# instance fields
.field private final mode:I

.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/termux/shared/theme/NightMode;
    .locals 3

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/termux/shared/theme/NightMode;

    sget-object v1, Lcom/termux/shared/theme/NightMode;->TRUE:Lcom/termux/shared/theme/NightMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/theme/NightMode;->FALSE:Lcom/termux/shared/theme/NightMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/theme/NightMode;->SYSTEM:Lcom/termux/shared/theme/NightMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/termux/shared/theme/NightMode;

    const-string v1, "TRUE"

    const/4 v2, 0x0

    const-string v3, "true"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/termux/shared/theme/NightMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/theme/NightMode;->TRUE:Lcom/termux/shared/theme/NightMode;

    .line 16
    new-instance v0, Lcom/termux/shared/theme/NightMode;

    const/4 v1, 0x1

    const-string v2, "false"

    const-string v3, "FALSE"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/termux/shared/theme/NightMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/theme/NightMode;->FALSE:Lcom/termux/shared/theme/NightMode;

    .line 22
    new-instance v0, Lcom/termux/shared/theme/NightMode;

    const-string v1, "system"

    const/4 v2, -0x1

    const-string v3, "SYSTEM"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/termux/shared/theme/NightMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/theme/NightMode;->SYSTEM:Lcom/termux/shared/theme/NightMode;

    .line 10
    invoke-static {}, Lcom/termux/shared/theme/NightMode;->$values()[Lcom/termux/shared/theme/NightMode;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/theme/NightMode;->$VALUES:[Lcom/termux/shared/theme/NightMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/termux/shared/theme/NightMode;->name:Ljava/lang/String;

    .line 34
    iput p4, p0, Lcom/termux/shared/theme/NightMode;->mode:I

    .line 35
    return-void
.end method

.method public static getAppNightMode()Lcom/termux/shared/theme/NightMode;
    .locals 1

    .line 85
    sget-object v0, Lcom/termux/shared/theme/NightMode;->APP_NIGHT_MODE:Lcom/termux/shared/theme/NightMode;

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/termux/shared/theme/NightMode;->SYSTEM:Lcom/termux/shared/theme/NightMode;

    sput-object v0, Lcom/termux/shared/theme/NightMode;->APP_NIGHT_MODE:Lcom/termux/shared/theme/NightMode;

    .line 88
    :cond_0
    sget-object v0, Lcom/termux/shared/theme/NightMode;->APP_NIGHT_MODE:Lcom/termux/shared/theme/NightMode;

    return-object v0
.end method

.method public static modeOf(Ljava/lang/String;)Lcom/termux/shared/theme/NightMode;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/termux/shared/theme/NightMode;->values()[Lcom/termux/shared/theme/NightMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 50
    .local v3, "v":Lcom/termux/shared/theme/NightMode;
    iget-object v4, v3, Lcom/termux/shared/theme/NightMode;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    return-object v3

    .line 49
    .end local v3    # "v":Lcom/termux/shared/theme/NightMode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static modeOf(Ljava/lang/String;Lcom/termux/shared/theme/NightMode;)Lcom/termux/shared/theme/NightMode;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "def"    # Lcom/termux/shared/theme/NightMode;

    .line 61
    invoke-static {p0}, Lcom/termux/shared/theme/NightMode;->modeOf(Ljava/lang/String;)Lcom/termux/shared/theme/NightMode;

    move-result-object v0

    .line 62
    .local v0, "nightMode":Lcom/termux/shared/theme/NightMode;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method public static setAppNightMode(Ljava/lang/String;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 68
    const-string v0, "\""

    const-string v1, "NightMode"

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/theme/NightMode;->modeOf(Ljava/lang/String;)Lcom/termux/shared/theme/NightMode;

    move-result-object v2

    .line 72
    .local v2, "nightMode":Lcom/termux/shared/theme/NightMode;
    if-nez v2, :cond_1

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid APP_NIGHT_MODE \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 76
    :cond_1
    sput-object v2, Lcom/termux/shared/theme/NightMode;->APP_NIGHT_MODE:Lcom/termux/shared/theme/NightMode;

    goto :goto_1

    .line 69
    .end local v2    # "nightMode":Lcom/termux/shared/theme/NightMode;
    :cond_2
    :goto_0
    sget-object v2, Lcom/termux/shared/theme/NightMode;->SYSTEM:Lcom/termux/shared/theme/NightMode;

    sput-object v2, Lcom/termux/shared/theme/NightMode;->APP_NIGHT_MODE:Lcom/termux/shared/theme/NightMode;

    .line 79
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set APP_NIGHT_MODE to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/termux/shared/theme/NightMode;->APP_NIGHT_MODE:Lcom/termux/shared/theme/NightMode;

    invoke-virtual {v3}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/theme/NightMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lcom/termux/shared/theme/NightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/theme/NightMode;

    return-object v0
.end method

.method public static values()[Lcom/termux/shared/theme/NightMode;
    .locals 1

    .line 10
    sget-object v0, Lcom/termux/shared/theme/NightMode;->$VALUES:[Lcom/termux/shared/theme/NightMode;

    invoke-virtual {v0}, [Lcom/termux/shared/theme/NightMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/theme/NightMode;

    return-object v0
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/termux/shared/theme/NightMode;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/termux/shared/theme/NightMode;->name:Ljava/lang/String;

    return-object v0
.end method

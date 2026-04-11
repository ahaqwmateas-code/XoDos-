.class public final enum Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;
.super Ljava/lang/Enum;
.source "TermuxBootstrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/termux/TermuxBootstrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PackageVariant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

.field public static final enum APT_ANDROID_5:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

.field public static final enum APT_ANDROID_7:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;
    .locals 3

    .line 177
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    sget-object v1, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->APT_ANDROID_7:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->APT_ANDROID_5:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 180
    new-instance v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    const/4 v1, 0x0

    const-string v2, "apt-android-7"

    const-string v3, "APT_ANDROID_7"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->APT_ANDROID_7:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    .line 183
    new-instance v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    const/4 v1, 0x1

    const-string v2, "apt-android-5"

    const-string v3, "APT_ANDROID_5"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->APT_ANDROID_5:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    .line 177
    invoke-static {}, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->$values()[Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->$VALUES:[Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

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

    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 194
    iput-object p3, p0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->name:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 177
    const-class v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    return-object v0
.end method

.method public static values()[Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;
    .locals 1

    .line 177
    sget-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->$VALUES:[Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    invoke-virtual {v0}, [Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    return-object v0
.end method

.method public static variantOf(Ljava/lang/String;)Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 209
    :cond_0
    invoke-static {}, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->values()[Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 210
    .local v4, "v":Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;
    iget-object v5, v4, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->name:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    return-object v4

    .line 209
    .end local v4    # "v":Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_2
    return-object v0

    .line 208
    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public equalsVariant(Ljava/lang/String;)Z
    .locals 1
    .param p1, "variant"    # Ljava/lang/String;

    .line 202
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->name:Ljava/lang/String;

    return-object v0
.end method

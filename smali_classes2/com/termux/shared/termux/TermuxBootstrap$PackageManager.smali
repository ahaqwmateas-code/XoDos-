.class public final enum Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;
.super Ljava/lang/Enum;
.source "TermuxBootstrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/termux/TermuxBootstrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PackageManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

.field public static final enum APT:Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;
    .locals 3

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    sget-object v1, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->APT:Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 131
    new-instance v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    const/4 v1, 0x0

    const-string v2, "apt"

    const-string v3, "APT"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->APT:Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    .line 124
    invoke-static {}, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->$values()[Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->$VALUES:[Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

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

    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    iput-object p3, p0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->name:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public static managerOf(Ljava/lang/String;)Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    invoke-static {}, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->values()[Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 165
    .local v4, "v":Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;
    iget-object v5, v4, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->name:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    return-object v4

    .line 164
    .end local v4    # "v":Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :cond_2
    return-object v0

    .line 163
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 124
    const-class v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    return-object v0
.end method

.method public static values()[Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;
    .locals 1

    .line 124
    sget-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->$VALUES:[Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    invoke-virtual {v0}, [Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    return-object v0
.end method


# virtual methods
.method public equalsManager(Ljava/lang/String;)Z
    .locals 1
    .param p1, "manager"    # Ljava/lang/String;

    .line 157
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->name:Ljava/lang/String;

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

    .line 153
    iget-object v0, p0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->name:Ljava/lang/String;

    return-object v0
.end method

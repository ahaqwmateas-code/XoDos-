.class public Lcom/termux/shared/settings/properties/SharedProperties;
.super Ljava/lang/Object;
.source "SharedProperties.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SharedProperties"

.field public static final MAP_GENERIC_BOOLEAN:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAP_GENERIC_INVERTED_BOOLEAN:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mProperties:Ljava/util/Properties;

.field private final mPropertiesFile:Ljava/io/File;

.field private final mPropertiesList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPropertiesParser:Lcom/termux/shared/settings/properties/SharedPropertiesParser;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 71
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    .line 73
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 74
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v0, v4, v3}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/settings/properties/SharedProperties;->MAP_GENERIC_BOOLEAN:Lcom/google/common/collect/ImmutableBiMap;

    .line 78
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    .line 80
    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v4, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/settings/properties/SharedProperties;->MAP_GENERIC_INVERTED_BOOLEAN:Lcom/google/common/collect/ImmutableBiMap;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/util/Set;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "propertiesFile"    # Ljava/io/File;
    .param p4, "sharedPropertiesParser"    # Lcom/termux/shared/settings/properties/SharedPropertiesParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/termux/shared/settings/properties/SharedPropertiesParser;",
            ")V"
        }
    .end annotation

    .line 96
    .local p3, "propertiesList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mLock:Ljava/lang/Object;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mPropertiesFile:Ljava/io/File;

    .line 99
    iput-object p3, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mPropertiesList:Ljava/util/Set;

    .line 100
    iput-object p4, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mSharedPropertiesParser:Lcom/termux/shared/settings/properties/SharedPropertiesParser;

    .line 102
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mProperties:Ljava/util/Properties;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mMap:Ljava/util/Map;

    .line 104
    return-void
.end method

.method public static getBooleanValueForStringValue(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 487
    sget-object v0, Lcom/termux/shared/settings/properties/SharedProperties;->MAP_GENERIC_BOOLEAN:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getBooleanValueForStringValue(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "def"    # Z
    .param p3, "logErrorOnInvalidValue"    # Z
    .param p4, "logTag"    # Ljava/lang/String;

    .line 502
    sget-object v1, Lcom/termux/shared/settings/properties/SharedProperties;->MAP_GENERIC_BOOLEAN:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p1}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, p0

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p2, "inputValue"    # Ljava/lang/Object;
    .param p3, "defaultOutputValue"    # Ljava/lang/Object;
    .param p4, "logErrorOnInvalidValue"    # Z
    .param p5, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/BiMap<",
            "**>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 536
    .local p1, "map":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<**>;"
    invoke-interface {p1, p2}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 537
    .local v0, "outputValue":Ljava/lang/Object;
    if-nez v0, :cond_3

    .line 538
    invoke-interface {p1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 539
    .local v1, "defaultInputValue":Ljava/lang/Object;
    const-string v2, "\" for the key \""

    if-nez v1, :cond_0

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The default output value \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" does not exist as a value in the BiMap passed to getDefaultIfNotInMap(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SharedProperties"

    invoke-static {v4, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_0
    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    .line 543
    const-string v3, "\" instead."

    const-string v4, "\" is invalid. Using default value \""

    const-string v5, "The value \""

    if-eqz p0, :cond_1

    .line 544
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_2
    :goto_0
    return-object p3

    .line 551
    .end local v1    # "defaultInputValue":Ljava/lang/Object;
    :cond_3
    return-object v0
.end method

.method public static getDefaultIfNotInRange(Ljava/lang/String;FFFFZZLjava/lang/String;)F
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # F
    .param p2, "def"    # F
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "logErrorOnInvalidValue"    # Z
    .param p6, "ignoreErrorIfValueZero"    # Z
    .param p7, "logTag"    # Ljava/lang/String;

    .line 600
    cmpg-float v0, p1, p3

    if-ltz v0, :cond_1

    cmpl-float v0, p1, p4

    if-lez v0, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    return p1

    .line 601
    :cond_1
    :goto_0
    if-eqz p5, :cond_4

    if-eqz p6, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_4

    .line 602
    :cond_2
    const-string v0, "\" instead."

    const-string v1, " (inclusive). Using default value \""

    const-string v2, "-"

    const-string v3, "\" is not within the range "

    const-string v4, "The value \""

    if-eqz p0, :cond_3

    .line 603
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" for the key \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 605
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :cond_4
    :goto_1
    return p2
.end method

.method public static getDefaultIfNotInRange(Ljava/lang/String;IIIIZZLjava/lang/String;)I
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "def"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "logErrorOnInvalidValue"    # Z
    .param p6, "ignoreErrorIfValueZero"    # Z
    .param p7, "logTag"    # Ljava/lang/String;

    .line 571
    if-lt p1, p3, :cond_1

    if-le p1, p4, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    return p1

    .line 572
    :cond_1
    :goto_0
    if-eqz p5, :cond_4

    if-eqz p6, :cond_2

    if-eqz p1, :cond_4

    .line 573
    :cond_2
    const-string v0, "\" instead."

    const-string v1, " (inclusive). Using default value \""

    const-string v2, "-"

    const-string v3, "\" is not within the range "

    const-string v4, "The value \""

    if-eqz p0, :cond_3

    .line 574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" for the key \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 576
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_4
    :goto_1
    return p2
.end method

.method public static getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 621
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p1, "def":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static getDefaultIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .line 632
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p1

    :goto_1
    return-object v0
.end method

.method public static getInternalProperty(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)Ljava/lang/Object;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propertiesFile"    # Ljava/io/File;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sharedPropertiesParser"    # Lcom/termux/shared/settings/properties/SharedPropertiesParser;

    .line 324
    invoke-static {p0, p1, p3}, Lcom/termux/shared/settings/properties/SharedProperties;->getPropertiesFromFile(Landroid/content/Context;Ljava/io/File;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-static {v0, v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    invoke-virtual {v0, p2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    .local v0, "value":Ljava/lang/String;
    invoke-interface {p3, p0, p2, v0}, Lcom/termux/shared/settings/properties/SharedPropertiesParser;->getInternalPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static getInvertedBooleanValueForStringValue(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "def"    # Z
    .param p3, "logErrorOnInvalidValue"    # Z
    .param p4, "logTag"    # Ljava/lang/String;

    .line 517
    sget-object v1, Lcom/termux/shared/settings/properties/SharedProperties;->MAP_GENERIC_INVERTED_BOOLEAN:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p1}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, p0

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getMapCopy(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 470
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 471
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getPropertiesCopy(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 4
    .param p0, "inputProperties"    # Ljava/util/Properties;

    .line 459
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 461
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 462
    .local v0, "outputProperties":Ljava/util/Properties;
    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 463
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 466
    :cond_1
    return-object v0
.end method

.method public static getPropertiesFileFromList(Ljava/util/List;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .line 269
    .local p0, "propertiesFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 272
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    .local v2, "propertiesFilePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v3, "propertiesFile":Ljava/io/File;
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v4

    .line 277
    .local v4, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v5, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    const-string v6, "Ignoring properties file at \""

    if-ne v4, v5, :cond_2

    .line 278
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 279
    return-object v3

    .line 281
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" since it is not readable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 282
    :cond_2
    sget-object v5, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v4, v5, :cond_3

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" of type: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v2    # "propertiesFilePath":Ljava/lang/String;
    .end local v3    # "propertiesFile":Ljava/io/File;
    .end local v4    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    :cond_3
    :goto_1
    goto :goto_0

    .line 287
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No readable properties file found at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-object v0

    .line 270
    :cond_5
    :goto_2
    return-object v0
.end method

.method public static getPropertiesFromFile(Landroid/content/Context;Ljava/io/File;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)Ljava/util/Properties;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propertiesFile"    # Ljava/io/File;
    .param p2, "sharedPropertiesParser"    # Lcom/termux/shared/settings/properties/SharedPropertiesParser;

    .line 234
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 236
    .local v0, "properties":Ljava/util/Properties;
    const-string v1, "SharedProperties"

    if-nez p1, :cond_0

    .line 237
    const-string v2, "Not loading properties since file is null"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-object v0

    .line 242
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading properties from \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 251
    .end local v2    # "in":Ljava/io/FileInputStream;
    nop

    .line 253
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 254
    invoke-interface {p2, p0, v0}, Lcom/termux/shared/settings/properties/SharedPropertiesParser;->preProcessPropertiesOnReadFromDisk(Landroid/content/Context;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    return-object v1

    .line 256
    :cond_1
    return-object v0

    .line 242
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "properties":Ljava/util/Properties;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "propertiesFile":Ljava/io/File;
    .end local p2    # "sharedPropertiesParser":Lcom/termux/shared/settings/properties/SharedPropertiesParser;
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 246
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "properties":Ljava/util/Properties;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "propertiesFile":Ljava/io/File;
    .restart local p2    # "sharedPropertiesParser":Lcom/termux/shared/settings/properties/SharedPropertiesParser;
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Exception;
    if-eqz p0, :cond_2

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not open properties file \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 249
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading properties file \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getProperty(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propertiesFile"    # Ljava/io/File;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    .line 294
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/termux/shared/settings/properties/SharedProperties;->getProperty(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propertiesFile"    # Ljava/io/File;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;
    .param p4, "sharedPropertiesParser"    # Lcom/termux/shared/settings/properties/SharedPropertiesParser;

    .line 309
    invoke-static {p0, p1, p4}, Lcom/termux/shared/settings/properties/SharedProperties;->getPropertiesFromFile(Landroid/content/Context;Ljava/io/File;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-static {v0, v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    invoke-virtual {v0, p2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isPropertyValueFalse(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propertiesFile"    # Ljava/io/File;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "logErrorOnInvalidValue"    # Z

    .line 356
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/termux/shared/settings/properties/SharedProperties;->isPropertyValueFalse(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLcom/termux/shared/settings/properties/SharedPropertiesParser;)Z

    move-result v0

    return v0
.end method

.method public static isPropertyValueFalse(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLcom/termux/shared/settings/properties/SharedPropertiesParser;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propertiesFile"    # Ljava/io/File;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "logErrorOnInvalidValue"    # Z
    .param p4, "sharedPropertiesParser"    # Lcom/termux/shared/settings/properties/SharedPropertiesParser;

    .line 374
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p4}, Lcom/termux/shared/settings/properties/SharedProperties;->getProperty(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "SharedProperties"

    invoke-static {p2, v0, v1, p3, v2}, Lcom/termux/shared/settings/properties/SharedProperties;->getInvertedBooleanValueForStringValue(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPropertyValueTrue(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propertiesFile"    # Ljava/io/File;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "logErrorOnInvalidValue"    # Z

    .line 333
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/termux/shared/settings/properties/SharedProperties;->isPropertyValueTrue(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLcom/termux/shared/settings/properties/SharedPropertiesParser;)Z

    move-result v0

    return v0
.end method

.method public static isPropertyValueTrue(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLcom/termux/shared/settings/properties/SharedPropertiesParser;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propertiesFile"    # Ljava/io/File;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "logErrorOnInvalidValue"    # Z
    .param p4, "sharedPropertiesParser"    # Lcom/termux/shared/settings/properties/SharedPropertiesParser;

    .line 351
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p4}, Lcom/termux/shared/settings/properties/SharedProperties;->getProperty(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SharedProperties"

    invoke-static {p2, v0, v1, p3, v2}, Lcom/termux/shared/settings/properties/SharedProperties;->getBooleanValueForStringValue(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putToMap(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 394
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    const-string v1, "SharedProperties"

    if-nez p0, :cond_0

    .line 395
    const-string v2, "Map passed to SharedProperties.putToProperties() is null"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return v0

    .line 400
    :cond_0
    if-nez p1, :cond_1

    .line 401
    const-string v2, "Cannot put a null key into properties map"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return v0

    .line 405
    :cond_1
    const/4 v2, 0x0

    .line 406
    .local v2, "put":Z
    if-eqz p2, :cond_4

    .line 407
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 408
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/common/primitives/Primitives;->isWrapperType(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    instance-of v4, p2, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 409
    :cond_2
    const/4 v2, 0x1

    .line 411
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    goto :goto_0

    .line 412
    :cond_4
    const/4 v2, 0x1

    .line 415
    :goto_0
    if-eqz v2, :cond_5

    .line 416
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const/4 v0, 0x1

    return v0

    .line 419
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot put a non-primitive value for the key \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" into properties map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return v0
.end method

.method public static putToProperties(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "properties"    # Ljava/util/Properties;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 437
    const/4 v0, 0x0

    const-string v1, "SharedProperties"

    if-nez p0, :cond_0

    .line 438
    const-string v2, "Properties passed to SharedProperties.putToProperties() is null"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return v0

    .line 443
    :cond_0
    if-nez p1, :cond_1

    .line 444
    const-string v2, "Cannot put a null key into properties"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return v0

    .line 448
    :cond_1
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 449
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    return v0

    .line 452
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    return v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 642
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInternalProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mMap:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mMap:Ljava/util/Map;

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getMapCopy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInternalProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    if-eqz p1, :cond_0

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->getInternalProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 215
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProperties(Z)Ljava/util/Properties;
    .locals 4
    .param p1, "cached"    # Z

    .line 161
    iget-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    if-eqz p1, :cond_1

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mProperties:Ljava/util/Properties;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mProperties:Ljava/util/Properties;

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mProperties:Ljava/util/Properties;

    invoke-static {v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getPropertiesCopy(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mPropertiesFile:Ljava/io/File;

    iget-object v3, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mSharedPropertiesParser:Lcom/termux/shared/settings/properties/SharedPropertiesParser;

    invoke-static {v1, v2, v3}, Lcom/termux/shared/settings/properties/SharedProperties;->getPropertiesFromFile(Landroid/content/Context;Ljava/io/File;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)Ljava/util/Properties;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProperty(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cached"    # Z

    .line 181
    iget-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/termux/shared/settings/properties/SharedProperties;->getProperties(Z)Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadPropertiesFromDisk()V
    .locals 10

    .line 113
    iget-object v0, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getProperties(Z)Ljava/util/Properties;

    move-result-object v1

    .line 119
    .local v1, "properties":Ljava/util/Properties;
    if-nez v1, :cond_0

    .line 120
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    move-object v1, v2

    .line 122
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 125
    .local v3, "newProperties":Ljava/util/Properties;
    iget-object v4, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mPropertiesList:Ljava/util/Set;

    .line 126
    .local v4, "propertiesList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v4, :cond_1

    .line 127
    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v5

    move-object v4, v5

    .line 131
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 132
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "value":Ljava/lang/String;
    iget-object v8, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mSharedPropertiesParser:Lcom/termux/shared/settings/properties/SharedPropertiesParser;

    iget-object v9, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mContext:Landroid/content/Context;

    invoke-interface {v8, v9, v6, v7}, Lcom/termux/shared/settings/properties/SharedPropertiesParser;->getInternalPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 141
    .local v8, "internalValue":Ljava/lang/Object;
    invoke-static {v2, v6, v8}, Lcom/termux/shared/settings/properties/SharedProperties;->putToMap(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 142
    invoke-static {v3, v6, v7}, Lcom/termux/shared/settings/properties/SharedProperties;->putToProperties(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    .end local v6    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 146
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "internalValue":Ljava/lang/Object;
    :cond_3
    iput-object v2, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mMap:Ljava/util/Map;

    .line 147
    iput-object v3, p0, Lcom/termux/shared/settings/properties/SharedProperties;->mProperties:Ljava/util/Properties;

    .line 148
    .end local v1    # "properties":Ljava/util/Properties;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "newProperties":Ljava/util/Properties;
    .end local v4    # "propertiesList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v0

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

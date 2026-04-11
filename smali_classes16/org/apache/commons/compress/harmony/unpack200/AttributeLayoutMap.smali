.class public Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;
.super Ljava/lang/Object;
.source "AttributeLayoutMap.java"


# instance fields
.field private final classLayouts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final codeLayouts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldLayouts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final layouts:[Ljava/util/Map;

.field private final layoutsToBands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;",
            ">;"
        }
    .end annotation
.end field

.field private final methodLayouts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->classLayouts:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->fieldLayouts:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->methodLayouts:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->codeLayouts:Ljava/util/Map;

    .line 132
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->classLayouts:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->fieldLayouts:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->methodLayouts:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->codeLayouts:Ljava/util/Map;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/util/Map;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    iput-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->layouts:[Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->layoutsToBands:Ljava/util/Map;

    .line 137
    invoke-static {}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getDefaultAttributeLayouts()[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v5, v1, :cond_0

    aget-object v2, v0, v5

    .line 138
    .local v2, "defaultAttributeLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->add(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)V

    .line 137
    .end local v2    # "defaultAttributeLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method private static getDefaultAttributeLayouts()[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 35
    const/16 v0, 0x46

    new-array v0, v0, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "ACC_PUBLIC"

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "ACC_PUBLIC"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5, v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "ACC_PUBLIC"

    const/4 v6, 0x2

    invoke-direct {v1, v2, v6, v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "ACC_PRIVATE"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v7, "ACC_PRIVATE"

    invoke-direct {v1, v7, v5, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v7, 0x4

    aput-object v1, v0, v7

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v8, "ACC_PRIVATE"

    invoke-direct {v1, v8, v6, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v8, 0x5

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "LineNumberTable"

    const-string v10, "NH[PHH]"

    invoke-direct {v1, v9, v2, v10, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v9, 0x6

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v10, "ACC_PROTECTED"

    invoke-direct {v1, v10, v3, v4, v6}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v10, 0x7

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v11, "ACC_PROTECTED"

    invoke-direct {v1, v11, v5, v4, v6}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v11, 0x8

    aput-object v1, v0, v11

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v12, "ACC_PROTECTED"

    invoke-direct {v1, v12, v6, v4, v6}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v12, 0x9

    aput-object v1, v0, v12

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v13, "LocalVariableTable"

    const-string v14, "NH[PHOHRUHRSHH]"

    invoke-direct {v1, v13, v2, v14, v6}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v13, 0xa

    aput-object v1, v0, v13

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v14, "ACC_STATIC"

    invoke-direct {v1, v14, v3, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v14, 0xb

    aput-object v1, v0, v14

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v15, "ACC_STATIC"

    invoke-direct {v1, v15, v5, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v15, 0xc

    aput-object v1, v0, v15

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v15, "ACC_STATIC"

    invoke-direct {v1, v15, v6, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v15, 0xd

    aput-object v1, v0, v15

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v15, "LocalVariableTypeTable"

    const-string v14, "NH[PHOHRUHRSHH]"

    invoke-direct {v1, v15, v2, v14, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v14, "ACC_FINAL"

    invoke-direct {v1, v14, v3, v4, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v14, 0xf

    aput-object v1, v0, v14

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v14, "ACC_FINAL"

    invoke-direct {v1, v14, v5, v4, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v14, 0x10

    aput-object v1, v0, v14

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v14, "ACC_FINAL"

    invoke-direct {v1, v14, v6, v4, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v7, 0x11

    aput-object v1, v0, v7

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v14, "ACC_SYNCHRONIZED"

    invoke-direct {v1, v14, v3, v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v14, 0x12

    aput-object v1, v0, v14

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v14, "ACC_SYNCHRONIZED"

    invoke-direct {v1, v14, v5, v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v14, 0x13

    aput-object v1, v0, v14

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v15, "ACC_SYNCHRONIZED"

    invoke-direct {v1, v15, v6, v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v8, 0x14

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v15, "ACC_VOLATILE"

    invoke-direct {v1, v15, v3, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v15, 0x15

    aput-object v1, v0, v15

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v15, "ACC_VOLATILE"

    invoke-direct {v1, v15, v5, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v15, 0x16

    aput-object v1, v0, v15

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v15, "ACC_VOLATILE"

    invoke-direct {v1, v15, v6, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x17

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_TRANSIENT"

    invoke-direct {v1, v9, v3, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x18

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_TRANSIENT"

    invoke-direct {v1, v9, v5, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x19

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_TRANSIENT"

    invoke-direct {v1, v9, v6, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x1a

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_NATIVE"

    invoke-direct {v1, v9, v3, v4, v11}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x1b

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_NATIVE"

    invoke-direct {v1, v9, v5, v4, v11}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x1c

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_NATIVE"

    invoke-direct {v1, v9, v6, v4, v11}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x1d

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_INTERFACE"

    invoke-direct {v1, v9, v3, v4, v12}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x1e

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_INTERFACE"

    invoke-direct {v1, v9, v5, v4, v12}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x1f

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_INTERFACE"

    invoke-direct {v1, v9, v6, v4, v12}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x20

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ABSTRACT"

    invoke-direct {v1, v9, v3, v4, v13}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x21

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ABSTRACT"

    invoke-direct {v1, v9, v5, v4, v13}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x22

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ABSTRACT"

    invoke-direct {v1, v9, v6, v4, v13}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x23

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_STRICT"

    const/16 v10, 0xb

    invoke-direct {v1, v9, v3, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x24

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_STRICT"

    invoke-direct {v1, v9, v5, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x25

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_STRICT"

    invoke-direct {v1, v9, v6, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x26

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_SYNTHETIC"

    const/16 v10, 0xc

    invoke-direct {v1, v9, v3, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x27

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_SYNTHETIC"

    invoke-direct {v1, v9, v5, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x28

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_SYNTHETIC"

    invoke-direct {v1, v9, v6, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x29

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ANNOTATION"

    const/16 v10, 0xd

    invoke-direct {v1, v9, v3, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x2a

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ANNOTATION"

    invoke-direct {v1, v9, v5, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x2b

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ANNOTATION"

    invoke-direct {v1, v9, v6, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x2c

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ENUM"

    invoke-direct {v1, v9, v3, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x2d

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ENUM"

    invoke-direct {v1, v9, v5, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v9, 0x2e

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v9, "ACC_ENUM"

    invoke-direct {v1, v9, v6, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "SourceFile"

    const-string v9, "RUNH"

    invoke-direct {v1, v2, v3, v9, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "ConstantValue"

    const-string v9, "KQH"

    invoke-direct {v1, v2, v5, v9, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "Code"

    invoke-direct {v1, v2, v6, v4, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RCHRDNH"

    const/16 v7, 0x12

    const-string v9, "EnclosingMethod"

    invoke-direct {v1, v9, v3, v2, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "NH[RCH]"

    const-string v9, "Exceptions"

    invoke-direct {v1, v9, v6, v2, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "Signature"

    const-string v7, "RSH"

    invoke-direct {v1, v2, v3, v7, v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "Signature"

    const-string v7, "RSH"

    invoke-direct {v1, v2, v5, v7, v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "Signature"

    const-string v7, "RSH"

    invoke-direct {v1, v2, v6, v7, v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "Deprecated"

    invoke-direct {v1, v2, v3, v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "Deprecated"

    invoke-direct {v1, v2, v5, v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "Deprecated"

    invoke-direct {v1, v2, v6, v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeVisibleAnnotations"

    const-string v7, "*"

    const/16 v8, 0x15

    invoke-direct {v1, v2, v3, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-direct {v1, v2, v5, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-direct {v1, v2, v6, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeInvisibleAnnotations"

    const/16 v8, 0x16

    invoke-direct {v1, v2, v3, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-direct {v1, v2, v5, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-direct {v1, v2, v6, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "InnerClasses"

    const/16 v5, 0x17

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x41

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-direct {v1, v2, v6, v7, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "class-file version"

    const/16 v5, 0x18

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x43

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    const/16 v3, 0x18

    invoke-direct {v1, v2, v6, v7, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x44

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    const-string v2, "AnnotationDefault"

    const/16 v3, 0x19

    invoke-direct {v1, v2, v6, v7, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/16 v2, 0x45

    aput-object v1, v0, v2

    return-object v0
.end method

.method private getLayout(I)Ljava/util/Map;
    .locals 1
    .param p1, "context"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->layouts:[Ljava/util/Map;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)V
    .locals 2
    .param p1, "layout"    # Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    .line 143
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getContext()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getLayout(I)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public add(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)V
    .locals 1
    .param p1, "layout"    # Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .param p2, "newBands"    # Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    .line 147
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->add(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)V

    .line 148
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->layoutsToBands:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public checkMap()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->layouts:[Ljava/util/Map;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 158
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .line 159
    .local v4, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;>;"
    instance-of v5, v4, Ljava/util/List;

    if-nez v5, :cond_0

    .line 160
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v5

    .line 162
    :cond_0
    move-object v5, v4

    check-cast v5, Ljava/util/List;

    .line 163
    .local v5, "layouts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 164
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    .line 165
    .local v7, "layout1":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    add-int/lit8 v8, v6, 0x1

    .local v8, "j2":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 166
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    .line 167
    .local v9, "layout2":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 168
    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getLayout()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getLayout()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_3

    .line 169
    :cond_1
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Same layout/name combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getLayout()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists twice for context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->contextNames:[Ljava/lang/String;

    .line 171
    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getContext()I

    move-result v10

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    .end local v9    # "layout2":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 163
    .end local v7    # "layout1":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v8    # "j2":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 157
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;>;"
    .end local v4    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;>;"
    .end local v5    # "layouts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;>;"
    .end local v6    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 176
    :cond_5
    return-void
.end method

.method public getAttributeBands(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
    .locals 1
    .param p1, "layout"    # Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    .line 179
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->layoutsToBands:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    return-object v0
.end method

.method public getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .locals 2
    .param p1, "index"    # I
    .param p2, "context"    # I

    .line 183
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getLayout(I)Ljava/util/Map;

    move-result-object v0

    .line 184
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    return-object v1
.end method

.method public getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # I

    .line 188
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getLayout(I)Ljava/util/Map;

    move-result-object v0

    .line 189
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    .line 190
    .local v2, "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    return-object v2

    .line 193
    .end local v2    # "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_0
    goto :goto_0

    .line 194
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

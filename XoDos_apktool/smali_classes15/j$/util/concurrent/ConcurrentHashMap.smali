.class public Lj$/util/concurrent/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;
.implements Lj$/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;,
        Lj$/util/concurrent/ConcurrentHashMap$ValuesView;,
        Lj$/util/concurrent/ConcurrentHashMap$KeySetView;,
        Lj$/util/concurrent/ConcurrentHashMap$CollectionView;,
        Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;,
        Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;,
        Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;,
        Lj$/util/concurrent/ConcurrentHashMap$MapEntry;,
        Lj$/util/concurrent/ConcurrentHashMap$EntryIterator;,
        Lj$/util/concurrent/ConcurrentHashMap$ValueIterator;,
        Lj$/util/concurrent/ConcurrentHashMap$KeyIterator;,
        Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;,
        Lj$/util/concurrent/ConcurrentHashMap$Traverser;,
        Lj$/util/concurrent/ConcurrentHashMap$TableStack;,
        Lj$/util/concurrent/ConcurrentHashMap$TreeBin;,
        Lj$/util/concurrent/ConcurrentHashMap$TreeNode;,
        Lj$/util/concurrent/ConcurrentHashMap$CounterCell;,
        Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;,
        Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;,
        Lj$/util/concurrent/ConcurrentHashMap$Segment;,
        Lj$/util/concurrent/ConcurrentHashMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ABASE:J

.field private static final ASHIFT:I

.field private static final BASECOUNT:J

.field private static final CELLSBUSY:J

.field private static final CELLVALUE:J

.field private static final DEFAULT_CAPACITY:I = 0x10

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final HASH_BITS:I = 0x7fffffff

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final MAX_RESIZERS:I

.field private static final MIN_TRANSFER_STRIDE:I = 0x10

.field static final MIN_TREEIFY_CAPACITY:I = 0x40

.field static final MOVED:I = -0x1

.field static final NCPU:I

.field static final RESERVED:I = -0x3

.field private static RESIZE_STAMP_BITS:I = 0x0

.field private static final RESIZE_STAMP_SHIFT:I

.field private static final SIZECTL:J

.field private static final TRANSFERINDEX:J

.field static final TREEBIN:I = -0x2

.field static final TREEIFY_THRESHOLD:I = 0x8

.field private static final U:Lsun/misc/Unsafe;

.field static final UNTREEIFY_THRESHOLD:I = 0x6

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field private volatile transient baseCount:J

.field private volatile transient cellsBusy:I

.field private volatile transient counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

.field private transient entrySet:Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$EntrySetView<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$KeySetView<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient sizeCtl:I

.field volatile transient table:[Lj$/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient transferIndex:I

.field private transient values:Lj$/util/concurrent/ConcurrentHashMap$ValuesView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$ValuesView<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 566
    const/16 v0, 0x10

    sput v0, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_BITS:I

    .line 572
    sget v0, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_BITS:I

    rsub-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    sput v0, Lj$/util/concurrent/ConcurrentHashMap;->MAX_RESIZERS:I

    .line 577
    sget v0, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_BITS:I

    rsub-int/lit8 v0, v0, 0x20

    sput v0, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    .line 588
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lj$/util/concurrent/ConcurrentHashMap;->NCPU:I

    .line 591
    new-instance v0, Ljava/io/ObjectStreamField;

    const-string v2, "segments"

    const-class v3, [Lj$/util/concurrent/ConcurrentHashMap$Segment;

    invoke-direct {v0, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "segmentMask"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v3, Ljava/io/ObjectStreamField;

    const-string v4, "segmentShift"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/io/ObjectStreamField;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v1

    const/4 v0, 0x2

    aput-object v3, v4, v0

    sput-object v4, Lj$/util/concurrent/ConcurrentHashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 4021
    :try_start_0
    invoke-static {}, Lj$/util/concurrent/DesugarUnsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    .line 4022
    const-class v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 4023
    .local v0, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-string v2, "sizeCtl"

    .line 4024
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    .line 4025
    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-string v2, "transferIndex"

    .line 4026
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lj$/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    .line 4027
    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-string v2, "baseCount"

    .line 4028
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lj$/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    .line 4029
    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-string v2, "cellsBusy"

    .line 4030
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    .line 4031
    const-class v1, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 4032
    .local v1, "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-string v3, "value"

    .line 4033
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    .line 4034
    const-class v2, [Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 4035
    .local v2, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->ABASE:J

    .line 4036
    sget-object v3, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v3

    .line 4037
    .local v3, "scale":I
    add-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v3

    if-nez v4, :cond_0

    .line 4039
    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1f

    sput v4, Lj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    .line 4042
    .end local v0    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "scale":I
    nop

    .line 4043
    return-void

    .line 4038
    .restart local v0    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "scale":I
    :cond_0
    new-instance v4, Ljava/lang/Error;

    const-string v5, "data type scale not a power of two"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4040
    .end local v0    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "scale":I
    :catch_0
    move-exception v0

    .line 4041
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 811
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 812
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 824
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 825
    if-ltz p1, :cond_1

    .line 827
    const/high16 v0, 0x20000000

    if-lt p1, v0, :cond_0

    .line 828
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 829
    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v0

    :goto_0
    nop

    .line 830
    .local v0, "cap":I
    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 831
    return-void

    .line 826
    .end local v0    # "cap":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 859
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 860
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 5
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .line 881
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 882
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    if-ltz p1, :cond_2

    if-lez p3, :cond_2

    .line 884
    if-ge p1, p3, :cond_0

    .line 885
    move p1, p3

    .line 886
    :cond_0
    int-to-long v0, p1

    long-to-float v0, v0

    div-float/2addr v0, p2

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-long v0, v0

    .line 887
    .local v0, "size":J
    const-wide/32 v2, 0x40000000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 888
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    long-to-int v2, v0

    invoke-static {v2}, Lj$/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v2

    .line 889
    .local v2, "cap":I
    :goto_0
    iput v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 890
    return-void

    .line 883
    .end local v0    # "size":J
    .end local v2    # "cap":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 838
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 839
    const/16 v0, 0x10

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 840
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 841
    return-void
.end method

.method private final addCount(JI)V
    .locals 23
    .param p1, "x"    # J
    .param p3, "check"    # I

    .line 2201
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    move/from16 v11, p3

    iget-object v0, v8, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object v12, v0

    .local v12, "as":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v0, :cond_0

    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    iget-wide v4, v8, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    move-wide v13, v4

    .local v13, "b":J
    add-long v6, v13, v9

    move-wide v15, v6

    .line 2202
    .local v15, "s":J
    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2204
    .end local v13    # "b":J
    .end local v15    # "s":J
    :cond_0
    const/4 v0, 0x1

    .line 2205
    .local v0, "uncontended":Z
    if-eqz v12, :cond_9

    array-length v1, v12

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v3, v1

    .local v3, "m":I
    if-ltz v1, :cond_9

    .line 2206
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v1

    and-int/2addr v1, v3

    aget-object v1, v12, v1

    move-object v4, v1

    .local v4, "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v1, :cond_9

    sget-object v13, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v15, Lj$/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    iget-wide v5, v4, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    move-wide/from16 v21, v5

    .local v21, "v":J
    add-long v19, v21, v9

    .line 2208
    move-object v14, v4

    move-wide/from16 v17, v5

    invoke-virtual/range {v13 .. v20}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    move v0, v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 2212
    :cond_1
    if-gt v11, v2, :cond_2

    .line 2213
    return-void

    .line 2214
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v15

    .line 2216
    .end local v0    # "uncontended":Z
    .end local v3    # "m":I
    .end local v4    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v21    # "v":J
    .restart local v15    # "s":J
    :cond_3
    if-ltz v11, :cond_8

    .line 2218
    :goto_0
    iget v0, v8, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v6, v0

    .local v6, "sc":I
    int-to-long v0, v0

    cmp-long v2, v15, v0

    if-ltz v2, :cond_8

    iget-object v0, v8, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v0

    .local v7, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_8

    array-length v0, v7

    move v13, v0

    .local v13, "n":I
    const/high16 v1, 0x40000000    # 2.0f

    if-ge v0, v1, :cond_8

    .line 2220
    invoke-static {v13}, Lj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v14

    .line 2221
    .local v14, "rs":I
    if-gez v6, :cond_6

    .line 2222
    sget v0, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    ushr-int v0, v6, v0

    if-ne v0, v14, :cond_8

    add-int/lit8 v0, v14, 0x1

    if-eq v6, v0, :cond_8

    sget v0, Lj$/util/concurrent/ConcurrentHashMap;->MAX_RESIZERS:I

    add-int/2addr v0, v14

    if-eq v6, v0, :cond_8

    iget-object v0, v8, Lj$/util/concurrent/ConcurrentHashMap;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v5, v0

    .local v5, "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_5

    iget v0, v8, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v0, :cond_4

    .line 2225
    goto :goto_2

    .line 2226
    :cond_4
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v17, v6, 0x1

    move-object/from16 v1, p0

    move v4, v6

    move-object v11, v5

    .end local v5    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v11, "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2227
    invoke-direct {v8, v7, v11}, Lj$/util/concurrent/ConcurrentHashMap;->transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_1

    .line 2222
    .end local v11    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    move-object v11, v5

    .end local v5    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v11    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_2

    .line 2229
    .end local v11    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    sget v1, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    shl-int v1, v14, v1

    add-int/lit8 v5, v1, 0x2

    move-object/from16 v1, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2231
    const/4 v0, 0x0

    invoke-direct {v8, v7, v0}, Lj$/util/concurrent/ConcurrentHashMap;->transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2232
    :cond_7
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v15

    .line 2233
    .end local v14    # "rs":I
    move/from16 v11, p3

    goto :goto_0

    .line 2235
    .end local v6    # "sc":I
    .end local v7    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "n":I
    :cond_8
    :goto_2
    return-void

    .line 2209
    .end local v15    # "s":J
    .restart local v0    # "uncontended":Z
    :cond_9
    :goto_3
    invoke-direct {v8, v9, v10, v0}, Lj$/util/concurrent/ConcurrentHashMap;->fullAddCount(JZ)V

    .line 2210
    return-void
.end method

.method static final casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)Z
    .locals 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 748
    .local p0, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "c":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p3, "v":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget v3, Lj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, v3

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->ABASE:J

    add-long v2, v1, v3

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lj$/com/android/tools/r8/DesugarVarHandle$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 8
    .param p0, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 695
    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_2

    .line 697
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_0

    .line 698
    return-object v1

    .line 699
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v2, v0

    .local v2, "ts":[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_2

    .line 700
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 701
    aget-object v3, v2, v0

    move-object v4, v3

    .local v4, "t":Ljava/lang/reflect/Type;
    instance-of v3, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    move-object v3, v4

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    move-object v5, v3

    .line 702
    .local v5, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-class v6, Ljava/lang/Comparable;

    if-ne v3, v6, :cond_1

    .line 704
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    move-object v6, v3

    .local v6, "as":[Ljava/lang/reflect/Type;
    if-eqz v3, :cond_1

    array-length v3, v6

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    const/4 v3, 0x0

    aget-object v3, v6, v3

    if-ne v3, v1, :cond_1

    .line 706
    return-object v1

    .line 700
    .end local v5    # "p":Ljava/lang/reflect/ParameterizedType;
    .end local v6    # "as":[Ljava/lang/reflect/Type;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    .end local v0    # "i":I
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ts":[Ljava/lang/reflect/Type;
    .end local v4    # "t":Ljava/lang/reflect/Type;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 719
    .local p0, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 720
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 719
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private final fullAddCount(JZ)V
    .locals 26
    .param p1, "x"    # J
    .param p3, "wasUncontended"    # Z

    .line 2470
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    move v1, v0

    .local v1, "h":I
    if-nez v0, :cond_0

    .line 2471
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->localInit()V

    .line 2472
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v1

    .line 2473
    const/4 v0, 0x1

    .end local p3    # "wasUncontended":Z
    .local v0, "wasUncontended":Z
    goto :goto_0

    .line 2470
    .end local v0    # "wasUncontended":Z
    .restart local p3    # "wasUncontended":Z
    :cond_0
    move/from16 v0, p3

    .line 2475
    .end local p3    # "wasUncontended":Z
    .restart local v0    # "wasUncontended":Z
    :goto_0
    const/4 v2, 0x0

    move v12, v0

    move v13, v1

    move v14, v2

    .line 2478
    .end local v0    # "wasUncontended":Z
    .end local v1    # "h":I
    .local v12, "wasUncontended":Z
    .local v13, "h":I
    .local v14, "collide":Z
    :cond_1
    :goto_1
    iget-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object v15, v0

    .local v15, "as":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    const/4 v7, 0x0

    if-eqz v0, :cond_10

    array-length v0, v15

    move v8, v0

    .local v8, "n":I
    if-lez v0, :cond_10

    .line 2479
    add-int/lit8 v0, v8, -0x1

    and-int/2addr v0, v13

    aget-object v0, v15, v0

    move-object v6, v0

    .local v6, "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v0, :cond_6

    .line 2480
    iget v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_4

    .line 2481
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    invoke-direct {v0, v10, v11}, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    move-object/from16 v16, v0

    .line 2482
    .local v16, "r":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    iget v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_3

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    .line 2483
    const/4 v5, 0x0

    const/4 v0, 0x1

    move-object/from16 v2, p0

    move-object/from16 v24, v6

    .end local v6    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .local v24, "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2484
    const/4 v1, 0x0

    .line 2487
    .local v1, "created":Z
    :try_start_0
    iget-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object v2, v0

    .local v2, "rs":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v0, :cond_2

    array-length v0, v2

    move v3, v0

    .local v3, "m":I
    if-lez v0, :cond_2

    add-int/lit8 v0, v3, -0x1

    and-int/2addr v0, v13

    move v4, v0

    .local v4, "j":I
    aget-object v0, v2, v0

    if-nez v0, :cond_2

    .line 2490
    aput-object v16, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2491
    const/4 v1, 0x1

    .line 2494
    .end local v2    # "rs":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v3    # "m":I
    .end local v4    # "j":I
    :cond_2
    iput v7, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2495
    nop

    .line 2496
    if-eqz v1, :cond_1

    .line 2497
    goto/16 :goto_6

    .line 2494
    :catchall_0
    move-exception v0

    iput v7, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2495
    throw v0

    .line 2482
    .end local v1    # "created":Z
    .end local v24    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_3
    move-object/from16 v24, v6

    .end local v6    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v24    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    goto :goto_2

    .line 2480
    .end local v16    # "r":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v24    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_4
    move-object/from16 v24, v6

    .line 2501
    .end local v6    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v24    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_5
    :goto_2
    const/4 v14, 0x0

    move-object/from16 v16, v24

    goto/16 :goto_5

    .line 2503
    .end local v24    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_6
    move-object/from16 v24, v6

    .end local v6    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v24    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v12, :cond_7

    .line 2504
    const/4 v12, 0x1

    move-object/from16 v16, v24

    goto/16 :goto_5

    .line 2505
    :cond_7
    sget-object v16, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v18, Lj$/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    move-object/from16 v6, v24

    .end local v24    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    iget-wide v0, v6, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    move-wide/from16 v24, v0

    .local v24, "v":J
    add-long v22, v24, v10

    move-object/from16 v17, v6

    move-wide/from16 v20, v0

    invoke-virtual/range {v16 .. v23}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2506
    goto/16 :goto_6

    .line 2507
    :cond_8
    iget-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v15, :cond_e

    sget v0, Lj$/util/concurrent/ConcurrentHashMap;->NCPU:I

    if-lt v8, v0, :cond_9

    move-object/from16 v16, v6

    goto :goto_4

    .line 2509
    :cond_9
    if-nez v14, :cond_a

    .line 2510
    const/4 v14, 0x1

    move-object/from16 v16, v6

    goto :goto_5

    .line 2511
    :cond_a
    iget v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_d

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    .line 2512
    const/4 v5, 0x0

    const/4 v0, 0x1

    move-object/from16 v2, p0

    move-object/from16 v16, v6

    .end local v6    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .local v16, "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2514
    :try_start_1
    iget-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v15, :cond_c

    .line 2515
    shl-int/lit8 v0, v8, 0x1

    new-array v0, v0, [Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 2516
    .local v0, "rs":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v8, :cond_b

    .line 2517
    aget-object v2, v15, v1

    aput-object v2, v0, v1

    .line 2516
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2518
    .end local v1    # "i":I
    :cond_b
    iput-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2521
    .end local v0    # "rs":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_c
    iput v7, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2522
    nop

    .line 2523
    const/4 v14, 0x0

    .line 2524
    goto/16 :goto_1

    .line 2521
    :catchall_1
    move-exception v0

    iput v7, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2522
    throw v0

    .line 2511
    .end local v16    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_d
    move-object/from16 v16, v6

    .end local v6    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v16    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    goto :goto_5

    .line 2507
    .end local v16    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_e
    move-object/from16 v16, v6

    .line 2508
    .end local v6    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v16    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :goto_4
    const/4 v14, 0x0

    .line 2526
    .end local v24    # "v":J
    :cond_f
    :goto_5
    invoke-static {v13}, Lj$/util/concurrent/ThreadLocalRandom;->advanceProbe(I)I

    move-result v0

    move v13, v0

    .end local v13    # "h":I
    .local v0, "h":I
    goto :goto_7

    .line 2528
    .end local v0    # "h":I
    .end local v8    # "n":I
    .end local v16    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v13    # "h":I
    :cond_10
    iget v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_13

    iget-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v15, :cond_13

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    .line 2529
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2530
    const/4 v1, 0x0

    .line 2532
    .local v1, "init":Z
    :try_start_2
    iget-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v15, :cond_11

    .line 2533
    const/4 v0, 0x2

    new-array v0, v0, [Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 2534
    .local v0, "rs":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    and-int/lit8 v2, v13, 0x1

    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    invoke-direct {v3, v10, v11}, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    aput-object v3, v0, v2

    .line 2535
    iput-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2536
    const/4 v1, 0x1

    .line 2539
    .end local v0    # "rs":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_11
    iput v7, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2540
    nop

    .line 2541
    if-eqz v1, :cond_12

    .line 2542
    goto :goto_6

    .line 2543
    .end local v1    # "init":Z
    :cond_12
    goto :goto_7

    .line 2539
    .restart local v1    # "init":Z
    :catchall_2
    move-exception v0

    iput v7, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2540
    throw v0

    .line 2544
    .end local v1    # "init":Z
    :cond_13
    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    iget-wide v5, v9, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    move-wide/from16 v16, v5

    .local v16, "v":J
    add-long v7, v16, v10

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2545
    nop

    .line 2547
    .end local v15    # "as":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v16    # "v":J
    :goto_6
    return-void

    .line 2546
    :cond_14
    :goto_7
    goto/16 :goto_1
.end method

.method private final initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2168
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1

    array-length v0, v1

    if-nez v0, :cond_6

    .line 2169
    :cond_1
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v8, v0

    .local v8, "sc":I
    if-gez v0, :cond_2

    .line 2170
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 2171
    :cond_2
    sget-object v2, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v7, -0x1

    move-object v3, p0

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2173
    :try_start_0
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    if-eqz v0, :cond_3

    array-length v0, v1

    if-nez v0, :cond_5

    .line 2174
    :cond_3
    if-lez v8, :cond_4

    move v0, v8

    goto :goto_1

    :cond_4
    const/16 v0, 0x10

    .line 2176
    .local v0, "n":I
    :goto_1
    new-array v2, v0, [Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2177
    .local v2, "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v1, v2

    iput-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2178
    ushr-int/lit8 v3, v0, 0x2

    sub-int v8, v0, v3

    .line 2181
    .end local v0    # "n":I
    .end local v2    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    iput v8, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2182
    nop

    .line 2183
    nop

    .line 2186
    .end local v8    # "sc":I
    :cond_6
    return-object v1

    .line 2181
    .restart local v8    # "sc":I
    :catchall_0
    move-exception v0

    iput v8, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2182
    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 34
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 1427
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v0, p0

    const/4 v1, -0x1

    iput v1, v0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1428
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1429
    const-wide/16 v1, 0x0

    .line 1430
    .local v1, "size":J
    const/4 v3, 0x0

    .line 1433
    .local v3, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1435
    .local v4, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 1436
    .local v5, "v":Ljava/lang/Object;, "TV;"
    const-wide/16 v6, 0x1

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 1437
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v9

    invoke-direct {v8, v9, v4, v5, v3}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v3, v8

    .line 1438
    add-long/2addr v1, v6

    .line 1442
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 1443
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v8, v1, v4

    if-nez v8, :cond_1

    .line 1444
    const/4 v4, 0x0

    iput v4, v0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move-wide/from16 v18, v1

    goto/16 :goto_a

    .line 1447
    :cond_1
    const-wide/32 v4, 0x20000000

    cmp-long v8, v1, v4

    if-ltz v8, :cond_2

    .line 1448
    const/high16 v4, 0x40000000    # 2.0f

    .local v4, "n":I
    goto :goto_1

    .line 1450
    .end local v4    # "n":I
    :cond_2
    long-to-int v4, v1

    .line 1451
    .local v4, "sz":I
    ushr-int/lit8 v5, v4, 0x1

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lj$/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v5

    move v4, v5

    .line 1454
    .local v4, "n":I
    :goto_1
    new-array v5, v4, [Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1455
    .local v5, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    add-int/lit8 v8, v4, -0x1

    .line 1456
    .local v8, "mask":I
    const-wide/16 v9, 0x0

    .line 1457
    .local v9, "added":J
    :goto_2
    if-eqz v3, :cond_d

    .line 1459
    iget-object v11, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1460
    .local v11, "next":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget v12, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v12, "h":I
    and-int v13, v12, v8

    .line 1461
    .local v13, "j":I
    invoke-static {v5, v13}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v14

    move-object v15, v14

    .local v15, "first":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v14, :cond_3

    .line 1462
    const/4 v14, 0x1

    move-wide/from16 v18, v1

    move/from16 v29, v8

    .local v14, "insertAtFront":Z
    goto/16 :goto_8

    .line 1464
    .end local v14    # "insertAtFront":Z
    :cond_3
    iget-object v14, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1465
    .local v14, "k":Ljava/lang/Object;, "TK;"
    iget v6, v15, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v6, :cond_5

    .line 1466
    move-object v6, v15

    check-cast v6, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1467
    .local v6, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v7, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v6, v12, v14, v7}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v7

    if-nez v7, :cond_4

    .line 1468
    const-wide/16 v16, 0x1

    add-long v9, v9, v16

    .line 1469
    :cond_4
    const/4 v6, 0x0

    .line 1470
    .local v6, "insertAtFront":Z
    move-wide/from16 v18, v1

    move v14, v6

    move/from16 v29, v8

    goto/16 :goto_8

    .line 1472
    .end local v6    # "insertAtFront":Z
    :cond_5
    const/4 v6, 0x0

    .line 1473
    .local v6, "binCount":I
    const/4 v7, 0x1

    .line 1475
    .local v7, "insertAtFront":Z
    move-object/from16 v18, v15

    move-wide/from16 v32, v1

    move-object/from16 v1, v18

    move-wide/from16 v18, v32

    .local v1, "q":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v18, "size":J
    :goto_3
    if-eqz v1, :cond_8

    .line 1476
    iget v2, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v2, v12, :cond_7

    iget-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v20, v2

    .local v20, "qk":Ljava/lang/Object;, "TK;"
    if-eq v2, v14, :cond_6

    move-object/from16 v2, v20

    .end local v20    # "qk":Ljava/lang/Object;, "TK;"
    .local v2, "qk":Ljava/lang/Object;, "TK;"
    if-eqz v2, :cond_7

    .line 1478
    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    goto :goto_4

    .line 1476
    .end local v2    # "qk":Ljava/lang/Object;, "TK;"
    .restart local v20    # "qk":Ljava/lang/Object;, "TK;"
    :cond_6
    move-object/from16 v2, v20

    .line 1479
    .end local v20    # "qk":Ljava/lang/Object;, "TK;"
    .restart local v2    # "qk":Ljava/lang/Object;, "TK;"
    :goto_4
    const/4 v7, 0x0

    .line 1480
    goto :goto_5

    .line 1482
    .end local v2    # "qk":Ljava/lang/Object;, "TK;"
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 1475
    iget-object v1, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_3

    .line 1484
    :cond_8
    :goto_5
    if-eqz v7, :cond_b

    const/16 v2, 0x8

    if-lt v6, v2, :cond_b

    .line 1485
    const/4 v2, 0x0

    .line 1486
    .end local v7    # "insertAtFront":Z
    .local v2, "insertAtFront":Z
    const-wide/16 v16, 0x1

    add-long v9, v9, v16

    .line 1487
    iput-object v15, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1488
    const/4 v7, 0x0

    .local v7, "hd":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v20, 0x0

    .line 1489
    .local v20, "tl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v1, v3

    move-object/from16 v32, v20

    move/from16 v20, v2

    move-object/from16 v2, v32

    .local v2, "tl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v20, "insertAtFront":Z
    :goto_6
    if-eqz v1, :cond_a

    .line 1490
    new-instance v27, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move/from16 v28, v6

    .end local v6    # "binCount":I
    .local v28, "binCount":I
    iget v6, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v29, v8

    .end local v8    # "mask":I
    .local v29, "mask":I
    iget-object v8, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-wide/from16 v30, v9

    .end local v9    # "added":J
    .local v30, "added":J
    iget-object v9, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v27

    move/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    invoke-direct/range {v21 .. v26}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v6, v27

    .line 1492
    .local v6, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v2, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_9

    .line 1493
    move-object v7, v6

    goto :goto_7

    .line 1495
    :cond_9
    iput-object v6, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1496
    :goto_7
    move-object v2, v6

    .line 1489
    .end local v6    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move/from16 v6, v28

    move/from16 v8, v29

    move-wide/from16 v9, v30

    goto :goto_6

    .line 1498
    .end local v28    # "binCount":I
    .end local v29    # "mask":I
    .end local v30    # "added":J
    .local v6, "binCount":I
    .restart local v8    # "mask":I
    .restart local v9    # "added":J
    :cond_a
    move/from16 v28, v6

    move/from16 v29, v8

    move-wide/from16 v30, v9

    .end local v6    # "binCount":I
    .end local v8    # "mask":I
    .end local v9    # "added":J
    .restart local v28    # "binCount":I
    .restart local v29    # "mask":I
    .restart local v30    # "added":J
    new-instance v6, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v6, v7}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    invoke-static {v5, v13, v6}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    move/from16 v14, v20

    goto :goto_8

    .line 1484
    .end local v2    # "tl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v20    # "insertAtFront":Z
    .end local v28    # "binCount":I
    .end local v29    # "mask":I
    .end local v30    # "added":J
    .restart local v6    # "binCount":I
    .local v7, "insertAtFront":Z
    .restart local v8    # "mask":I
    .restart local v9    # "added":J
    :cond_b
    move/from16 v28, v6

    move/from16 v29, v8

    .line 1502
    .end local v1    # "q":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "binCount":I
    .end local v8    # "mask":I
    .end local v14    # "k":Ljava/lang/Object;, "TK;"
    .restart local v29    # "mask":I
    move v14, v7

    .end local v7    # "insertAtFront":Z
    .local v14, "insertAtFront":Z
    :goto_8
    if-eqz v14, :cond_c

    .line 1503
    const-wide/16 v1, 0x1

    add-long/2addr v9, v1

    .line 1504
    iput-object v15, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1505
    invoke-static {v5, v13, v3}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_9

    .line 1502
    :cond_c
    const-wide/16 v1, 0x1

    .line 1507
    :goto_9
    move-object v3, v11

    .line 1508
    .end local v11    # "next":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v12    # "h":I
    .end local v13    # "j":I
    .end local v14    # "insertAtFront":Z
    .end local v15    # "first":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-wide v6, v1

    move-wide/from16 v1, v18

    move/from16 v8, v29

    goto/16 :goto_2

    .line 1509
    .end local v18    # "size":J
    .end local v29    # "mask":I
    .local v1, "size":J
    .restart local v8    # "mask":I
    :cond_d
    move-wide/from16 v18, v1

    move/from16 v29, v8

    .end local v1    # "size":J
    .end local v8    # "mask":I
    .restart local v18    # "size":J
    .restart local v29    # "mask":I
    iput-object v5, v0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1510
    ushr-int/lit8 v1, v4, 0x2

    sub-int v1, v4, v1

    iput v1, v0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1511
    iput-wide v9, v0, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    .line 1513
    .end local v4    # "n":I
    .end local v5    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "added":J
    .end local v29    # "mask":I
    :goto_a
    return-void
.end method

.method static final resizeStamp(I)I
    .locals 3
    .param p0, "n"    # I

    .line 2160
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    sget v1, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_BITS:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    return v0
.end method

.method static final setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 752
    .local p0, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "v":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget v3, Lj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, v3

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->ABASE:J

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 753
    return-void
.end method

.method static final spread(I)I
    .locals 2
    .param p0, "h"    # I

    .line 673
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method static final tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I)",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 743
    .local p0, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget v3, Lj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, v3

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->ABASE:J

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method

.method private static final tableSizeFor(I)I
    .locals 2
    .param p0, "c"    # I

    .line 681
    add-int/lit8 v0, p0, -0x1

    .line 682
    .local v0, "n":I
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 683
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 684
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 685
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 686
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 687
    if-gez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    :goto_0
    return v1
.end method

.method private final transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2311
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    array-length v9, v8

    .line 2312
    .local v9, "n":I
    sget v0, Lj$/util/concurrent/ConcurrentHashMap;->NCPU:I

    const/4 v10, 0x1

    if-le v0, v10, :cond_0

    ushr-int/lit8 v0, v9, 0x3

    sget v1, Lj$/util/concurrent/ConcurrentHashMap;->NCPU:I

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    move v1, v0

    .local v1, "stride":I
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 2313
    const/16 v1, 0x10

    move v11, v1

    goto :goto_1

    .line 2312
    :cond_1
    move v11, v1

    .line 2314
    .end local v1    # "stride":I
    .local v11, "stride":I
    :goto_1
    if-nez p2, :cond_2

    .line 2317
    shl-int/lit8 v0, v9, 0x1

    :try_start_0
    new-array v0, v0, [Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2318
    .local v0, "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    nop

    .line 2322
    .end local p2    # "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    nop

    .line 2323
    iput-object v0, v7, Lj$/util/concurrent/ConcurrentHashMap;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2324
    iput v9, v7, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    move-object v12, v0

    goto :goto_2

    .line 2319
    .end local v0    # "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local p2    # "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2320
    .local v0, "ex":Ljava/lang/Throwable;
    const v1, 0x7fffffff

    iput v1, v7, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2321
    return-void

    .line 2314
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    move-object/from16 v12, p2

    .line 2326
    .end local p2    # "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v12, "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_2
    array-length v13, v12

    .line 2327
    .local v13, "nextn":I
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    invoke-direct {v0, v12}, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v14, v0

    .line 2328
    .local v14, "fwd":Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    const/4 v0, 0x1

    .line 2329
    .local v0, "advance":Z
    const/4 v1, 0x0

    .line 2330
    .local v1, "finishing":Z
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    move v15, v0

    move/from16 v16, v1

    move v6, v2

    move v5, v3

    .line 2332
    .end local v0    # "advance":Z
    .end local v1    # "finishing":Z
    .end local v2    # "i":I
    .local v5, "bound":I
    .local v6, "i":I
    .local v15, "advance":Z
    .local v16, "finishing":Z
    :goto_3
    if-eqz v15, :cond_8

    .line 2334
    add-int/lit8 v0, v6, -0x1

    .end local v6    # "i":I
    .local v0, "i":I
    if-ge v0, v5, :cond_7

    if-eqz v16, :cond_3

    move/from16 v19, v5

    goto :goto_5

    .line 2336
    :cond_3
    iget v1, v7, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    move v6, v1

    .local v6, "nextIndex":I
    if-gtz v1, :cond_4

    .line 2337
    const/4 v0, -0x1

    .line 2338
    const/4 v1, 0x0

    move v6, v0

    move v15, v1

    .end local v15    # "advance":Z
    .local v1, "advance":Z
    goto :goto_6

    .line 2340
    .end local v1    # "advance":Z
    .restart local v15    # "advance":Z
    :cond_4
    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    .line 2342
    if-le v6, v11, :cond_5

    .line 2343
    sub-int v2, v6, v11

    move/from16 v17, v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    const/16 v17, 0x0

    :goto_4
    move/from16 v18, v17

    .line 2341
    .local v18, "nextBound":I
    move-object/from16 v2, p0

    move/from16 v19, v5

    .end local v5    # "bound":I
    .local v19, "bound":I
    move v5, v6

    move/from16 v20, v6

    .end local v6    # "nextIndex":I
    .local v20, "nextIndex":I
    move/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2344
    move/from16 v1, v18

    .line 2345
    .end local v19    # "bound":I
    .local v1, "bound":I
    add-int/lit8 v6, v20, -0x1

    .line 2346
    .end local v0    # "i":I
    .local v6, "i":I
    const/4 v0, 0x0

    move v15, v0

    move v5, v1

    .end local v15    # "advance":Z
    .local v0, "advance":Z
    goto :goto_6

    .line 2341
    .end local v1    # "bound":I
    .end local v6    # "i":I
    .local v0, "i":I
    .restart local v15    # "advance":Z
    .restart local v19    # "bound":I
    :cond_6
    move v6, v0

    move/from16 v5, v19

    goto :goto_6

    .line 2334
    .end local v18    # "nextBound":I
    .end local v19    # "bound":I
    .end local v20    # "nextIndex":I
    .restart local v5    # "bound":I
    :cond_7
    move/from16 v19, v5

    .line 2335
    .end local v5    # "bound":I
    .restart local v19    # "bound":I
    :goto_5
    const/4 v1, 0x0

    move v6, v0

    move v15, v1

    move/from16 v5, v19

    .line 2348
    .end local v0    # "i":I
    .end local v19    # "bound":I
    .restart local v5    # "bound":I
    .restart local v6    # "i":I
    :goto_6
    goto :goto_3

    .line 2349
    :cond_8
    move/from16 v19, v5

    .end local v5    # "bound":I
    .restart local v19    # "bound":I
    const/4 v0, 0x0

    if-ltz v6, :cond_1c

    if-ge v6, v9, :cond_1c

    add-int v1, v6, v9

    if-lt v1, v13, :cond_9

    move/from16 v21, v11

    move/from16 v20, v13

    move/from16 v29, v15

    goto/16 :goto_14

    .line 2364
    :cond_9
    invoke-static {v8, v6}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_a

    .line 2365
    invoke-static {v8, v6, v0, v14}, Lj$/util/concurrent/ConcurrentHashMap;->casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v0

    move v15, v0

    move/from16 v21, v11

    move/from16 v20, v13

    const/4 v1, 0x1

    .end local v15    # "advance":Z
    .local v0, "advance":Z
    goto/16 :goto_16

    .line 2366
    .end local v0    # "advance":Z
    .restart local v15    # "advance":Z
    :cond_a
    iget v0, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v1, v0

    .local v1, "fh":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_b

    .line 2367
    const/4 v0, 0x1

    move v15, v0

    move/from16 v21, v11

    move/from16 v20, v13

    const/4 v1, 0x1

    .end local v15    # "advance":Z
    .restart local v0    # "advance":Z
    goto/16 :goto_16

    .line 2369
    .end local v0    # "advance":Z
    .restart local v15    # "advance":Z
    :cond_b
    monitor-enter v2

    .line 2370
    :try_start_1
    invoke-static {v8, v6}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    if-ne v0, v2, :cond_1b

    .line 2372
    if-ltz v1, :cond_11

    .line 2373
    and-int v0, v1, v9

    .line 2374
    .local v0, "runBit":I
    move-object v3, v2

    .line 2375
    .local v3, "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_2
    iget-object v4, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .local v4, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_7
    if-eqz v4, :cond_d

    .line 2376
    :try_start_3
    iget v5, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    and-int/2addr v5, v9

    .line 2377
    .local v5, "b":I
    if-eq v5, v0, :cond_c

    .line 2378
    move v0, v5

    .line 2379
    move-object v3, v4

    .line 2375
    .end local v5    # "b":I
    :cond_c
    iget-object v5, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v5

    goto :goto_7

    .line 2438
    .end local v0    # "runBit":I
    .end local v3    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_1
    move-exception v0

    move/from16 p2, v1

    move/from16 v21, v11

    move/from16 v20, v13

    goto/16 :goto_13

    .line 2382
    .restart local v0    # "runBit":I
    .restart local v3    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_d
    if-nez v0, :cond_e

    .line 2383
    move-object v4, v3

    .line 2384
    .local v4, "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v5, 0x0

    .local v5, "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_8

    .line 2387
    .end local v4    # "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_e
    move-object v5, v3

    .line 2388
    .restart local v5    # "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v4, 0x0

    .line 2390
    .restart local v4    # "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_8
    move-object/from16 v17, v2

    move-object/from16 v10, v17

    .local v10, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_9
    if-eq v10, v3, :cond_10

    .line 2391
    move/from16 v18, v0

    .end local v0    # "runBit":I
    .local v18, "runBit":I
    :try_start_4
    iget v0, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move/from16 p2, v1

    .end local v1    # "fh":I
    .local v0, "ph":I
    .local p2, "fh":I
    :try_start_5
    iget-object v1, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v20, v3

    .end local v3    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v1, "pk":Ljava/lang/Object;, "TK;"
    .local v20, "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v3, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2392
    .local v3, "pv":Ljava/lang/Object;, "TV;"
    and-int v21, v0, v9

    if-nez v21, :cond_f

    .line 2393
    move/from16 v21, v11

    .end local v11    # "stride":I
    .local v21, "stride":I
    :try_start_6
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v11, v0, v1, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v4, v11

    goto :goto_a

    .line 2395
    .end local v21    # "stride":I
    .restart local v11    # "stride":I
    :cond_f
    move/from16 v21, v11

    .end local v11    # "stride":I
    .restart local v21    # "stride":I
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v11, v0, v1, v3, v5}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v5, v11

    .line 2390
    .end local v0    # "ph":I
    .end local v1    # "pk":Ljava/lang/Object;, "TK;"
    .end local v3    # "pv":Ljava/lang/Object;, "TV;"
    :goto_a
    iget-object v0, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v10, v0

    move/from16 v1, p2

    move/from16 v0, v18

    move-object/from16 v3, v20

    move/from16 v11, v21

    goto :goto_9

    .line 2438
    .end local v4    # "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v18    # "runBit":I
    .end local v20    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v21    # "stride":I
    .restart local v11    # "stride":I
    :catchall_2
    move-exception v0

    move/from16 v21, v11

    move/from16 v20, v13

    .end local v11    # "stride":I
    .restart local v21    # "stride":I
    goto/16 :goto_13

    .line 2390
    .end local v21    # "stride":I
    .end local p2    # "fh":I
    .local v0, "runBit":I
    .local v1, "fh":I
    .local v3, "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v11    # "stride":I
    :cond_10
    move/from16 v18, v0

    move/from16 p2, v1

    move-object/from16 v20, v3

    move/from16 v21, v11

    .line 2397
    .end local v0    # "runBit":I
    .end local v1    # "fh":I
    .end local v3    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "stride":I
    .restart local v18    # "runBit":I
    .restart local v20    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v21    # "stride":I
    .restart local p2    # "fh":I
    invoke-static {v12, v6, v4}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2398
    add-int v0, v6, v9

    invoke-static {v12, v0, v5}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2399
    invoke-static {v8, v6, v14}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2400
    const/4 v15, 0x1

    .line 2401
    .end local v18    # "runBit":I
    .end local v20    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move/from16 v20, v13

    goto/16 :goto_12

    .line 2438
    .end local v4    # "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_3
    move-exception v0

    move/from16 v20, v13

    goto/16 :goto_13

    .end local v21    # "stride":I
    .end local p2    # "fh":I
    .restart local v1    # "fh":I
    .restart local v11    # "stride":I
    :catchall_4
    move-exception v0

    move/from16 p2, v1

    move/from16 v21, v11

    move/from16 v20, v13

    .end local v1    # "fh":I
    .end local v11    # "stride":I
    .restart local v21    # "stride":I
    .restart local p2    # "fh":I
    goto/16 :goto_13

    .line 2402
    .end local v21    # "stride":I
    .end local p2    # "fh":I
    .restart local v1    # "fh":I
    .restart local v11    # "stride":I
    :cond_11
    move/from16 p2, v1

    move/from16 v21, v11

    .end local v1    # "fh":I
    .end local v11    # "stride":I
    .restart local v21    # "stride":I
    .restart local p2    # "fh":I
    :try_start_7
    instance-of v0, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_1a

    .line 2403
    move-object v0, v2

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 2404
    .local v0, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    .line 2405
    .local v3, "loTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "hi":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    .line 2406
    .local v5, "hiTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v10, 0x0

    .local v10, "lc":I
    const/4 v11, 0x0

    .line 2407
    .local v11, "hc":I
    move-object/from16 v18, v1

    .end local v1    # "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v18, "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-object/from16 v30, v18

    move-object/from16 v18, v0

    move v0, v11

    move v11, v10

    move-object v10, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, v30

    .local v0, "hc":I
    .local v1, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v3, "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v4, "loTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v5, "hi":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v10, "hiTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v11, "lc":I
    .local v18, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :goto_b
    if-eqz v1, :cond_15

    .line 2408
    move/from16 v20, v13

    .end local v13    # "nextn":I
    .local v20, "nextn":I
    :try_start_8
    iget v13, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .line 2409
    .local v13, "h":I
    new-instance v28, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move/from16 v29, v15

    .end local v15    # "advance":Z
    .local v29, "advance":Z
    :try_start_9
    iget-object v15, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v7, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v28

    move/from16 v23, v13

    move-object/from16 v24, v15

    move-object/from16 v25, v7

    invoke-direct/range {v22 .. v27}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v7, v28

    .line 2411
    .local v7, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    and-int v15, v13, v9

    if-nez v15, :cond_13

    .line 2412
    iput-object v4, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v4, :cond_12

    .line 2413
    move-object v3, v7

    goto :goto_c

    .line 2415
    :cond_12
    iput-object v7, v4, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2416
    :goto_c
    move-object v4, v7

    .line 2417
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 2420
    :cond_13
    iput-object v10, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v10, :cond_14

    .line 2421
    move-object v5, v7

    goto :goto_d

    .line 2423
    :cond_14
    iput-object v7, v10, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2424
    :goto_d
    move-object v10, v7

    .line 2425
    add-int/lit8 v0, v0, 0x1

    .line 2407
    .end local v7    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v13    # "h":I
    :goto_e
    iget-object v7, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v7

    move-object/from16 v7, p0

    move/from16 v13, v20

    move/from16 v15, v29

    goto :goto_b

    .line 2438
    .end local v0    # "hc":I
    .end local v1    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "loTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "hi":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "hiTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v11    # "lc":I
    .end local v18    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v29    # "advance":Z
    .restart local v15    # "advance":Z
    :catchall_5
    move-exception v0

    move/from16 v29, v15

    .end local v15    # "advance":Z
    .restart local v29    # "advance":Z
    goto/16 :goto_13

    .line 2407
    .end local v20    # "nextn":I
    .end local v29    # "advance":Z
    .restart local v0    # "hc":I
    .restart local v1    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v3    # "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v4    # "loTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v5    # "hi":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v10    # "hiTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v11    # "lc":I
    .local v13, "nextn":I
    .restart local v15    # "advance":Z
    .restart local v18    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :cond_15
    move/from16 v20, v13

    move/from16 v29, v15

    .line 2428
    .end local v1    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "nextn":I
    .end local v15    # "advance":Z
    .restart local v20    # "nextn":I
    .restart local v29    # "advance":Z
    const/4 v1, 0x6

    if-gt v11, v1, :cond_16

    invoke-static {v3}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    goto :goto_f

    .line 2438
    .end local v0    # "hc":I
    .end local v3    # "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "loTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "hi":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "hiTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v11    # "lc":I
    .end local v18    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :catchall_6
    move-exception v0

    move/from16 v15, v29

    goto :goto_13

    .line 2429
    .restart local v0    # "hc":I
    .restart local v3    # "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v4    # "loTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v5    # "hi":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v10    # "hiTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v11    # "lc":I
    .restart local v18    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :cond_16
    if-eqz v0, :cond_17

    new-instance v7, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v7, v3}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    goto :goto_f

    :cond_17
    move-object/from16 v7, v18

    :goto_f
    nop

    .line 2430
    .local v7, "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-gt v0, v1, :cond_18

    invoke-static {v5}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    goto :goto_10

    .line 2431
    :cond_18
    if-eqz v11, :cond_19

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v1, v5}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    goto :goto_10

    :cond_19
    move-object/from16 v1, v18

    :goto_10
    nop

    .line 2432
    .local v1, "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-static {v12, v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2433
    add-int v13, v6, v9

    invoke-static {v12, v13, v1}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2434
    invoke-static {v8, v6, v14}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 2435
    const/4 v15, 0x1

    .end local v29    # "advance":Z
    .restart local v15    # "advance":Z
    goto :goto_12

    .line 2402
    .end local v0    # "hc":I
    .end local v1    # "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "loTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "hi":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "hiTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v11    # "lc":I
    .end local v18    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v20    # "nextn":I
    .restart local v13    # "nextn":I
    :cond_1a
    move/from16 v20, v13

    move/from16 v29, v15

    .end local v13    # "nextn":I
    .end local v15    # "advance":Z
    .restart local v20    # "nextn":I
    .restart local v29    # "advance":Z
    goto :goto_11

    .line 2438
    .end local v20    # "nextn":I
    .end local v29    # "advance":Z
    .restart local v13    # "nextn":I
    .restart local v15    # "advance":Z
    :catchall_7
    move-exception v0

    move/from16 v20, v13

    move/from16 v29, v15

    .end local v13    # "nextn":I
    .end local v15    # "advance":Z
    .restart local v20    # "nextn":I
    .restart local v29    # "advance":Z
    goto :goto_13

    .line 2370
    .end local v20    # "nextn":I
    .end local v21    # "stride":I
    .end local v29    # "advance":Z
    .end local p2    # "fh":I
    .local v1, "fh":I
    .local v11, "stride":I
    .restart local v13    # "nextn":I
    .restart local v15    # "advance":Z
    :cond_1b
    move/from16 p2, v1

    move/from16 v21, v11

    move/from16 v20, v13

    move/from16 v29, v15

    .line 2438
    .end local v1    # "fh":I
    .end local v11    # "stride":I
    .end local v13    # "nextn":I
    .end local v15    # "advance":Z
    .restart local v20    # "nextn":I
    .restart local v21    # "stride":I
    .restart local v29    # "advance":Z
    .restart local p2    # "fh":I
    :goto_11
    move/from16 v15, v29

    .end local v29    # "advance":Z
    .restart local v15    # "advance":Z
    :goto_12
    :try_start_a
    monitor-exit v2

    move-object/from16 v7, p0

    const/4 v1, 0x1

    goto :goto_16

    .end local v20    # "nextn":I
    .end local v21    # "stride":I
    .end local p2    # "fh":I
    .restart local v1    # "fh":I
    .restart local v11    # "stride":I
    .restart local v13    # "nextn":I
    :catchall_8
    move-exception v0

    move/from16 p2, v1

    move/from16 v21, v11

    move/from16 v20, v13

    move/from16 v29, v15

    .end local v1    # "fh":I
    .end local v11    # "stride":I
    .end local v13    # "nextn":I
    .restart local v20    # "nextn":I
    .restart local v21    # "stride":I
    .restart local p2    # "fh":I
    :goto_13
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_13

    .line 2349
    .end local v2    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v20    # "nextn":I
    .end local v21    # "stride":I
    .end local p2    # "fh":I
    .restart local v11    # "stride":I
    .restart local v13    # "nextn":I
    :cond_1c
    move/from16 v21, v11

    move/from16 v20, v13

    move/from16 v29, v15

    .line 2351
    .end local v11    # "stride":I
    .end local v13    # "nextn":I
    .end local v15    # "advance":Z
    .restart local v20    # "nextn":I
    .restart local v21    # "stride":I
    .restart local v29    # "advance":Z
    :goto_14
    if-eqz v16, :cond_1d

    .line 2352
    move-object/from16 v7, p0

    iput-object v0, v7, Lj$/util/concurrent/ConcurrentHashMap;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2353
    iput-object v12, v7, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2354
    shl-int/lit8 v0, v9, 0x1

    ushr-int/lit8 v1, v9, 0x1

    sub-int/2addr v0, v1

    iput v0, v7, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2355
    return-void

    .line 2357
    :cond_1d
    move-object/from16 v7, p0

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    iget v5, v7, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v0, v5

    .local v0, "sc":I
    add-int/lit8 v10, v0, -0x1

    move-object/from16 v2, p0

    move v11, v6

    .end local v6    # "i":I
    .local v11, "i":I
    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2358
    add-int/lit8 v1, v0, -0x2

    invoke-static {v9}, Lj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v2

    sget v3, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    shl-int/2addr v2, v3

    if-eq v1, v2, :cond_1e

    .line 2359
    return-void

    .line 2360
    :cond_1e
    const/4 v1, 0x1

    move v15, v1

    .end local v29    # "advance":Z
    .restart local v15    # "advance":Z
    move/from16 v16, v1

    .line 2361
    move v6, v9

    .end local v11    # "i":I
    .restart local v6    # "i":I
    goto :goto_15

    .line 2357
    .end local v6    # "i":I
    .end local v15    # "advance":Z
    .restart local v11    # "i":I
    .restart local v29    # "advance":Z
    :cond_1f
    const/4 v1, 0x1

    move v6, v11

    move/from16 v15, v29

    .line 2363
    .end local v0    # "sc":I
    .end local v11    # "i":I
    .end local v29    # "advance":Z
    .restart local v6    # "i":I
    .restart local v15    # "advance":Z
    :goto_15
    nop

    .line 2440
    :goto_16
    move/from16 v5, v19

    move/from16 v13, v20

    move/from16 v11, v21

    const/4 v10, 0x1

    goto/16 :goto_3
.end method

.method private final treeifyBin([Lj$/util/concurrent/ConcurrentHashMap$Node;I)V
    .locals 12
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 2557
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_4

    .line 2558
    array-length v0, p1

    move v1, v0

    .local v1, "n":I
    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    .line 2559
    shl-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    goto :goto_2

    .line 2560
    :cond_0
    invoke-static {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v2, v0

    .local v2, "b":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_4

    iget v0, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ltz v0, :cond_4

    .line 2561
    monitor-enter v2

    .line 2562
    :try_start_0
    invoke-static {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-ne v0, v2, :cond_3

    .line 2563
    const/4 v0, 0x0

    .local v0, "hd":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    .line 2564
    .local v3, "tl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v4, v2

    .local v4, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_2

    .line 2565
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget v6, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v7, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v8, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object v5, v11

    .line 2568
    .local v5, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v3, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v3, :cond_1

    .line 2569
    move-object v0, v5

    goto :goto_1

    .line 2571
    :cond_1
    iput-object v5, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2572
    :goto_1
    move-object v3, v5

    .line 2564
    .end local v5    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v5, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v4, v5

    goto :goto_0

    .line 2574
    .end local v4    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    new-instance v4, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v4, v0}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    invoke-static {p1, p2, v4}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2576
    .end local v0    # "hd":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "tl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_3
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2579
    .end local v1    # "n":I
    .end local v2    # "b":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    :goto_2
    return-void
.end method

.method private final tryPresize(I)V
    .locals 13
    .param p1, "size"    # I

    .line 2266
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/high16 v0, 0x20000000

    const/high16 v1, 0x40000000    # 2.0f

    if-lt p1, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 2267
    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v0

    :goto_0
    nop

    .line 2269
    .local v0, "c":I
    :goto_1
    iget v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v9, v2

    .local v9, "sc":I
    if-ltz v2, :cond_a

    .line 2270
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2271
    .local v2, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_6

    array-length v3, v2

    move v10, v3

    .local v10, "n":I
    if-nez v3, :cond_1

    goto :goto_2

    .line 2286
    :cond_1
    if-le v0, v9, :cond_a

    if-lt v10, v1, :cond_2

    .line 2287
    goto/16 :goto_5

    .line 2288
    :cond_2
    iget-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne v2, v3, :cond_9

    .line 2289
    invoke-static {v10}, Lj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v11

    .line 2290
    .local v11, "rs":I
    if-gez v9, :cond_5

    .line 2292
    sget v3, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    ushr-int v3, v9, v3

    if-ne v3, v11, :cond_a

    add-int/lit8 v3, v11, 0x1

    if-eq v9, v3, :cond_a

    sget v3, Lj$/util/concurrent/ConcurrentHashMap;->MAX_RESIZERS:I

    add-int/2addr v3, v11

    if-eq v9, v3, :cond_a

    iget-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v12, v3

    .local v12, "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_a

    iget v3, p0, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v3, :cond_3

    .line 2295
    goto :goto_5

    .line 2296
    :cond_3
    sget-object v3, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v5, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v8, v9, 0x1

    move-object v4, p0

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2297
    invoke-direct {p0, v2, v12}, Lj$/util/concurrent/ConcurrentHashMap;->transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2298
    .end local v12    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    goto :goto_4

    .line 2299
    :cond_5
    sget-object v3, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v5, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    sget v4, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    shl-int v4, v11, v4

    add-int/lit8 v8, v4, 0x2

    move-object v4, p0

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2301
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_4

    .line 2272
    .end local v10    # "n":I
    .end local v11    # "rs":I
    :cond_6
    :goto_2
    if-le v9, v0, :cond_7

    move v3, v9

    goto :goto_3

    :cond_7
    move v3, v0

    :goto_3
    move v10, v3

    .line 2273
    .restart local v10    # "n":I
    sget-object v3, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v5, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v8, -0x1

    move-object v4, p0

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2275
    :try_start_0
    iget-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne v3, v2, :cond_8

    .line 2277
    new-array v3, v10, [Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2278
    .local v3, "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iput-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2279
    ushr-int/lit8 v4, v10, 0x2

    sub-int v9, v10, v4

    .line 2282
    .end local v3    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_8
    iput v9, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2283
    goto :goto_4

    .line 2282
    :catchall_0
    move-exception v1

    iput v9, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2283
    throw v1

    .line 2303
    .end local v2    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "n":I
    :cond_9
    :goto_4
    goto/16 :goto_1

    .line 2304
    :cond_a
    :goto_5
    return-void
.end method

.method static untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2585
    .local p0, "b":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "hd":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 2586
    .local v1, "tl":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v2, p0

    .local v2, "q":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 2587
    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget v4, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v5, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v6, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2588
    .local v3, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_0

    .line 2589
    move-object v0, v3

    goto :goto_1

    .line 2591
    :cond_0
    iput-object v3, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2592
    :goto_1
    move-object v1, v3

    .line 2586
    .end local v3    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v2, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_0

    .line 2594
    .end local v2    # "q":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 10
    .param p1, "s"    # Ljava/io/ObjectOutputStream;

    .line 1380
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1381
    .local v0, "sshift":I
    const/4 v1, 0x1

    .line 1382
    .local v1, "ssize":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 1383
    add-int/lit8 v0, v0, 0x1

    .line 1384
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1386
    :cond_0
    rsub-int/lit8 v3, v0, 0x20

    .line 1387
    .local v3, "segmentShift":I
    add-int/lit8 v4, v1, -0x1

    .line 1389
    .local v4, "segmentMask":I
    new-array v2, v2, [Lj$/util/concurrent/ConcurrentHashMap$Segment;

    .line 1391
    .local v2, "segments":[Lj$/util/concurrent/ConcurrentHashMap$Segment;, "[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 1392
    new-instance v6, Lj$/util/concurrent/ConcurrentHashMap$Segment;

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-direct {v6, v7}, Lj$/util/concurrent/ConcurrentHashMap$Segment;-><init>(F)V

    aput-object v6, v2, v5

    .line 1391
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1393
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v5

    const-string v6, "segments"

    invoke-virtual {v5, v6, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1394
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v5

    const-string v6, "segmentShift"

    invoke-virtual {v5, v6, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1395
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v5

    const-string v6, "segmentMask"

    invoke-virtual {v5, v6, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1396
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1399
    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v6, v5

    .local v6, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v5, :cond_2

    .line 1400
    new-instance v5, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v7, v6

    const/4 v8, 0x0

    array-length v9, v6

    invoke-direct {v5, v6, v7, v8, v9}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1401
    .local v5, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_2
    invoke-virtual {v5}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    move-object v8, v7

    .local v8, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v7, :cond_2

    .line 1402
    iget-object v7, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1403
    iget-object v7, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_2

    .line 1406
    .end local v5    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v8    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1407
    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1408
    const/4 v2, 0x0

    .line 1409
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 10

    .line 1168
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 1169
    .local v0, "delta":J
    const/4 v2, 0x0

    .line 1170
    .local v2, "i":I
    iget-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1171
    .local v3, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    const/4 v4, -0x1

    if-eqz v3, :cond_6

    array-length v5, v3

    if-ge v2, v5, :cond_6

    .line 1173
    invoke-static {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    .line 1174
    .local v5, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v5, :cond_0

    .line 1175
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1176
    :cond_0
    iget v6, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v7, v6

    .local v7, "fh":I
    if-ne v6, v4, :cond_1

    .line 1177
    invoke-virtual {p0, v3, v5}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    .line 1178
    const/4 v2, 0x0

    goto :goto_4

    .line 1181
    :cond_1
    monitor-enter v5

    .line 1182
    :try_start_0
    invoke-static {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    if-ne v4, v5, :cond_5

    .line 1183
    const/4 v4, 0x0

    if-ltz v7, :cond_2

    move-object v6, v5

    goto :goto_1

    .line 1184
    :cond_2
    instance-of v6, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v6, :cond_3

    .line 1185
    move-object v6, v5

    check-cast v6, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v6, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_1

    :cond_3
    move-object v6, v4

    :goto_1
    nop

    .line 1186
    .local v6, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_2
    if-eqz v6, :cond_4

    .line 1187
    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    .line 1188
    iget-object v8, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, v8

    goto :goto_2

    .line 1190
    :cond_4
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "i":I
    .local v8, "i":I
    :try_start_1
    invoke-static {v3, v2, v4}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v8

    goto :goto_3

    .line 1192
    .end local v6    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_0
    move-exception v4

    move v2, v8

    goto :goto_5

    .end local v8    # "i":I
    .restart local v2    # "i":I
    :cond_5
    :goto_3
    :try_start_2
    monitor-exit v5

    .line 1194
    .end local v5    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "fh":I
    :goto_4
    goto :goto_0

    .line 1192
    .restart local v5    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "fh":I
    :catchall_1
    move-exception v4

    :goto_5
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1195
    .end local v5    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "fh":I
    :cond_6
    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-eqz v7, :cond_7

    .line 1196
    invoke-direct {p0, v0, v1, v4}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1197
    :cond_7
    return-void
.end method

.method public compute(Ljava/lang/Object;Lj$/util/function/BiFunction;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lj$/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1826
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Lj$/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_16

    if-eqz v3, :cond_16

    .line 1828
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v4

    .line 1829
    .local v4, "h":I
    const/4 v0, 0x0

    .line 1830
    .local v0, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 1831
    .local v5, "delta":I
    const/4 v6, 0x0

    .line 1832
    .local v6, "binCount":I
    iget-object v7, v1, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v0

    .line 1834
    .end local v0    # "val":Ljava/lang/Object;, "TV;"
    .local v5, "val":Ljava/lang/Object;, "TV;"
    .local v6, "delta":I
    .local v7, "binCount":I
    .local v8, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v8, :cond_14

    array-length v0, v8

    move v9, v0

    .local v9, "n":I
    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 1836
    :cond_0
    add-int/lit8 v0, v9, -0x1

    and-int/2addr v0, v4

    move v10, v0

    .local v10, "i":I
    invoke-static {v8, v0}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v11, v0

    .local v11, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v12, 0x0

    if-nez v0, :cond_4

    .line 1837
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    move-object v13, v0

    .line 1838
    .local v13, "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    monitor-enter v13

    .line 1839
    :try_start_0
    invoke-static {v8, v10, v12, v13}, Lj$/util/concurrent/ConcurrentHashMap;->casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 1840
    const/4 v7, 0x1

    .line 1841
    const/4 v14, 0x0

    .line 1843
    .local v14, "node":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_1
    invoke-interface {v3, v2, v12}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    if-eqz v0, :cond_1

    .line 1844
    const/4 v6, 0x1

    .line 1845
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v0, v4, v2, v5, v12}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v14, v0

    .line 1848
    :cond_1
    :try_start_2
    invoke-static {v8, v10, v14}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1849
    goto :goto_1

    .line 1848
    :catchall_0
    move-exception v0

    invoke-static {v8, v10, v14}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1849
    nop

    .end local v4    # "h":I
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "delta":I
    .end local v7    # "binCount":I
    .end local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Lj$/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    throw v0

    .line 1851
    .end local v14    # "node":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "h":I
    .restart local v5    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "delta":I
    .restart local v7    # "binCount":I
    .restart local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "n":I
    .restart local v10    # "i":I
    .restart local v11    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "remappingFunction":Lj$/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :cond_2
    :goto_1
    monitor-exit v13

    .line 1852
    if-eqz v7, :cond_3

    .line 1853
    goto/16 :goto_9

    .line 1854
    .end local v13    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    goto/16 :goto_c

    .line 1851
    .restart local v13    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_1
    move-exception v0

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1855
    .end local v13    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    iget v0, v11, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v13, v0

    .local v13, "fh":I
    const/4 v14, -0x1

    if-ne v0, v14, :cond_5

    .line 1856
    invoke-virtual {v1, v8, v11}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v8, v0

    .end local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto/16 :goto_c

    .line 1858
    .end local v0    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    monitor-enter v11

    .line 1859
    :try_start_3
    invoke-static {v8, v10}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v0, v11, :cond_11

    .line 1860
    if-ltz v13, :cond_c

    .line 1861
    const/4 v0, 0x1

    .line 1862
    .end local v7    # "binCount":I
    .local v0, "binCount":I
    move-object v7, v11

    .local v7, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v14, 0x0

    move-object/from16 v17, v14

    move v14, v0

    move-object/from16 v0, v17

    .line 1864
    .local v0, "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v14, "binCount":I
    :goto_2
    :try_start_4
    iget v15, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v15, v4, :cond_9

    iget-object v15, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v16, v15

    .local v16, "ek":Ljava/lang/Object;, "TK;"
    if-eq v15, v2, :cond_6

    move-object/from16 v15, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .local v15, "ek":Ljava/lang/Object;, "TK;"
    if-eqz v15, :cond_9

    .line 1866
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    goto :goto_3

    .line 1864
    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_6
    move-object/from16 v15, v16

    .line 1867
    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v15    # "ek":Ljava/lang/Object;, "TK;"
    :goto_3
    iget-object v12, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v3, v2, v12}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v5, v12

    .line 1868
    if-eqz v5, :cond_7

    .line 1869
    iput-object v5, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_5

    .line 1871
    :cond_7
    const/4 v6, -0x1

    .line 1872
    iget-object v12, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1873
    .local v12, "en":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_8

    .line 1874
    iput-object v12, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_4

    .line 1876
    :cond_8
    invoke-static {v8, v10, v12}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1878
    .end local v12    # "en":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_4
    goto :goto_5

    .line 1880
    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    :cond_9
    move-object v0, v7

    .line 1881
    iget-object v15, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v15

    if-nez v15, :cond_b

    .line 1882
    invoke-interface {v3, v2, v12}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v5, v15

    .line 1883
    if-eqz v5, :cond_a

    .line 1884
    const/4 v6, 0x1

    .line 1885
    new-instance v15, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v15, v4, v2, v5, v12}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object v15, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1862
    .end local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_a
    :goto_5
    move v7, v14

    goto :goto_8

    .restart local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1917
    .end local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_2
    move-exception v0

    move v7, v14

    goto :goto_a

    .line 1892
    .end local v14    # "binCount":I
    .local v7, "binCount":I
    :cond_c
    :try_start_5
    instance-of v0, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_11

    .line 1893
    const/4 v7, 0x1

    .line 1894
    move-object v0, v11

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1896
    .local v0, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v14, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v15, v14

    .local v15, "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v14, :cond_d

    .line 1897
    invoke-virtual {v15, v4, v2, v12}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v14

    .local v14, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_6

    .line 1899
    .end local v14    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_d
    const/4 v14, 0x0

    .line 1900
    .restart local v14    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_6
    if-nez v14, :cond_e

    goto :goto_7

    :cond_e
    iget-object v12, v14, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    .line 1901
    .local v12, "pv":Ljava/lang/Object;, "TV;"
    :goto_7
    invoke-interface {v3, v2, v12}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    .line 1902
    if-eqz v5, :cond_10

    .line 1903
    if-eqz v14, :cond_f

    .line 1904
    iput-object v5, v14, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_8

    .line 1906
    :cond_f
    const/4 v6, 0x1

    .line 1907
    invoke-virtual {v0, v4, v2, v5}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_8

    .line 1910
    :cond_10
    if-eqz v14, :cond_11

    .line 1911
    const/4 v6, -0x1

    .line 1912
    invoke-virtual {v0, v14}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 1913
    iget-object v2, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v2}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    invoke-static {v8, v10, v2}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1917
    .end local v0    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v12    # "pv":Ljava/lang/Object;, "TV;"
    .end local v14    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v15    # "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_11
    :goto_8
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1918
    if-eqz v7, :cond_15

    .line 1919
    const/16 v0, 0x8

    if-lt v7, v0, :cond_12

    .line 1920
    invoke-direct {v1, v8, v10}, Lj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Lj$/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 1925
    .end local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "fh":I
    :cond_12
    :goto_9
    if-eqz v6, :cond_13

    .line 1926
    int-to-long v8, v6

    invoke-direct {v1, v8, v9, v7}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1927
    :cond_13
    return-object v5

    .line 1917
    .restart local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "n":I
    .restart local v10    # "i":I
    .restart local v11    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "fh":I
    :catchall_3
    move-exception v0

    :goto_a
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 1835
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "fh":I
    :cond_14
    :goto_b
    invoke-direct/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap;->initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v8, v0

    .line 1924
    :cond_15
    :goto_c
    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 1827
    .end local v4    # "h":I
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "delta":I
    .end local v7    # "binCount":I
    .end local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public synthetic compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lj$/util/function/BiFunction$VivifiedWrapper;->convert(Ljava/util/function/BiFunction;)Lj$/util/function/BiFunction;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Lj$/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public computeIfAbsent(Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lj$/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1634
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Lj$/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    .line 1636
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 1637
    .local v0, "h":I
    const/4 v1, 0x0

    .line 1638
    .local v1, "val":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 1639
    .local v2, "binCount":I
    iget-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1641
    .local v3, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v3, :cond_10

    array-length v4, v3

    move v5, v4

    .local v5, "n":I
    if-nez v4, :cond_0

    goto/16 :goto_6

    .line 1643
    :cond_0
    add-int/lit8 v4, v5, -0x1

    and-int/2addr v4, v0

    move v6, v4

    .local v6, "i":I
    invoke-static {v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    move-object v7, v4

    .local v7, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v8, 0x0

    if-nez v4, :cond_4

    .line 1644
    new-instance v4, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct {v4}, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    .line 1645
    .local v4, "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    monitor-enter v4

    .line 1646
    :try_start_0
    invoke-static {v3, v6, v8, v4}, Lj$/util/concurrent/ConcurrentHashMap;->casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v9, :cond_2

    .line 1647
    const/4 v2, 0x1

    .line 1648
    const/4 v9, 0x0

    .line 1650
    .local v9, "node":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_1
    invoke-interface {p2, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    if-eqz v10, :cond_1

    .line 1651
    new-instance v10, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v10, v0, p1, v1, v8}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v10

    .line 1653
    :cond_1
    :try_start_2
    invoke-static {v3, v6, v9}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1654
    goto :goto_1

    .line 1653
    :catchall_0
    move-exception v8

    invoke-static {v3, v6, v9}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1654
    nop

    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "binCount":I
    .end local v3    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "mappingFunction":Lj$/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    throw v8

    .line 1656
    .end local v9    # "node":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v0    # "h":I
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    .restart local v2    # "binCount":I
    .restart local v3    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "n":I
    .restart local v6    # "i":I
    .restart local v7    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "mappingFunction":Lj$/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    :cond_2
    :goto_1
    monitor-exit v4

    .line 1657
    if-eqz v2, :cond_3

    .line 1658
    goto/16 :goto_5

    .line 1659
    .end local v4    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    goto/16 :goto_7

    .line 1656
    .restart local v4    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_1
    move-exception v8

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 1660
    .end local v4    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    iget v4, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v9, v4

    .local v9, "fh":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_5

    .line 1661
    invoke-virtual {p0, v3, v7}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    goto/16 :goto_7

    .line 1663
    :cond_5
    const/4 v4, 0x0

    .line 1664
    .local v4, "added":Z
    monitor-enter v7

    .line 1665
    :try_start_3
    invoke-static {v3, v6}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v10

    if-ne v10, v7, :cond_c

    .line 1666
    if-ltz v9, :cond_a

    .line 1667
    const/4 v2, 0x1

    .line 1668
    move-object v10, v7

    .line 1670
    .local v10, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_2
    iget v11, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v11, v0, :cond_7

    iget-object v11, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v12, v11

    .local v12, "ek":Ljava/lang/Object;, "TK;"
    if-eq v11, p1, :cond_6

    if-eqz v12, :cond_7

    .line 1672
    invoke-virtual {p1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1673
    :cond_6
    iget-object v8, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v1, v8

    .line 1674
    goto :goto_3

    .line 1676
    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    :cond_7
    move-object v11, v10

    .line 1677
    .local v11, "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v12, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v10, v12

    if-nez v12, :cond_9

    .line 1678
    invoke-interface {p2, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v1, v12

    if-eqz v12, :cond_8

    .line 1679
    const/4 v4, 0x1

    .line 1680
    new-instance v12, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v12, v0, p1, v1, v8}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object v12, v11, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1668
    .end local v10    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_8
    :goto_3
    goto :goto_4

    .restart local v10    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1686
    .end local v10    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_a
    instance-of v10, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v10, :cond_c

    .line 1687
    const/4 v2, 0x2

    .line 1688
    move-object v10, v7

    check-cast v10, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1690
    .local v10, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v11, v10, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v12, v11

    .local v12, "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v11, :cond_b

    .line 1691
    invoke-virtual {v12, v0, p1, v8}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v8

    move-object v11, v8

    .local v11, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v8, :cond_b

    .line 1692
    iget-object v8, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    move-object v1, v8

    goto :goto_4

    .line 1693
    .end local v11    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_b
    invoke-interface {p2, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    if-eqz v8, :cond_c

    .line 1694
    const/4 v4, 0x1

    .line 1695
    invoke-virtual {v10, v0, p1, v1}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 1699
    .end local v10    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v12    # "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_c
    :goto_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1700
    if-eqz v2, :cond_11

    .line 1701
    const/16 v8, 0x8

    if-lt v2, v8, :cond_d

    .line 1702
    invoke-direct {p0, v3, v6}, Lj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Lj$/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 1703
    :cond_d
    if-nez v4, :cond_e

    .line 1704
    return-object v1

    .line 1709
    .end local v3    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "added":Z
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :cond_e
    :goto_5
    if-eqz v1, :cond_f

    .line 1710
    const-wide/16 v3, 0x1

    invoke-direct {p0, v3, v4, v2}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1711
    :cond_f
    return-object v1

    .line 1699
    .restart local v3    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "added":Z
    .restart local v5    # "n":I
    .restart local v6    # "i":I
    .restart local v7    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    :catchall_2
    move-exception v8

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v8

    .line 1642
    .end local v4    # "added":Z
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :cond_10
    :goto_6
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;->initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    .line 1708
    :cond_11
    :goto_7
    goto/16 :goto_0

    .line 1635
    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "binCount":I
    .end local v3    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public synthetic computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lj$/util/function/Function$VivifiedWrapper;->convert(Ljava/util/function/Function;)Lj$/util/function/Function;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public computeIfPresent(Ljava/lang/Object;Lj$/util/function/BiFunction;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lj$/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1735
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Lj$/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 1737
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 1738
    .local v0, "h":I
    const/4 v1, 0x0

    .line 1739
    .local v1, "val":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 1740
    .local v2, "delta":I
    const/4 v3, 0x0

    .line 1741
    .local v3, "binCount":I
    iget-object v4, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1743
    .local v4, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_c

    array-length v5, v4

    move v6, v5

    .local v6, "n":I
    if-nez v5, :cond_0

    goto/16 :goto_6

    .line 1745
    :cond_0
    add-int/lit8 v5, v6, -0x1

    and-int/2addr v5, v0

    move v7, v5

    .local v7, "i":I
    invoke-static {v4, v5}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    move-object v8, v5

    .local v8, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v5, :cond_1

    .line 1746
    goto/16 :goto_5

    .line 1747
    :cond_1
    iget v5, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v9, v5

    .local v9, "fh":I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_2

    .line 1748
    invoke-virtual {p0, v4, v8}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    goto/16 :goto_7

    .line 1750
    :cond_2
    monitor-enter v8

    .line 1751
    :try_start_0
    invoke-static {v4, v7}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    if-ne v5, v8, :cond_a

    .line 1752
    if-ltz v9, :cond_8

    .line 1753
    const/4 v3, 0x1

    .line 1754
    move-object v5, v8

    .local v5, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v10, 0x0

    .line 1756
    .local v10, "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1
    iget v11, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v11, v0, :cond_6

    iget-object v11, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v12, v11

    .local v12, "ek":Ljava/lang/Object;, "TK;"
    if-eq v11, p1, :cond_3

    if-eqz v12, :cond_6

    .line 1758
    invoke-virtual {p1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1759
    :cond_3
    iget-object v11, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p2, p1, v11}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    .line 1760
    if-eqz v1, :cond_4

    .line 1761
    iput-object v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_3

    .line 1763
    :cond_4
    const/4 v2, -0x1

    .line 1764
    iget-object v11, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1765
    .local v11, "en":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v10, :cond_5

    .line 1766
    iput-object v11, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_2

    .line 1768
    :cond_5
    invoke-static {v4, v7, v11}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1770
    .end local v11    # "en":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_2
    goto :goto_3

    .line 1772
    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    :cond_6
    move-object v10, v5

    .line 1773
    iget-object v11, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v5, v11

    if-nez v11, :cond_7

    .line 1774
    nop

    .line 1754
    .end local v5    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_3
    goto :goto_4

    .restart local v5    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1777
    .end local v5    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_8
    instance-of v5, v8, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v5, :cond_a

    .line 1778
    const/4 v3, 0x2

    .line 1779
    move-object v5, v8

    check-cast v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1781
    .local v5, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v10, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v11, v10

    .local v11, "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v10, :cond_a

    .line 1782
    const/4 v10, 0x0

    invoke-virtual {v11, v0, p1, v10}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v10

    move-object v12, v10

    .local v12, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v10, :cond_a

    .line 1783
    iget-object v10, v12, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    invoke-interface {p2, p1, v10}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    .line 1784
    if-eqz v1, :cond_9

    .line 1785
    iput-object v1, v12, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_4

    .line 1787
    :cond_9
    const/4 v2, -0x1

    .line 1788
    invoke-virtual {v5, v12}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1789
    iget-object v10, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v10}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v10

    invoke-static {v4, v7, v10}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1794
    .end local v5    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v11    # "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_a
    :goto_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1795
    if-eqz v3, :cond_d

    .line 1796
    nop

    .line 1799
    .end local v4    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "n":I
    .end local v7    # "i":I
    .end local v8    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :goto_5
    if-eqz v2, :cond_b

    .line 1800
    int-to-long v4, v2

    invoke-direct {p0, v4, v5, v3}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1801
    :cond_b
    return-object v1

    .line 1794
    .restart local v4    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v6    # "n":I
    .restart local v7    # "i":I
    .restart local v8    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1744
    .end local v6    # "n":I
    .end local v7    # "i":I
    .end local v8    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :cond_c
    :goto_6
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;->initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    .line 1798
    :cond_d
    :goto_7
    goto/16 :goto_0

    .line 1736
    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "delta":I
    .end local v3    # "binCount":I
    .end local v4    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public synthetic computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lj$/util/function/BiFunction$VivifiedWrapper;->convert(Ljava/util/function/BiFunction;)Lj$/util/function/BiFunction;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->computeIfPresent(Ljava/lang/Object;Lj$/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 2057
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 952
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 966
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-eqz p1, :cond_3

    .line 969
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 970
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v1

    array-length v4, v1

    invoke-direct {v0, v1, v3, v2, v4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 971
    .local v0, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_2

    .line 973
    iget-object v3, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v5, v3

    .local v5, "v":Ljava/lang/Object;, "TV;"
    if-eq v3, p1, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 975
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    goto :goto_0

    .line 974
    .restart local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 977
    .end local v0    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    return v2

    .line 967
    .end local v1    # "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TV;>;"
        }
    .end annotation

    .line 2080
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v0

    .local v7, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v7

    move v3, v0

    .line 2081
    .local v3, "f":I
    :goto_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$ValueIterator;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, v7

    move v5, v3

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lj$/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IIILj$/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1266
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->entrySet:Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;

    move-object v1, v0

    .local v1, "es":Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;

    invoke-direct {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;-><init>(Lj$/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->entrySet:Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 1331
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-eq p1, p0, :cond_7

    .line 1332
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1333
    return v1

    .line 1334
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 1336
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v3, v2

    .local v3, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    array-length v2, v3

    .line 1337
    .local v2, "f":I
    :goto_0
    new-instance v4, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v4, v3, v2, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1338
    .local v4, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_1
    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    move-object v6, v5

    .local v6, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v5, :cond_4

    .line 1339
    iget-object v5, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1340
    .local v5, "val":Ljava/lang/Object;, "TV;"
    iget-object v7, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1341
    .local v7, "v":Ljava/lang/Object;
    if-eqz v7, :cond_3

    if-eq v7, v5, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    .line 1343
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v7    # "v":Ljava/lang/Object;
    :cond_2
    goto :goto_1

    .line 1342
    .restart local v5    # "val":Ljava/lang/Object;, "TV;"
    .restart local v7    # "v":Ljava/lang/Object;
    :cond_3
    :goto_2
    return v1

    .line 1344
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "v":Ljava/lang/Object;
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1346
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    .local v8, "mk":Ljava/lang/Object;
    if-eqz v7, :cond_6

    .line 1347
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    .local v9, "mv":Ljava/lang/Object;
    if-eqz v7, :cond_6

    .line 1348
    invoke-virtual {p0, v8}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    .local v10, "v":Ljava/lang/Object;
    if-eqz v7, :cond_6

    if-eq v9, v10, :cond_5

    .line 1349
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_4

    .line 1351
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v8    # "mk":Ljava/lang/Object;
    .end local v9    # "mv":Ljava/lang/Object;
    .end local v10    # "v":Ljava/lang/Object;
    :cond_5
    goto :goto_3

    .line 1350
    .restart local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v8    # "mk":Ljava/lang/Object;
    :cond_6
    :goto_4
    return v1

    .line 1353
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v2    # "f":I
    .end local v3    # "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v8    # "mk":Ljava/lang/Object;
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public forEach(Lj$/util/function/BiConsumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1582
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "action":Lj$/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-eqz p1, :cond_1

    .line 1584
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 1585
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1586
    .local v0, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v3, v2

    .local v3, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_0

    .line 1587
    iget-object v2, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v4, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v2, v4}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1590
    .end local v0    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v3    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    return-void

    .line 1582
    .end local v1    # "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public synthetic forEach(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-static {p1}, Lj$/util/function/BiConsumer$VivifiedWrapper;->convert(Ljava/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->forEach(Lj$/util/function/BiConsumer;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 924
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 925
    .local v0, "h":I
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    if-eqz v1, :cond_5

    array-length v1, v2

    move v4, v1

    .local v4, "n":I
    if-lez v1, :cond_5

    add-int/lit8 v1, v4, -0x1

    and-int/2addr v1, v0

    .line 926
    invoke-static {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v5, v1

    .local v5, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_5

    .line 927
    iget v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v6, v1

    .local v6, "eh":I
    if-ne v1, v0, :cond_1

    .line 928
    iget-object v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v7, v1

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_0

    if-eqz v7, :cond_3

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 929
    :cond_0
    iget-object v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v1

    .line 931
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    :cond_1
    if-gez v6, :cond_3

    .line 932
    invoke-virtual {v5, v0, p1}, Lj$/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v7, v1

    .local v7, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_2

    iget-object v3, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    :cond_2
    return-object v3

    .line 933
    .end local v7    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    iget-object v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v5, v1

    if-eqz v1, :cond_5

    .line 934
    iget v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v1, v0, :cond_3

    iget-object v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v7, v1

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_4

    if-eqz v7, :cond_3

    .line 935
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 936
    :cond_4
    iget-object v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v1

    .line 939
    .end local v4    # "n":I
    .end local v5    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "eh":I
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    :cond_5
    return-object v3
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 1578
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1277
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1279
    .local v0, "h":I
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 1280
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v3, v4, v5}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1281
    .local v1, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_0

    .line 1282
    iget-object v3, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v5, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v3, v5

    add-int/2addr v0, v3

    goto :goto_0

    .line 1284
    .end local v1    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    return v0
.end method

.method final helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2242
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_3

    instance-of v0, p2, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v0, v0, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_3

    .line 2244
    array-length v0, p1

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v0

    .line 2245
    .local v0, "rs":I
    :cond_0
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne v2, p1, :cond_2

    iget v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v9, v2

    .local v9, "sc":I
    if-gez v2, :cond_2

    .line 2247
    sget v2, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    ushr-int v2, v9, v2

    if-ne v2, v0, :cond_2

    add-int/lit8 v2, v0, 0x1

    if-eq v9, v2, :cond_2

    sget v2, Lj$/util/concurrent/ConcurrentHashMap;->MAX_RESIZERS:I

    add-int/2addr v2, v0

    if-eq v9, v2, :cond_2

    iget v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v2, :cond_1

    .line 2249
    goto :goto_0

    .line 2250
    :cond_1
    sget-object v3, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v5, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v8, v9, 0x1

    move-object v4, p0

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2251
    invoke-direct {p0, p1, v1}, Lj$/util/concurrent/ConcurrentHashMap;->transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2252
    nop

    .line 2255
    .end local v9    # "sc":I
    :cond_2
    :goto_0
    return-object v1

    .line 2257
    .end local v0    # "rs":I
    .end local v1    # "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 5

    .line 908
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1221
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->keySet:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    move-object v1, v0

    .local v1, "ks":Lj$/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->keySet:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    :goto_0
    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TK;>;"
        }
    .end annotation

    .line 2068
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v0

    .local v7, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v7

    move v3, v0

    .line 2069
    .local v3, "f":I
    :goto_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$KeyIterator;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, v7

    move v5, v3

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lj$/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IIILj$/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public mappingCount()J
    .locals 5

    .line 2097
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    .line 2098
    .local v0, "n":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Lj$/util/function/BiFunction;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lj$/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1951
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Lj$/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    if-eqz v2, :cond_16

    if-eqz v3, :cond_16

    if-eqz v4, :cond_16

    .line 1953
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v5

    .line 1954
    .local v5, "h":I
    const/4 v0, 0x0

    .line 1955
    .local v0, "val":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x0

    .line 1956
    .local v6, "delta":I
    const/4 v7, 0x0

    .line 1957
    .local v7, "binCount":I
    iget-object v8, v1, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v9, v8

    move v8, v7

    move v7, v6

    move-object v6, v0

    .line 1959
    .end local v0    # "val":Ljava/lang/Object;, "TV;"
    .local v6, "val":Ljava/lang/Object;, "TV;"
    .local v7, "delta":I
    .local v8, "binCount":I
    .local v9, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v9, :cond_14

    array-length v0, v9

    move v10, v0

    .local v10, "n":I
    if-nez v0, :cond_0

    move-object/from16 v17, v6

    goto/16 :goto_c

    .line 1961
    :cond_0
    add-int/lit8 v0, v10, -0x1

    and-int/2addr v0, v5

    move v11, v0

    .local v11, "i":I
    invoke-static {v9, v0}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v12, v0

    .local v12, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v13, 0x0

    if-nez v0, :cond_1

    .line 1962
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v0, v5, v2, v3, v13}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    invoke-static {v9, v11, v13, v0}, Lj$/util/concurrent/ConcurrentHashMap;->casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1963
    const/4 v0, 0x1

    .line 1964
    .end local v7    # "delta":I
    .local v0, "delta":I
    move-object/from16 v6, p2

    .line 1965
    goto/16 :goto_a

    .line 1968
    .end local v0    # "delta":I
    .restart local v7    # "delta":I
    :cond_1
    iget v0, v12, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v14, v0

    .local v14, "fh":I
    const/4 v15, -0x1

    if-ne v0, v15, :cond_2

    .line 1969
    invoke-virtual {v1, v9, v12}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto/16 :goto_d

    .line 1971
    .end local v0    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    monitor-enter v12

    .line 1972
    :try_start_0
    invoke-static {v9, v11}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-ne v0, v12, :cond_10

    .line 1973
    if-ltz v14, :cond_a

    .line 1974
    const/4 v0, 0x1

    .line 1975
    .end local v8    # "binCount":I
    .local v0, "binCount":I
    move-object v8, v12

    .local v8, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v15, 0x0

    move-object/from16 v19, v15

    move v15, v0

    move-object/from16 v0, v19

    .line 1977
    .local v0, "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v15, "binCount":I
    :goto_1
    :try_start_1
    iget v13, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v13, v5, :cond_8

    iget-object v13, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object/from16 v17, v13

    .local v17, "ek":Ljava/lang/Object;, "TK;"
    if-eq v13, v2, :cond_5

    move-object/from16 v13, v17

    .end local v17    # "ek":Ljava/lang/Object;, "TK;"
    .local v13, "ek":Ljava/lang/Object;, "TK;"
    if-eqz v13, :cond_4

    .line 1979
    :try_start_2
    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v17, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v17, v6

    goto :goto_4

    .line 2026
    .end local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "ek":Ljava/lang/Object;, "TK;"
    :catchall_0
    move-exception v0

    move v8, v15

    goto/16 :goto_b

    .line 1977
    .restart local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "ek":Ljava/lang/Object;, "TK;"
    :cond_4
    move-object/from16 v17, v6

    goto :goto_4

    .end local v13    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v17    # "ek":Ljava/lang/Object;, "TK;"
    :cond_5
    move-object/from16 v13, v17

    .line 1980
    .end local v17    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v13    # "ek":Ljava/lang/Object;, "TK;"
    :goto_2
    move-object/from16 v17, v6

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .local v17, "val":Ljava/lang/Object;, "TV;"
    :try_start_3
    iget-object v6, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v4, v6, v3}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1981
    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_6

    .line 1982
    :try_start_4
    iput-object v6, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 1984
    :cond_6
    const/4 v7, -0x1

    .line 1985
    move-object/from16 v16, v6

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .local v16, "val":Ljava/lang/Object;, "TV;"
    :try_start_5
    iget-object v6, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1986
    .local v6, "en":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_7

    .line 1987
    iput-object v6, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_3

    .line 1989
    :cond_7
    invoke-static {v9, v11, v6}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1991
    .end local v6    # "en":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_3
    move-object/from16 v6, v16

    goto :goto_5

    .line 2026
    .end local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "ek":Ljava/lang/Object;, "TK;"
    :catchall_1
    move-exception v0

    move v8, v15

    move-object/from16 v6, v16

    goto/16 :goto_b

    .line 1977
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v6, "val":Ljava/lang/Object;, "TV;"
    .restart local v8    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_8
    move-object/from16 v17, v6

    .line 1993
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v17    # "val":Ljava/lang/Object;, "TV;"
    :goto_4
    move-object v0, v8

    .line 1994
    :try_start_6
    iget-object v6, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v8, v6

    if-nez v6, :cond_9

    .line 1995
    const/4 v7, 0x1

    .line 1996
    move-object/from16 v6, p2

    .line 1997
    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :try_start_7
    new-instance v13, Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move/from16 v18, v7

    const/4 v7, 0x0

    .end local v7    # "delta":I
    .local v18, "delta":I
    :try_start_8
    invoke-direct {v13, v5, v2, v6, v7}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object v13, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1999
    move/from16 v7, v18

    .line 1975
    .end local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v18    # "delta":I
    .restart local v7    # "delta":I
    :goto_5
    move v8, v15

    goto/16 :goto_9

    .line 2026
    .end local v7    # "delta":I
    .restart local v18    # "delta":I
    :catchall_2
    move-exception v0

    move v8, v15

    move/from16 v7, v18

    goto/16 :goto_b

    .end local v18    # "delta":I
    .restart local v7    # "delta":I
    :catchall_3
    move-exception v0

    move/from16 v18, v7

    move v8, v15

    .end local v7    # "delta":I
    .restart local v18    # "delta":I
    goto/16 :goto_b

    .line 1975
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .end local v18    # "delta":I
    .restart local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "delta":I
    .restart local v8    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v17    # "val":Ljava/lang/Object;, "TV;"
    :cond_9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v17

    const/4 v13, 0x0

    goto :goto_1

    .line 2026
    .end local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_4
    move-exception v0

    move v8, v15

    move-object/from16 v6, v17

    goto/16 :goto_b

    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :catchall_5
    move-exception v0

    move-object/from16 v17, v6

    move v8, v15

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v17    # "val":Ljava/lang/Object;, "TV;"
    goto/16 :goto_b

    .line 2003
    .end local v15    # "binCount":I
    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    .local v8, "binCount":I
    :cond_a
    move-object/from16 v17, v6

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v17    # "val":Ljava/lang/Object;, "TV;"
    :try_start_9
    instance-of v0, v12, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_11

    .line 2004
    const/4 v8, 0x2

    .line 2005
    move-object v0, v12

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 2006
    .local v0, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v6, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2007
    .local v6, "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v6, :cond_b

    const/4 v13, 0x0

    goto :goto_6

    .line 2008
    :cond_b
    const/4 v13, 0x0

    invoke-virtual {v6, v5, v2, v13}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v13

    :goto_6
    nop

    .line 2009
    .local v13, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v13, :cond_c

    move-object v15, v3

    goto :goto_7

    .line 2010
    :cond_c
    iget-object v15, v13, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    invoke-interface {v4, v15, v3}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :goto_7
    nop

    .line 2011
    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .local v15, "val":Ljava/lang/Object;, "TV;"
    if-eqz v15, :cond_e

    .line 2012
    if-eqz v13, :cond_d

    .line 2013
    :try_start_a
    iput-object v15, v13, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_8

    .line 2015
    :cond_d
    const/4 v7, 0x1

    .line 2016
    invoke-virtual {v0, v5, v2, v15}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v6, v15

    goto :goto_9

    .line 2019
    :cond_e
    if-eqz v13, :cond_f

    .line 2020
    const/4 v7, -0x1

    .line 2021
    invoke-virtual {v0, v13}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 2022
    iget-object v2, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v2}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    invoke-static {v9, v11, v2}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_8

    .line 2026
    .end local v0    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v6    # "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v13    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_6
    move-exception v0

    move-object v6, v15

    goto :goto_b

    :cond_f
    :goto_8
    move-object v6, v15

    goto :goto_9

    .end local v15    # "val":Ljava/lang/Object;, "TV;"
    .restart local v17    # "val":Ljava/lang/Object;, "TV;"
    :catchall_7
    move-exception v0

    move-object/from16 v6, v17

    goto :goto_b

    .line 1972
    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .local v6, "val":Ljava/lang/Object;, "TV;"
    :cond_10
    move-object/from16 v17, v6

    .line 2026
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v17    # "val":Ljava/lang/Object;, "TV;"
    :cond_11
    move-object/from16 v6, v17

    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :goto_9
    :try_start_b
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 2027
    if-eqz v8, :cond_15

    .line 2028
    const/16 v0, 0x8

    if-lt v8, v0, :cond_12

    .line 2029
    invoke-direct {v1, v9, v11}, Lj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Lj$/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 2034
    .end local v9    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "n":I
    .end local v11    # "i":I
    .end local v12    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "fh":I
    :cond_12
    move v0, v7

    .end local v7    # "delta":I
    .local v0, "delta":I
    :goto_a
    if-eqz v0, :cond_13

    .line 2035
    int-to-long v9, v0

    invoke-direct {v1, v9, v10, v8}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 2036
    :cond_13
    return-object v6

    .line 2026
    .end local v0    # "delta":I
    .restart local v7    # "delta":I
    .restart local v9    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "n":I
    .restart local v11    # "i":I
    .restart local v12    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v14    # "fh":I
    :catchall_8
    move-exception v0

    move-object/from16 v17, v6

    :goto_b
    :try_start_c
    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_b

    .line 1959
    .end local v10    # "n":I
    .end local v11    # "i":I
    .end local v12    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "fh":I
    :cond_14
    move-object/from16 v17, v6

    .line 1960
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v17    # "val":Ljava/lang/Object;, "TV;"
    :goto_c
    invoke-direct/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap;->initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v9, v0

    move-object/from16 v6, v17

    .line 2033
    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :cond_15
    :goto_d
    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 1952
    .end local v5    # "h":I
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .end local v7    # "delta":I
    .end local v8    # "binCount":I
    .end local v9    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public synthetic merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    invoke-static {p3}, Lj$/util/function/BiFunction$VivifiedWrapper;->convert(Ljava/util/function/BiFunction;)Lj$/util/function/BiFunction;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lj$/util/concurrent/ConcurrentHashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Lj$/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 994
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1070
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    .line 1071
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1072
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_0

    .line 1073
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1525
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 12
    .param p3, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .line 999
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 1000
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 1001
    .local v0, "hash":I
    const/4 v1, 0x0

    .line 1002
    .local v1, "binCount":I
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1004
    .local v2, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_b

    array-length v3, v2

    move v4, v3

    .local v4, "n":I
    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 1006
    :cond_0
    add-int/lit8 v3, v4, -0x1

    and-int/2addr v3, v0

    move v5, v3

    .local v5, "i":I
    invoke-static {v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v6, v3

    .local v6, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v7, 0x0

    if-nez v3, :cond_1

    .line 1007
    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v3, v0, p1, p2, v7}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    invoke-static {v2, v5, v7, v3}, Lj$/util/concurrent/ConcurrentHashMap;->casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1009
    goto/16 :goto_4

    .line 1011
    :cond_1
    iget v3, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v8, v3

    .local v8, "fh":I
    const/4 v9, -0x1

    if-ne v3, v9, :cond_2

    .line 1012
    invoke-virtual {p0, v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    goto/16 :goto_6

    .line 1014
    :cond_2
    const/4 v3, 0x0

    .line 1015
    .local v3, "oldVal":Ljava/lang/Object;, "TV;"
    monitor-enter v6

    .line 1016
    :try_start_0
    invoke-static {v2, v5}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    if-ne v9, v6, :cond_8

    .line 1017
    if-ltz v8, :cond_7

    .line 1018
    const/4 v1, 0x1

    .line 1019
    move-object v9, v6

    .line 1021
    .local v9, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1
    iget v10, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v10, v0, :cond_4

    iget-object v10, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v11, v10

    .local v11, "ek":Ljava/lang/Object;, "TK;"
    if-eq v10, p1, :cond_3

    if-eqz v11, :cond_4

    .line 1023
    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1024
    :cond_3
    iget-object v10, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v3, v10

    .line 1025
    if-nez p3, :cond_5

    .line 1026
    iput-object p2, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_2

    .line 1029
    .end local v11    # "ek":Ljava/lang/Object;, "TK;"
    :cond_4
    move-object v10, v9

    .line 1030
    .local v10, "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v11, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v9, v11

    if-nez v11, :cond_6

    .line 1031
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v11, v0, p1, p2, v7}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object v11, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1033
    nop

    .line 1019
    .end local v9    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    :goto_2
    goto :goto_3

    .restart local v9    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1037
    .end local v9    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    instance-of v9, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v9, :cond_8

    .line 1039
    const/4 v1, 0x2

    .line 1040
    move-object v9, v6

    check-cast v9, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-virtual {v9, v0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v9

    move-object v10, v9

    .local v10, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v9, :cond_8

    .line 1042
    iget-object v9, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v3, v9

    .line 1043
    if-nez p3, :cond_8

    .line 1044
    iput-object p2, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1048
    .end local v10    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_8
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    if-eqz v1, :cond_c

    .line 1050
    const/16 v9, 0x8

    if-lt v1, v9, :cond_9

    .line 1051
    invoke-direct {p0, v2, v5}, Lj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Lj$/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 1052
    :cond_9
    if-eqz v3, :cond_a

    .line 1053
    return-object v3

    .line 1058
    .end local v2    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v6    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "fh":I
    :cond_a
    :goto_4
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3, v1}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1059
    return-object v7

    .line 1048
    .restart local v2    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v4    # "n":I
    .restart local v5    # "i":I
    .restart local v6    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "fh":I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1005
    .end local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v6    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "fh":I
    :cond_b
    :goto_5
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;->initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    .line 1057
    :cond_c
    :goto_6
    goto/16 :goto_0

    .line 999
    .end local v0    # "hash":I
    .end local v1    # "binCount":I
    .end local v2    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1085
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1534
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-eqz p1, :cond_1

    .line 1536
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1535
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1558
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1560
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1559
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1545
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1547
    invoke-virtual {p0, p1, p3, p2}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1546
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public replaceAll(Lj$/util/function/BiFunction;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1593
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Lj$/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_4

    .line 1595
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_3

    .line 1596
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1597
    .local v0, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v3, v2

    .local v3, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_3

    .line 1598
    iget-object v2, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1599
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1600
    .local v4, "key":Ljava/lang/Object;, "TK;"
    :goto_1
    invoke-interface {p1, v4, v2}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1601
    .local v5, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_2

    .line 1603
    invoke-virtual {p0, v4, v5, v2}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1604
    invoke-virtual {p0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    if-nez v6, :cond_0

    .line 1605
    goto :goto_2

    .line 1606
    .end local v5    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_0
    goto :goto_1

    .line 1607
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    :goto_2
    goto :goto_0

    .line 1602
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    .restart local v5    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_2
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1609
    .end local v0    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v3    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_3
    return-void

    .line 1593
    .end local v1    # "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public synthetic replaceAll(Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-static {p1}, Lj$/util/function/BiFunction$VivifiedWrapper;->convert(Ljava/util/function/BiFunction;)Lj$/util/function/BiFunction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->replaceAll(Lj$/util/function/BiFunction;)V

    return-void
.end method

.method final replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1, "key"    # Ljava/lang/Object;
    .param p3, "cv"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1094
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v5

    .line 1095
    .local v5, "hash":I
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v6, v0

    .line 1097
    .local v6, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v6, :cond_f

    array-length v7, v6

    move v8, v7

    .local v8, "n":I
    if-eqz v7, :cond_f

    add-int/lit8 v7, v8, -0x1

    and-int/2addr v7, v5

    move v9, v7

    .line 1098
    .local v9, "i":I
    invoke-static {v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    move-object v10, v7

    .local v10, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v7, :cond_0

    .line 1099
    goto/16 :goto_6

    .line 1100
    :cond_0
    iget v7, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v11, v7

    .local v11, "fh":I
    const/4 v12, -0x1

    if-ne v7, v12, :cond_1

    .line 1101
    invoke-virtual {v1, v6, v10}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v6, v0

    .end local v6    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto/16 :goto_5

    .line 1103
    .end local v0    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v6    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    const/4 v7, 0x0

    .line 1104
    .local v7, "oldVal":Ljava/lang/Object;, "TV;"
    const/4 v13, 0x0

    .line 1105
    .local v13, "validated":Z
    monitor-enter v10

    .line 1106
    :try_start_0
    invoke-static {v6, v9}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v14

    if-ne v14, v10, :cond_c

    .line 1107
    if-ltz v11, :cond_9

    .line 1108
    const/4 v13, 0x1

    .line 1109
    move-object v14, v10

    .local v14, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v15, 0x0

    .line 1111
    .local v15, "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1
    iget v12, v14, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v12, v5, :cond_6

    iget-object v12, v14, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v16, v12

    .local v16, "ek":Ljava/lang/Object;, "TK;"
    if-eq v12, v2, :cond_2

    move-object/from16 v12, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .local v12, "ek":Ljava/lang/Object;, "TK;"
    if-eqz v12, :cond_6

    .line 1113
    invoke-virtual {v2, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    goto :goto_2

    .line 1111
    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_2
    move-object/from16 v12, v16

    .line 1114
    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v12    # "ek":Ljava/lang/Object;, "TK;"
    :goto_2
    iget-object v0, v14, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1115
    .local v0, "ev":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_3

    if-eq v4, v0, :cond_3

    if-eqz v0, :cond_7

    .line 1116
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1117
    :cond_3
    move-object v7, v0

    .line 1118
    if-eqz v3, :cond_4

    .line 1119
    iput-object v3, v14, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_3

    .line 1120
    :cond_4
    if-eqz v15, :cond_5

    .line 1121
    move-object/from16 v17, v0

    .end local v0    # "ev":Ljava/lang/Object;, "TV;"
    .local v17, "ev":Ljava/lang/Object;, "TV;"
    iget-object v0, v14, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, v15, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_3

    .line 1123
    .end local v17    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v0    # "ev":Ljava/lang/Object;, "TV;"
    :cond_5
    move-object/from16 v17, v0

    .end local v0    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v17    # "ev":Ljava/lang/Object;, "TV;"
    iget-object v0, v14, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-static {v6, v9, v0}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_3

    .line 1127
    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    .end local v17    # "ev":Ljava/lang/Object;, "TV;"
    :cond_6
    move-object v15, v14

    .line 1128
    iget-object v0, v14, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v14, v0

    if-nez v0, :cond_8

    .line 1129
    nop

    .end local v14    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    :goto_3
    goto :goto_4

    .line 1128
    .restart local v14    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v15    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_8
    const/4 v12, -0x1

    goto :goto_1

    .line 1132
    .end local v14    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_9
    instance-of v0, v10, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_c

    .line 1133
    const/4 v13, 0x1

    .line 1134
    move-object v0, v10

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1136
    .local v0, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v12, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v14, v12

    .local v14, "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v12, :cond_c

    .line 1137
    const/4 v12, 0x0

    invoke-virtual {v14, v5, v2, v12}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v15

    move-object v12, v15

    .local v12, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v15, :cond_c

    .line 1138
    iget-object v15, v12, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    .line 1139
    .local v15, "pv":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_a

    if-eq v4, v15, :cond_a

    if-eqz v15, :cond_c

    .line 1140
    invoke-virtual {v4, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1141
    :cond_a
    move-object v7, v15

    .line 1142
    if-eqz v3, :cond_b

    .line 1143
    iput-object v3, v12, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_4

    .line 1144
    :cond_b
    invoke-virtual {v0, v12}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1145
    iget-object v2, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v2}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    invoke-static {v6, v9, v2}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1150
    .end local v0    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v12    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v14    # "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v15    # "pv":Ljava/lang/Object;, "TV;"
    :cond_c
    :goto_4
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    if-eqz v13, :cond_e

    .line 1152
    if-eqz v7, :cond_f

    .line 1153
    if-nez v3, :cond_d

    .line 1154
    const-wide/16 v14, -0x1

    const/4 v0, -0x1

    invoke-direct {v1, v14, v15, v0}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1155
    :cond_d
    return-object v7

    .line 1160
    .end local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v8    # "n":I
    .end local v9    # "i":I
    .end local v10    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "fh":I
    .end local v13    # "validated":Z
    :cond_e
    :goto_5
    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 1150
    .restart local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v8    # "n":I
    .restart local v9    # "i":I
    .restart local v10    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v11    # "fh":I
    .restart local v13    # "validated":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1161
    .end local v6    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v8    # "n":I
    .end local v9    # "i":I
    .end local v10    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "fh":I
    .end local v13    # "validated":Z
    :cond_f
    :goto_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .locals 5

    .line 898
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    .line 899
    .local v0, "n":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 900
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const v2, 0x7fffffff

    goto :goto_0

    .line 901
    :cond_1
    long-to-int v2, v0

    .line 899
    :goto_0
    return v2
.end method

.method final sumCount()J
    .locals 8

    .line 2456
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 2457
    .local v0, "as":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    iget-wide v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    .line 2458
    .local v1, "sum":J
    if-eqz v0, :cond_1

    .line 2459
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 2460
    aget-object v4, v0, v3

    move-object v5, v4

    .local v5, "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v4, :cond_0

    .line 2461
    iget-wide v6, v5, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    add-long/2addr v1, v6

    .line 2459
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2464
    .end local v3    # "i":I
    .end local v5    # "a":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_1
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1300
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v1

    .line 1301
    .local v0, "f":I
    :goto_0
    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v3, v1, v0, v2, v0}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    move-object v2, v3

    .line 1302
    .local v2, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1303
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1305
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    move-object v5, v4

    .local v5, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v4, :cond_4

    .line 1307
    :goto_1
    iget-object v4, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1308
    .local v4, "k":Ljava/lang/Object;, "TK;"
    iget-object v6, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1309
    .local v6, "v":Ljava/lang/Object;, "TV;"
    const-string v7, "(this Map)"

    if-ne v4, p0, :cond_1

    move-object v8, v7

    goto :goto_2

    :cond_1
    move-object v8, v4

    :goto_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1310
    const/16 v8, 0x3d

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1311
    if-ne v6, p0, :cond_2

    goto :goto_3

    :cond_2
    move-object v7, v6

    :goto_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1312
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    move-object v5, v7

    if-nez v7, :cond_3

    .line 1313
    goto :goto_4

    .line 1314
    :cond_3
    const/16 v7, 0x2c

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1315
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 1317
    :cond_4
    :goto_4
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1244
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->values:Lj$/util/concurrent/ConcurrentHashMap$ValuesView;

    move-object v1, v0

    .local v1, "vs":Lj$/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$ValuesView;

    invoke-direct {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap$ValuesView;-><init>(Lj$/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->values:Lj$/util/concurrent/ConcurrentHashMap$ValuesView;

    :goto_0
    return-object v0
.end method

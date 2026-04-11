.class public final Lj$/util/stream/Collectors;
.super Ljava/lang/Object;
.source "Collectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/Collectors$Partition;,
        Lj$/util/stream/Collectors$CollectorImpl;
    }
.end annotation


# static fields
.field static final CH_CONCURRENT_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_CONCURRENT_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_UNORDERED_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 106
    sget-object v0, Lj$/util/stream/Collector$Characteristics;->CONCURRENT:Lj$/util/stream/Collector$Characteristics;

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    sget-object v2, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    .line 107
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    .line 110
    sget-object v0, Lj$/util/stream/Collector$Characteristics;->CONCURRENT:Lj$/util/stream/Collector$Characteristics;

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    .line 111
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    .line 113
    sget-object v0, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    .line 114
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    .line 115
    sget-object v0, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    .line 116
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    .line 118
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lj$/util/function/Function;
    .locals 1

    .line 104
    invoke-static {}, Lj$/util/stream/Collectors;->castingIdentity()Lj$/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method public static averagingDouble(Lj$/util/function/ToDoubleFunction;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 628
    .local p0, "mapper":Lj$/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda25;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda26;-><init>(Lj$/util/function/ToDoubleFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda27;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda27;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda28;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda28;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static averagingInt(Lj$/util/function/ToIntFunction;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/ToIntFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 573
    .local p0, "mapper":Lj$/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda29;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda29;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda30;-><init>(Lj$/util/function/ToIntFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda31;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda31;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda32;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda32;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static averagingLong(Lj$/util/function/ToLongFunction;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/ToLongFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 591
    .local p0, "mapper":Lj$/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda74;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda74;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda75;-><init>(Lj$/util/function/ToLongFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda76;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda76;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda77;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda77;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method private static boxSupplier(Ljava/lang/Object;)Lj$/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lj$/util/function/Supplier<",
            "[TT;>;"
        }
    .end annotation

    .line 668
    .local p0, "identity":Ljava/lang/Object;, "TT;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static castingIdentity()Lj$/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/function/Function<",
            "TI;TR;>;"
        }
    .end annotation

    .line 138
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda53;-><init>()V

    return-object v0
.end method

.method public static collectingAndThen(Lj$/util/stream/Collector;Lj$/util/function/Function;)Lj$/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "RR:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Collector<",
            "TT;TA;TR;>;",
            "Lj$/util/function/Function<",
            "TR;TRR;>;)",
            "Lj$/util/stream/Collector<",
            "TT;TA;TRR;>;"
        }
    .end annotation

    .line 380
    .local p0, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<TT;TA;TR;>;"
    .local p1, "finisher":Lj$/util/function/Function;, "Ljava/util/function/Function<TR;TRR;>;"
    invoke-interface {p0}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    .line 381
    .local v0, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    sget-object v1, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 383
    sget-object v0, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    goto :goto_0

    .line 385
    :cond_0
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 386
    sget-object v1, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 387
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 390
    :cond_1
    :goto_0
    new-instance v7, Lj$/util/stream/Collectors$CollectorImpl;

    invoke-interface {p0}, Lj$/util/stream/Collector;->supplier()Lj$/util/function/Supplier;

    move-result-object v2

    .line 391
    invoke-interface {p0}, Lj$/util/stream/Collector;->accumulator()Lj$/util/function/BiConsumer;

    move-result-object v3

    .line 392
    invoke-interface {p0}, Lj$/util/stream/Collector;->combiner()Lj$/util/function/BinaryOperator;

    move-result-object v4

    .line 393
    invoke-interface {p0}, Lj$/util/stream/Collector;->finisher()Lj$/util/function/Function;

    move-result-object v1

    invoke-interface {v1, p1}, Lj$/util/function/Function;->andThen(Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object v5

    move-object v1, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    .line 390
    return-object v7
.end method

.method static computeFinalSum([D)D
    .locals 5
    .param p0, "summands"    # [D

    .line 554
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    add-double/2addr v0, v3

    .line 555
    .local v0, "tmp":D
    array-length v3, p0

    sub-int/2addr v3, v2

    aget-wide v2, p0, v3

    .line 556
    .local v2, "simpleSum":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    return-wide v2

    .line 559
    :cond_0
    return-wide v0
.end method

.method public static counting()Lj$/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 413
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda63;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda63;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda64;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda64;-><init>()V

    invoke-static {v0, v1, v2}, Lj$/util/stream/Collectors;->reducing(Ljava/lang/Object;Lj$/util/function/Function;Lj$/util/function/BinaryOperator;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingBy(Lj$/util/function/Function;)Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/Function<",
            "-TT;+TK;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 805
    .local p0, "classifier":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Lj$/util/stream/Collectors;->groupingBy(Lj$/util/function/Function;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingBy(Lj$/util/function/Function;Lj$/util/function/Supplier;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TD;>;>(",
            "Lj$/util/function/Function<",
            "-TT;+TK;>;",
            "Lj$/util/function/Supplier<",
            "TM;>;",
            "Lj$/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 904
    .local p0, "classifier":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "mapFactory":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    .local p2, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->supplier()Lj$/util/function/Supplier;

    move-result-object v0

    .line 905
    .local v0, "downstreamSupplier":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->accumulator()Lj$/util/function/BiConsumer;

    move-result-object v1

    .line 906
    .local v1, "downstreamAccumulator":Lj$/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda45;

    invoke-direct {v2, p0, v0, v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda45;-><init>(Lj$/util/function/Function;Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;)V

    .line 911
    .local v2, "accumulator":Lj$/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/Map<TK;TA;>;TT;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->combiner()Lj$/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {v3}, Lj$/util/stream/Collectors;->mapMerger(Lj$/util/function/BinaryOperator;)Lj$/util/function/BinaryOperator;

    move-result-object v9

    .line 913
    .local v9, "merger":Lj$/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/util/Map<TK;TA;>;>;"
    move-object v10, p1

    .line 915
    .local v10, "mangledFactory":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Map<TK;TA;>;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 916
    new-instance v3, Lj$/util/stream/Collectors$CollectorImpl;

    sget-object v4, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v3, v10, v2, v9, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v3

    .line 920
    :cond_0
    invoke-interface {p2}, Lj$/util/stream/Collector;->finisher()Lj$/util/function/Function;

    move-result-object v11

    .line 921
    .local v11, "downstreamFinisher":Lj$/util/function/Function;, "Ljava/util/function/Function<TA;TA;>;"
    new-instance v7, Lj$/util/stream/Collectors$$ExternalSyntheticLambda46;

    invoke-direct {v7, v11}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda46;-><init>(Lj$/util/function/Function;)V

    .line 927
    .local v7, "finisher":Lj$/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map<TK;TA;>;TM;>;"
    new-instance v12, Lj$/util/stream/Collectors$CollectorImpl;

    sget-object v8, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v3, v12

    move-object v4, v10

    move-object v5, v2

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    return-object v12
.end method

.method public static groupingBy(Lj$/util/function/Function;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/Function<",
            "-TT;+TK;>;",
            "Lj$/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TD;>;>;"
        }
    .end annotation

    .line 853
    .local p0, "classifier":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda65;-><init>()V

    invoke-static {p0, v0, p1}, Lj$/util/stream/Collectors;->groupingBy(Lj$/util/function/Function;Lj$/util/function/Supplier;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingByConcurrent(Lj$/util/function/Function;)Lj$/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/Function<",
            "-TT;+TK;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 967
    .local p0, "classifier":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lj$/util/stream/Collectors;->groupingByConcurrent(Lj$/util/function/Function;Lj$/util/function/Supplier;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingByConcurrent(Lj$/util/function/Function;Lj$/util/function/Supplier;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TD;>;>(",
            "Lj$/util/function/Function<",
            "-TT;+TK;>;",
            "Lj$/util/function/Supplier<",
            "TM;>;",
            "Lj$/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1055
    .local p0, "classifier":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "mapFactory":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    .local p2, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->supplier()Lj$/util/function/Supplier;

    move-result-object v0

    .line 1056
    .local v0, "downstreamSupplier":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->accumulator()Lj$/util/function/BiConsumer;

    move-result-object v1

    .line 1057
    .local v1, "downstreamAccumulator":Lj$/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->combiner()Lj$/util/function/BinaryOperator;

    move-result-object v2

    invoke-static {v2}, Lj$/util/stream/Collectors;->mapMerger(Lj$/util/function/BinaryOperator;)Lj$/util/function/BinaryOperator;

    move-result-object v2

    .line 1059
    .local v2, "merger":Lj$/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;>;"
    move-object v9, p1

    .line 1061
    .local v9, "mangledFactory":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lj$/util/stream/Collector$Characteristics;->CONCURRENT:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1062
    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0, v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda5;-><init>(Lj$/util/function/Function;Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;)V

    move-object v10, v3

    .local v3, "accumulator":Lj$/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    goto :goto_0

    .line 1069
    .end local v3    # "accumulator":Lj$/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    :cond_0
    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v0, v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda6;-><init>(Lj$/util/function/Function;Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;)V

    move-object v10, v3

    .line 1078
    .local v10, "accumulator":Lj$/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    :goto_0
    invoke-interface {p2}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1079
    new-instance v3, Lj$/util/stream/Collectors$CollectorImpl;

    sget-object v4, Lj$/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v3, v9, v10, v2, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v3

    .line 1083
    :cond_1
    invoke-interface {p2}, Lj$/util/stream/Collector;->finisher()Lj$/util/function/Function;

    move-result-object v11

    .line 1084
    .local v11, "downstreamFinisher":Lj$/util/function/Function;, "Ljava/util/function/Function<TA;TA;>;"
    new-instance v7, Lj$/util/stream/Collectors$$ExternalSyntheticLambda7;

    invoke-direct {v7, v11}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda7;-><init>(Lj$/util/function/Function;)V

    .line 1090
    .local v7, "finisher":Lj$/util/function/Function;, "Ljava/util/function/Function<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TM;>;"
    new-instance v12, Lj$/util/stream/Collectors$CollectorImpl;

    sget-object v8, Lj$/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    move-object v3, v12

    move-object v4, v9

    move-object v5, v10

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    return-object v12
.end method

.method public static groupingByConcurrent(Lj$/util/function/Function;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/Function<",
            "-TT;+TK;>;",
            "Lj$/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TD;>;>;"
        }
    .end annotation

    .line 1008
    .local p0, "classifier":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0, p1}, Lj$/util/stream/Collectors;->groupingByConcurrent(Lj$/util/function/Function;Lj$/util/function/Supplier;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static joining()Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda80;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda80;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda81;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda81;-><init>()V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda82;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda82;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda83;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda83;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;
    .locals 1
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lj$/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    const-string v0, ""

    invoke-static {p0, v0, v0}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lj$/util/stream/Collector;
    .locals 7
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "suffix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")",
            "Lj$/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0, p1, p2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda54;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda55;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda55;-><init>()V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda56;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda56;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda57;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda57;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method static synthetic lambda$averagingDouble$30()[D
    .locals 1

    .line 629
    const/4 v0, 0x4

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$averagingDouble$31(Lj$/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .locals 5
    .param p0, "mapper"    # Lj$/util/function/ToDoubleFunction;
    .param p1, "a"    # [D
    .param p2, "t"    # Ljava/lang/Object;

    .line 630
    invoke-interface {p0, p2}, Lj$/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v1, p1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Lj$/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v3

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic lambda$averagingDouble$32([D[D)[D
    .locals 5
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 631
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$averagingDouble$33([D)Ljava/lang/Double;
    .locals 6
    .param p0, "a"    # [D

    .line 632
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lj$/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v1

    aget-wide v3, p0, v0

    div-double v3, v1, v3

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$averagingInt$22()[J
    .locals 1

    .line 574
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$averagingInt$23(Lj$/util/function/ToIntFunction;[JLjava/lang/Object;)V
    .locals 5
    .param p0, "mapper"    # Lj$/util/function/ToIntFunction;
    .param p1, "a"    # [J
    .param p2, "t"    # Ljava/lang/Object;

    .line 575
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Lj$/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic lambda$averagingInt$24([J[J)[J
    .locals 5
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 576
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$averagingInt$25([J)Ljava/lang/Double;
    .locals 6
    .param p0, "a"    # [J

    .line 577
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    long-to-double v1, v1

    aget-wide v3, p0, v0

    long-to-double v3, v3

    div-double v0, v1, v3

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$averagingLong$26()[J
    .locals 1

    .line 592
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$averagingLong$27(Lj$/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .locals 5
    .param p0, "mapper"    # Lj$/util/function/ToLongFunction;
    .param p1, "a"    # [J
    .param p2, "t"    # Ljava/lang/Object;

    .line 593
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Lj$/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic lambda$averagingLong$28([J[J)[J
    .locals 5
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 594
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$averagingLong$29([J)Ljava/lang/Double;
    .locals 6
    .param p0, "a"    # [J

    .line 595
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    long-to-double v1, v1

    aget-wide v3, p0, v0

    long-to-double v3, v3

    div-double v0, v1, v3

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$boxSupplier$37(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p0, "identity"    # Ljava/lang/Object;

    .line 668
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method static synthetic lambda$castingIdentity$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "i"    # Ljava/lang/Object;

    .line 138
    return-object p0
.end method

.method static synthetic lambda$counting$9(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2
    .param p0, "e"    # Ljava/lang/Object;

    .line 413
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingBy$44(Lj$/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "downstreamSupplier"    # Lj$/util/function/Supplier;
    .param p1, "k"    # Ljava/lang/Object;

    .line 908
    invoke-interface {p0}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingBy$45(Lj$/util/function/Function;Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2
    .param p0, "classifier"    # Lj$/util/function/Function;
    .param p1, "downstreamSupplier"    # Lj$/util/function/Supplier;
    .param p2, "downstreamAccumulator"    # Lj$/util/function/BiConsumer;
    .param p3, "m"    # Ljava/util/Map;
    .param p4, "t"    # Ljava/lang/Object;

    .line 907
    invoke-interface {p0, p4}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 908
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda4;-><init>(Lj$/util/function/Supplier;)V

    invoke-static {p3, v0, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 909
    .local v1, "container":Ljava/lang/Object;, "TA;"
    invoke-interface {p2, v1, p4}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 910
    return-void
.end method

.method static synthetic lambda$groupingBy$46(Lj$/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "downstreamFinisher"    # Lj$/util/function/Function;
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 922
    invoke-interface {p0, p2}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingBy$47(Lj$/util/function/Function;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "downstreamFinisher"    # Lj$/util/function/Function;
    .param p1, "intermediate"    # Ljava/util/Map;

    .line 922
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda78;

    invoke-direct {v0, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda78;-><init>(Lj$/util/function/Function;)V

    invoke-static {p1, v0}, Lj$/util/Map$-EL;->replaceAll(Ljava/util/Map;Lj$/util/function/BiFunction;)V

    .line 924
    move-object v0, p1

    .line 925
    .local v0, "castResult":Ljava/util/Map;, "TM;"
    return-object v0
.end method

.method static synthetic lambda$groupingByConcurrent$48(Lj$/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "downstreamSupplier"    # Lj$/util/function/Supplier;
    .param p1, "k"    # Ljava/lang/Object;

    .line 1064
    invoke-interface {p0}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingByConcurrent$49(Lj$/util/function/Function;Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 2
    .param p0, "classifier"    # Lj$/util/function/Function;
    .param p1, "downstreamSupplier"    # Lj$/util/function/Supplier;
    .param p2, "downstreamAccumulator"    # Lj$/util/function/BiConsumer;
    .param p3, "m"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "t"    # Ljava/lang/Object;

    .line 1063
    invoke-interface {p0, p4}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1064
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda61;

    invoke-direct {v1, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda61;-><init>(Lj$/util/function/Supplier;)V

    invoke-static {p3, v0, v1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 1065
    .local v1, "resultContainer":Ljava/lang/Object;, "TA;"
    invoke-interface {p2, v1, p4}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1066
    return-void
.end method

.method static synthetic lambda$groupingByConcurrent$50(Lj$/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "downstreamSupplier"    # Lj$/util/function/Supplier;
    .param p1, "k"    # Ljava/lang/Object;

    .line 1071
    invoke-interface {p0}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingByConcurrent$51(Lj$/util/function/Function;Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 3
    .param p0, "classifier"    # Lj$/util/function/Function;
    .param p1, "downstreamSupplier"    # Lj$/util/function/Supplier;
    .param p2, "downstreamAccumulator"    # Lj$/util/function/BiConsumer;
    .param p3, "m"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "t"    # Ljava/lang/Object;

    .line 1070
    invoke-interface {p0, p4}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1071
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda62;

    invoke-direct {v1, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda62;-><init>(Lj$/util/function/Supplier;)V

    invoke-static {p3, v0, v1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 1072
    .local v1, "resultContainer":Ljava/lang/Object;, "TA;"
    monitor-enter v1

    .line 1073
    :try_start_0
    invoke-interface {p2, v1, p4}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1074
    monitor-exit v1

    .line 1075
    return-void

    .line 1074
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static synthetic lambda$groupingByConcurrent$52(Lj$/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "downstreamFinisher"    # Lj$/util/function/Function;
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 1085
    invoke-interface {p0, p2}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingByConcurrent$53(Lj$/util/function/Function;Ljava/util/concurrent/ConcurrentMap;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "downstreamFinisher"    # Lj$/util/function/Function;
    .param p1, "intermediate"    # Ljava/util/concurrent/ConcurrentMap;

    .line 1085
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda15;-><init>(Lj$/util/function/Function;)V

    invoke-static {p1, v0}, Lj$/util/concurrent/ConcurrentMap$-EL;->replaceAll(Ljava/util/concurrent/ConcurrentMap;Lj$/util/function/BiFunction;)V

    .line 1087
    move-object v0, p1

    .line 1088
    .local v0, "castResult":Ljava/util/concurrent/ConcurrentMap;, "TM;"
    return-object v0
.end method

.method static synthetic lambda$joining$5(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0
    .param p0, "r1"    # Ljava/lang/StringBuilder;
    .param p1, "r2"    # Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic lambda$joining$6(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lj$/util/StringJoiner;
    .locals 1
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "suffix"    # Ljava/lang/CharSequence;

    .line 299
    new-instance v0, Lj$/util/StringJoiner;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic lambda$mapMerger$7(Lj$/util/function/BinaryOperator;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .param p0, "mergeFunction"    # Lj$/util/function/BinaryOperator;
    .param p1, "m1"    # Ljava/util/Map;
    .param p2, "m2"    # Ljava/util/Map;

    .line 319
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 320
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3, p0}, Lj$/util/Map$-EL;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Lj$/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    .line 321
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-object p1
.end method

.method static synthetic lambda$mapping$8(Lj$/util/function/BiConsumer;Lj$/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "downstreamAccumulator"    # Lj$/util/function/BiConsumer;
    .param p1, "mapper"    # Lj$/util/function/Function;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 355
    invoke-interface {p1, p3}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$partitioningBy$54(Lj$/util/function/BiConsumer;Lj$/util/function/Predicate;Lj$/util/stream/Collectors$Partition;Ljava/lang/Object;)V
    .locals 1
    .param p0, "downstreamAccumulator"    # Lj$/util/function/BiConsumer;
    .param p1, "predicate"    # Lj$/util/function/Predicate;
    .param p2, "result"    # Lj$/util/stream/Collectors$Partition;
    .param p3, "t"    # Ljava/lang/Object;

    .line 1139
    invoke-interface {p1, p3}, Lj$/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lj$/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lj$/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    :goto_0
    invoke-interface {p0, v0, p3}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$partitioningBy$55(Lj$/util/function/BinaryOperator;Lj$/util/stream/Collectors$Partition;Lj$/util/stream/Collectors$Partition;)Lj$/util/stream/Collectors$Partition;
    .locals 4
    .param p0, "op"    # Lj$/util/function/BinaryOperator;
    .param p1, "left"    # Lj$/util/stream/Collectors$Partition;
    .param p2, "right"    # Lj$/util/stream/Collectors$Partition;

    .line 1142
    new-instance v0, Lj$/util/stream/Collectors$Partition;

    iget-object v1, p1, Lj$/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    iget-object v2, p2, Lj$/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {p0, v1, v2}, Lj$/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lj$/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    iget-object v3, p2, Lj$/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    .line 1143
    invoke-interface {p0, v2, v3}, Lj$/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj$/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1142
    return-object v0
.end method

.method static synthetic lambda$partitioningBy$56(Lj$/util/stream/Collector;)Lj$/util/stream/Collectors$Partition;
    .locals 3
    .param p0, "downstream"    # Lj$/util/stream/Collector;

    .line 1145
    new-instance v0, Lj$/util/stream/Collectors$Partition;

    invoke-interface {p0}, Lj$/util/stream/Collector;->supplier()Lj$/util/function/Supplier;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1146
    invoke-interface {p0}, Lj$/util/stream/Collector;->supplier()Lj$/util/function/Supplier;

    move-result-object v2

    invoke-interface {v2}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj$/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1145
    return-object v0
.end method

.method static synthetic lambda$partitioningBy$57(Lj$/util/stream/Collector;Lj$/util/stream/Collectors$Partition;)Ljava/util/Map;
    .locals 4
    .param p0, "downstream"    # Lj$/util/stream/Collector;
    .param p1, "par"    # Lj$/util/stream/Collectors$Partition;

    .line 1152
    new-instance v0, Lj$/util/stream/Collectors$Partition;

    invoke-interface {p0}, Lj$/util/stream/Collector;->finisher()Lj$/util/function/Function;

    move-result-object v1

    iget-object v2, p1, Lj$/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1153
    invoke-interface {p0}, Lj$/util/stream/Collector;->finisher()Lj$/util/function/Function;

    move-result-object v2

    iget-object v3, p1, Lj$/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj$/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1152
    return-object v0
.end method

.method static synthetic lambda$reducing$34(Lj$/util/function/BinaryOperator;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "op"    # Lj$/util/function/BinaryOperator;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Object;

    .line 660
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-interface {p0, v1, p2}, Lj$/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    return-void
.end method

.method static synthetic lambda$reducing$35(Lj$/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "op"    # Lj$/util/function/BinaryOperator;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "b"    # [Ljava/lang/Object;

    .line 661
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-interface {p0, v1, v2}, Lj$/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    return-object p1
.end method

.method static synthetic lambda$reducing$36([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;

    .line 662
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic lambda$reducing$38(Lj$/util/function/BinaryOperator;)Lj$/util/stream/Collectors$1OptionalBox;
    .locals 1
    .param p0, "op"    # Lj$/util/function/BinaryOperator;

    .line 716
    new-instance v0, Lj$/util/stream/Collectors$1OptionalBox;

    invoke-direct {v0, p0}, Lj$/util/stream/Collectors$1OptionalBox;-><init>(Lj$/util/function/BinaryOperator;)V

    return-object v0
.end method

.method static synthetic lambda$reducing$39(Lj$/util/stream/Collectors$1OptionalBox;Lj$/util/stream/Collectors$1OptionalBox;)Lj$/util/stream/Collectors$1OptionalBox;
    .locals 1
    .param p0, "a"    # Lj$/util/stream/Collectors$1OptionalBox;
    .param p1, "b"    # Lj$/util/stream/Collectors$1OptionalBox;

    .line 717
    iget-boolean v0, p1, Lj$/util/stream/Collectors$1OptionalBox;->present:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lj$/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lj$/util/stream/Collectors$1OptionalBox;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method static synthetic lambda$reducing$40(Lj$/util/stream/Collectors$1OptionalBox;)Lj$/util/Optional;
    .locals 1
    .param p0, "a"    # Lj$/util/stream/Collectors$1OptionalBox;

    .line 718
    iget-object v0, p0, Lj$/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$reducing$41(Lj$/util/function/BinaryOperator;Lj$/util/function/Function;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "op"    # Lj$/util/function/BinaryOperator;
    .param p1, "mapper"    # Lj$/util/function/Function;
    .param p2, "a"    # [Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 761
    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-interface {p1, p3}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lj$/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    return-void
.end method

.method static synthetic lambda$reducing$42(Lj$/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "op"    # Lj$/util/function/BinaryOperator;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "b"    # [Ljava/lang/Object;

    .line 762
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-interface {p0, v1, v2}, Lj$/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    return-object p1
.end method

.method static synthetic lambda$reducing$43([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;

    .line 763
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic lambda$summarizingDouble$64(Lj$/util/function/ToDoubleFunction;Lj$/util/DoubleSummaryStatistics;Ljava/lang/Object;)V
    .locals 2
    .param p0, "mapper"    # Lj$/util/function/ToDoubleFunction;
    .param p1, "r"    # Lj$/util/DoubleSummaryStatistics;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1533
    invoke-interface {p0, p2}, Lj$/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lj$/util/DoubleSummaryStatistics;->accept(D)V

    return-void
.end method

.method static synthetic lambda$summarizingDouble$65(Lj$/util/DoubleSummaryStatistics;Lj$/util/DoubleSummaryStatistics;)Lj$/util/DoubleSummaryStatistics;
    .locals 0
    .param p0, "l"    # Lj$/util/DoubleSummaryStatistics;
    .param p1, "r"    # Lj$/util/DoubleSummaryStatistics;

    .line 1534
    invoke-virtual {p0, p1}, Lj$/util/DoubleSummaryStatistics;->combine(Lj$/util/DoubleSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$summarizingInt$60(Lj$/util/function/ToIntFunction;Lj$/util/IntSummaryStatistics;Ljava/lang/Object;)V
    .locals 1
    .param p0, "mapper"    # Lj$/util/function/ToIntFunction;
    .param p1, "r"    # Lj$/util/IntSummaryStatistics;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1493
    invoke-interface {p0, p2}, Lj$/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lj$/util/IntSummaryStatistics;->accept(I)V

    return-void
.end method

.method static synthetic lambda$summarizingInt$61(Lj$/util/IntSummaryStatistics;Lj$/util/IntSummaryStatistics;)Lj$/util/IntSummaryStatistics;
    .locals 0
    .param p0, "l"    # Lj$/util/IntSummaryStatistics;
    .param p1, "r"    # Lj$/util/IntSummaryStatistics;

    .line 1494
    invoke-virtual {p0, p1}, Lj$/util/IntSummaryStatistics;->combine(Lj$/util/IntSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$summarizingLong$62(Lj$/util/function/ToLongFunction;Lj$/util/LongSummaryStatistics;Ljava/lang/Object;)V
    .locals 2
    .param p0, "mapper"    # Lj$/util/function/ToLongFunction;
    .param p1, "r"    # Lj$/util/LongSummaryStatistics;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1513
    invoke-interface {p0, p2}, Lj$/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lj$/util/LongSummaryStatistics;->accept(J)V

    return-void
.end method

.method static synthetic lambda$summarizingLong$63(Lj$/util/LongSummaryStatistics;Lj$/util/LongSummaryStatistics;)Lj$/util/LongSummaryStatistics;
    .locals 0
    .param p0, "l"    # Lj$/util/LongSummaryStatistics;
    .param p1, "r"    # Lj$/util/LongSummaryStatistics;

    .line 1514
    invoke-virtual {p0, p1}, Lj$/util/LongSummaryStatistics;->combine(Lj$/util/LongSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$summingDouble$18()[D
    .locals 1

    .line 517
    const/4 v0, 0x3

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$summingDouble$19(Lj$/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .locals 5
    .param p0, "mapper"    # Lj$/util/function/ToDoubleFunction;
    .param p1, "a"    # [D
    .param p2, "t"    # Ljava/lang/Object;

    .line 518
    invoke-interface {p0, p2}, Lj$/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 519
    const/4 v0, 0x2

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Lj$/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v3

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic lambda$summingDouble$20([D[D)[D
    .locals 5
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 520
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 521
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 522
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$summingDouble$21([D)Ljava/lang/Double;
    .locals 2
    .param p0, "a"    # [D

    .line 523
    invoke-static {p0}, Lj$/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$summingInt$10()[I
    .locals 1

    .line 466
    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0
.end method

.method static synthetic lambda$summingInt$11(Lj$/util/function/ToIntFunction;[ILjava/lang/Object;)V
    .locals 3
    .param p0, "mapper"    # Lj$/util/function/ToIntFunction;
    .param p1, "a"    # [I
    .param p2, "t"    # Ljava/lang/Object;

    .line 467
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-interface {p0, p2}, Lj$/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

.method static synthetic lambda$summingInt$12([I[I)[I
    .locals 3
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 468
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$summingInt$13([I)Ljava/lang/Integer;
    .locals 1
    .param p0, "a"    # [I

    .line 469
    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$summingLong$14()[J
    .locals 1

    .line 484
    const/4 v0, 0x1

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$summingLong$15(Lj$/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .locals 5
    .param p0, "mapper"    # Lj$/util/function/ToLongFunction;
    .param p1, "a"    # [J
    .param p2, "t"    # Ljava/lang/Object;

    .line 485
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Lj$/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic lambda$summingLong$16([J[J)[J
    .locals 5
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 486
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$summingLong$17([J)Ljava/lang/Long;
    .locals 2
    .param p0, "a"    # [J

    .line 487
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$throwingMerger$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "u"    # Ljava/lang/Object;
    .param p1, "v"    # Ljava/lang/Object;

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Duplicate key %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$toCollection$2(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .param p0, "r1"    # Ljava/util/Collection;
    .param p1, "r2"    # Ljava/util/Collection;

    .line 214
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toConcurrentMap$59(Lj$/util/function/Function;Lj$/util/function/Function;Lj$/util/function/BinaryOperator;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyMapper"    # Lj$/util/function/Function;
    .param p1, "valueMapper"    # Lj$/util/function/Function;
    .param p2, "mergeFunction"    # Lj$/util/function/BinaryOperator;
    .param p3, "map"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "element"    # Ljava/lang/Object;

    .line 1472
    invoke-interface {p0, p4}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1473
    invoke-interface {p1, p4}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1472
    invoke-static {p3, v0, v1, p2}, Lj$/util/concurrent/ConcurrentMap$-EL;->merge(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;Lj$/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$toList$3(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "left"    # Ljava/util/List;
    .param p1, "right"    # Ljava/util/List;

    .line 231
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toMap$58(Lj$/util/function/Function;Lj$/util/function/Function;Lj$/util/function/BinaryOperator;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyMapper"    # Lj$/util/function/Function;
    .param p1, "valueMapper"    # Lj$/util/function/Function;
    .param p2, "mergeFunction"    # Lj$/util/function/BinaryOperator;
    .param p3, "map"    # Ljava/util/Map;
    .param p4, "element"    # Ljava/lang/Object;

    .line 1320
    invoke-interface {p0, p4}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1321
    invoke-interface {p1, p4}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1320
    invoke-static {p3, v0, v1, p2}, Lj$/util/Map$-EL;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Lj$/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$toSet$4(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "left"    # Ljava/util/Set;
    .param p1, "right"    # Ljava/util/Set;

    .line 252
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method private static mapMerger(Lj$/util/function/BinaryOperator;)Lj$/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>(",
            "Lj$/util/function/BinaryOperator<",
            "TV;>;)",
            "Lj$/util/function/BinaryOperator<",
            "TM;>;"
        }
    .end annotation

    .line 318
    .local p0, "mergeFunction":Lj$/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda79;

    invoke-direct {v0, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda79;-><init>(Lj$/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public static mapping(Lj$/util/function/Function;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/Function<",
            "-TT;+TU;>;",
            "Lj$/util/stream/Collector<",
            "-TU;TA;TR;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 353
    .local p0, "mapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p1, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TU;TA;TR;>;"
    invoke-interface {p1}, Lj$/util/stream/Collector;->accumulator()Lj$/util/function/BiConsumer;

    move-result-object v0

    .line 354
    .local v0, "downstreamAccumulator":Lj$/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TU;>;"
    new-instance v7, Lj$/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Lj$/util/stream/Collector;->supplier()Lj$/util/function/Supplier;

    move-result-object v2

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda33;

    invoke-direct {v3, v0, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda33;-><init>(Lj$/util/function/BiConsumer;Lj$/util/function/Function;)V

    .line 356
    invoke-interface {p1}, Lj$/util/stream/Collector;->combiner()Lj$/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Lj$/util/stream/Collector;->finisher()Lj$/util/function/Function;

    move-result-object v5

    .line 357
    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    .line 354
    return-object v7
.end method

.method public static maxBy(Ljava/util/Comparator;)Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lj$/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 451
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Lj$/util/function/BinaryOperator$-CC;->maxBy(Ljava/util/Comparator;)Lj$/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Collectors;->reducing(Lj$/util/function/BinaryOperator;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static minBy(Ljava/util/Comparator;)Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lj$/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 432
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Lj$/util/function/BinaryOperator$-CC;->minBy(Ljava/util/Comparator;)Lj$/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Collectors;->reducing(Lj$/util/function/BinaryOperator;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static partitioningBy(Lj$/util/function/Predicate;)Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/Predicate<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1110
    .local p0, "predicate":Lj$/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Lj$/util/stream/Collectors;->partitioningBy(Lj$/util/function/Predicate;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static partitioningBy(Lj$/util/function/Predicate;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/Predicate<",
            "-TT;>;",
            "Lj$/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "TD;>;>;"
        }
    .end annotation

    .line 1137
    .local p0, "predicate":Lj$/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p1, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    invoke-interface {p1}, Lj$/util/stream/Collector;->accumulator()Lj$/util/function/BiConsumer;

    move-result-object v0

    .line 1138
    .local v0, "downstreamAccumulator":Lj$/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda34;

    invoke-direct {v1, v0, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda34;-><init>(Lj$/util/function/BiConsumer;Lj$/util/function/Predicate;)V

    .line 1140
    .local v1, "accumulator":Lj$/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/stream/Collectors$Partition<TA;>;TT;>;"
    invoke-interface {p1}, Lj$/util/stream/Collector;->combiner()Lj$/util/function/BinaryOperator;

    move-result-object v8

    .line 1141
    .local v8, "op":Lj$/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda35;

    invoke-direct {v2, v8}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda35;-><init>(Lj$/util/function/BinaryOperator;)V

    move-object v9, v2

    .line 1144
    .local v9, "merger":Lj$/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/util/stream/Collectors$Partition<TA;>;>;"
    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda36;

    invoke-direct {v2, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda36;-><init>(Lj$/util/stream/Collector;)V

    move-object v10, v2

    .line 1147
    .local v10, "supplier":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/stream/Collectors$Partition<TA;>;>;"
    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1148
    new-instance v2, Lj$/util/stream/Collectors$CollectorImpl;

    sget-object v3, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v2, v10, v1, v9, v3}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v2

    .line 1151
    :cond_0
    new-instance v6, Lj$/util/stream/Collectors$$ExternalSyntheticLambda37;

    invoke-direct {v6, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda37;-><init>(Lj$/util/stream/Collector;)V

    .line 1154
    .local v6, "finisher":Lj$/util/function/Function;, "Ljava/util/function/Function<Ljava/util/stream/Collectors$Partition<TA;>;Ljava/util/Map<Ljava/lang/Boolean;TD;>;>;"
    new-instance v11, Lj$/util/stream/Collectors$CollectorImpl;

    sget-object v7, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v2, v11

    move-object v3, v10

    move-object v4, v1

    move-object v5, v9

    invoke-direct/range {v2 .. v7}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    return-object v11
.end method

.method public static reducing(Lj$/util/function/BinaryOperator;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/BinaryOperator<",
            "TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lj$/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 715
    .local p0, "op":Lj$/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda70;

    invoke-direct {v1, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda70;-><init>(Lj$/util/function/BinaryOperator;)V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda71;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda71;-><init>()V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda72;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda72;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda73;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda73;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static reducing(Ljava/lang/Object;Lj$/util/function/BinaryOperator;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lj$/util/function/BinaryOperator<",
            "TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TT;>;"
        }
    .end annotation

    .line 658
    .local p0, "identity":Ljava/lang/Object;, "TT;"
    .local p1, "op":Lj$/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    .line 659
    invoke-static {p0}, Lj$/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Lj$/util/function/Supplier;

    move-result-object v1

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda38;

    invoke-direct {v2, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda38;-><init>(Lj$/util/function/BinaryOperator;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda39;

    invoke-direct {v3, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda39;-><init>(Lj$/util/function/BinaryOperator;)V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda40;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda40;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    .line 658
    return-object v6
.end method

.method public static reducing(Ljava/lang/Object;Lj$/util/function/Function;Lj$/util/function/BinaryOperator;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lj$/util/function/Function<",
            "-TT;+TU;>;",
            "Lj$/util/function/BinaryOperator<",
            "TU;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TU;>;"
        }
    .end annotation

    .line 759
    .local p0, "identity":Ljava/lang/Object;, "TU;"
    .local p1, "mapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "op":Lj$/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    .line 760
    invoke-static {p0}, Lj$/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Lj$/util/function/Supplier;

    move-result-object v1

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda1;-><init>(Lj$/util/function/BinaryOperator;Lj$/util/function/Function;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda2;-><init>(Lj$/util/function/BinaryOperator;)V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda3;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    .line 759
    return-object v6
.end method

.method static sumWithCompensation([DD)[D
    .locals 10
    .param p0, "intermediateSum"    # [D
    .param p1, "value"    # D

    .line 539
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    sub-double v1, p1, v1

    .line 540
    .local v1, "tmp":D
    const/4 v3, 0x0

    aget-wide v4, p0, v3

    .line 541
    .local v4, "sum":D
    add-double v6, v4, v1

    .line 542
    .local v6, "velvel":D
    sub-double v8, v6, v4

    sub-double/2addr v8, v1

    aput-wide v8, p0, v0

    .line 543
    aput-wide v6, p0, v3

    .line 544
    return-object p0
.end method

.method public static summarizingDouble(Lj$/util/function/ToDoubleFunction;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lj$/util/DoubleSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1531
    .local p0, "mapper":Lj$/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    new-instance v0, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda12;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda13;-><init>(Lj$/util/function/ToDoubleFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda14;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda14;-><init>()V

    sget-object v4, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summarizingInt(Lj$/util/function/ToIntFunction;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/ToIntFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lj$/util/IntSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1491
    .local p0, "mapper":Lj$/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    new-instance v0, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda22;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda23;-><init>(Lj$/util/function/ToIntFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda24;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda24;-><init>()V

    sget-object v4, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summarizingLong(Lj$/util/function/ToLongFunction;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/ToLongFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lj$/util/LongSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1511
    .local p0, "mapper":Lj$/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    new-instance v0, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda47;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda47;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda48;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda48;-><init>(Lj$/util/function/ToLongFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda49;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda49;-><init>()V

    sget-object v4, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summingDouble(Lj$/util/function/ToDoubleFunction;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 516
    .local p0, "mapper":Lj$/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda41;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda41;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda42;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda42;-><init>(Lj$/util/function/ToDoubleFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda43;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda43;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda44;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda44;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static summingInt(Lj$/util/function/ToIntFunction;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/ToIntFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 465
    .local p0, "mapper":Lj$/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda8;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda9;-><init>(Lj$/util/function/ToIntFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda10;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda11;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda11;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static summingLong(Lj$/util/function/ToLongFunction;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/ToLongFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 483
    .local p0, "mapper":Lj$/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda66;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda66;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda67;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda67;-><init>(Lj$/util/function/ToLongFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda68;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda68;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda69;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda69;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method private static throwingMerger()Lj$/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation

    .line 133
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda20;-><init>()V

    return-object v0
.end method

.method public static toCollection(Lj$/util/function/Supplier;)Lj$/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TT;>;>(",
            "Lj$/util/function/Supplier<",
            "TC;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TC;>;"
        }
    .end annotation

    .line 213
    .local p0, "collectionFactory":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<TC;>;"
    new-instance v0, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda17;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda18;-><init>()V

    sget-object v3, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, v3}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toConcurrentMap(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/Function<",
            "-TT;+TK;>;",
            "Lj$/util/function/Function<",
            "-TT;+TU;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1375
    .local p0, "keyMapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {}, Lj$/util/stream/Collectors;->throwingMerger()Lj$/util/function/BinaryOperator;

    move-result-object v0

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lj$/util/stream/Collectors;->toConcurrentMap(Lj$/util/function/Function;Lj$/util/function/Function;Lj$/util/function/BinaryOperator;Lj$/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toConcurrentMap(Lj$/util/function/Function;Lj$/util/function/Function;Lj$/util/function/BinaryOperator;)Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/Function<",
            "-TT;+TK;>;",
            "Lj$/util/function/Function<",
            "-TT;+TU;>;",
            "Lj$/util/function/BinaryOperator<",
            "TU;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1429
    .local p0, "keyMapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Lj$/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lj$/util/stream/Collectors;->toConcurrentMap(Lj$/util/function/Function;Lj$/util/function/Function;Lj$/util/function/BinaryOperator;Lj$/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toConcurrentMap(Lj$/util/function/Function;Lj$/util/function/Function;Lj$/util/function/BinaryOperator;Lj$/util/function/Supplier;)Lj$/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>(",
            "Lj$/util/function/Function<",
            "-TT;+TK;>;",
            "Lj$/util/function/Function<",
            "-TT;+TU;>;",
            "Lj$/util/function/BinaryOperator<",
            "TU;>;",
            "Lj$/util/function/Supplier<",
            "TM;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1471
    .local p0, "keyMapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Lj$/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    .local p3, "mapSupplier":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda19;-><init>(Lj$/util/function/Function;Lj$/util/function/Function;Lj$/util/function/BinaryOperator;)V

    .line 1474
    .local v0, "accumulator":Lj$/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TM;TT;>;"
    new-instance v1, Lj$/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Lj$/util/stream/Collectors;->mapMerger(Lj$/util/function/BinaryOperator;)Lj$/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Lj$/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static toList()Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 230
    new-instance v0, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda50;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda50;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda51;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda51;-><init>()V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda52;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda52;-><init>()V

    sget-object v4, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toMap(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/Function<",
            "-TT;+TK;>;",
            "Lj$/util/function/Function<",
            "-TT;+TU;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1212
    .local p0, "keyMapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {}, Lj$/util/stream/Collectors;->throwingMerger()Lj$/util/function/BinaryOperator;

    move-result-object v0

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda65;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda65;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lj$/util/stream/Collectors;->toMap(Lj$/util/function/Function;Lj$/util/function/Function;Lj$/util/function/BinaryOperator;Lj$/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Lj$/util/function/Function;Lj$/util/function/Function;Lj$/util/function/BinaryOperator;)Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/Function<",
            "-TT;+TK;>;",
            "Lj$/util/function/Function<",
            "-TT;+TU;>;",
            "Lj$/util/function/BinaryOperator<",
            "TU;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1271
    .local p0, "keyMapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Lj$/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda65;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lj$/util/stream/Collectors;->toMap(Lj$/util/function/Function;Lj$/util/function/Function;Lj$/util/function/BinaryOperator;Lj$/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Lj$/util/function/Function;Lj$/util/function/Function;Lj$/util/function/BinaryOperator;Lj$/util/function/Supplier;)Lj$/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TU;>;>(",
            "Lj$/util/function/Function<",
            "-TT;+TK;>;",
            "Lj$/util/function/Function<",
            "-TT;+TU;>;",
            "Lj$/util/function/BinaryOperator<",
            "TU;>;",
            "Lj$/util/function/Supplier<",
            "TM;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1319
    .local p0, "keyMapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Lj$/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    .local p3, "mapSupplier":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda21;-><init>(Lj$/util/function/Function;Lj$/util/function/Function;Lj$/util/function/BinaryOperator;)V

    .line 1322
    .local v0, "accumulator":Lj$/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TM;TT;>;"
    new-instance v1, Lj$/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Lj$/util/stream/Collectors;->mapMerger(Lj$/util/function/BinaryOperator;)Lj$/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static toSet()Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 251
    new-instance v0, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda58;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda58;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda59;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda59;-><init>()V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda60;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda60;-><init>()V

    sget-object v4, Lj$/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

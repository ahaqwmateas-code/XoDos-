.class public final Lcom/google/common/collect/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;,
        Lcom/google/common/collect/Streams$LongFunctionWithIndex;,
        Lcom/google/common/collect/Streams$IntFunctionWithIndex;,
        Lcom/google/common/collect/Streams$MapWithIndexSpliterator;,
        Lcom/google/common/collect/Streams$FunctionWithIndex;,
        Lcom/google/common/collect/Streams$TemporaryPair;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs concat([Lj$/util/stream/DoubleStream;)Lj$/util/stream/DoubleStream;
    .locals 2
    .param p0, "streams"    # [Lj$/util/stream/DoubleStream;

    .line 211
    invoke-static {p0}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->flatMapToDouble(Lj$/util/function/Function;)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Lj$/util/stream/IntStream;)Lj$/util/stream/IntStream;
    .locals 2
    .param p0, "streams"    # [Lj$/util/stream/IntStream;

    .line 183
    invoke-static {p0}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->flatMapToInt(Lj$/util/function/Function;)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Lj$/util/stream/LongStream;)Lj$/util/stream/LongStream;
    .locals 2
    .param p0, "streams"    # [Lj$/util/stream/LongStream;

    .line 197
    invoke-static {p0}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->flatMapToLong(Lj$/util/function/Function;)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Lj$/util/stream/Stream;)Lj$/util/stream/Stream;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lj$/util/stream/Stream<",
            "+TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 145
    .local p0, "streams":[Lj$/util/stream/Stream;, "[Ljava/util/stream/Stream<+TT;>;"
    const/4 v0, 0x0

    .line 146
    .local v0, "isParallel":Z
    const/16 v1, 0x150

    .line 147
    .local v1, "characteristics":I
    const-wide/16 v2, 0x0

    .line 148
    .local v2, "estimatedSize":J
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v5, p0

    invoke-direct {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 150
    .local v4, "splitrsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/Spliterator<+TT;>;>;"
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p0, v6

    .line 151
    .local v7, "stream":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TT;>;"
    invoke-interface {v7}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v8

    or-int/2addr v0, v8

    .line 152
    invoke-interface {v7}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v8

    .line 153
    .local v8, "splitr":Lj$/util/Spliterator;, "Ljava/util/Spliterator<+TT;>;"
    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 154
    invoke-interface {v8}, Lj$/util/Spliterator;->characteristics()I

    move-result v9

    and-int/2addr v1, v9

    .line 155
    invoke-interface {v8}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v2

    .line 150
    .end local v7    # "stream":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TT;>;"
    .end local v8    # "splitr":Lj$/util/Spliterator;, "Ljava/util/Spliterator<+TT;>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 157
    :cond_0
    nop

    .line 159
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->spliterator()Lj$/util/Spliterator;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda5;-><init>()V

    .line 158
    invoke-static {v5, v6, v1, v2, v3}, Lcom/google/common/collect/CollectSpliterators;->flatMap(Lj$/util/Spliterator;Lj$/util/function/Function;IJ)Lj$/util/Spliterator;

    move-result-object v5

    .line 157
    invoke-static {v5, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda6;-><init>([Lj$/util/stream/Stream;)V

    .line 164
    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v5

    check-cast v5, Lj$/util/stream/Stream;

    .line 157
    return-object v5
.end method

.method public static findLast(Lj$/util/stream/Stream;)Lj$/util/Optional;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Stream<",
            "TT;>;)",
            "Lj$/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 766
    .local p0, "stream":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    new-instance v0, Lcom/google/common/collect/Streams$1OptionalState;

    invoke-direct {v0}, Lcom/google/common/collect/Streams$1OptionalState;-><init>()V

    .line 768
    .local v0, "state":Lcom/google/common/collect/Streams$1OptionalState;
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 769
    .local v1, "splits":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/util/Spliterator<TT;>;>;"
    invoke-interface {p0}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 771
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 772
    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/Spliterator;

    .line 774
    .local v2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-interface {v2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 775
    goto :goto_0

    .line 780
    :cond_1
    const/16 v3, 0x4000

    invoke-interface {v2, v3}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 783
    :goto_1
    invoke-interface {v2}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v3

    .line 784
    .local v3, "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_2

    .line 785
    goto :goto_2

    .line 786
    :cond_2
    invoke-interface {v2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_3

    .line 787
    move-object v2, v3

    .line 788
    goto :goto_2

    .line 790
    .end local v3    # "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_3
    goto :goto_1

    .line 793
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda10;

    invoke-direct {v3, v0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda10;-><init>(Lcom/google/common/collect/Streams$1OptionalState;)V

    invoke-interface {v2, v3}, Lj$/util/Spliterator;->forEachRemaining(Lj$/util/function/Consumer;)V

    .line 794
    invoke-virtual {v0}, Lcom/google/common/collect/Streams$1OptionalState;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v3

    return-object v3

    .line 797
    :cond_5
    invoke-interface {v2}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v3

    .line 798
    .restart local v3    # "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    if-eqz v3, :cond_7

    invoke-interface {v3}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_6

    goto :goto_3

    .line 807
    :cond_6
    invoke-interface {v1, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 808
    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 809
    .end local v2    # "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .end local v3    # "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    goto :goto_0

    .line 800
    .restart local v2    # "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .restart local v3    # "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda10;-><init>(Lcom/google/common/collect/Streams$1OptionalState;)V

    invoke-interface {v2, v4}, Lj$/util/Spliterator;->forEachRemaining(Lj$/util/function/Consumer;)V

    .line 801
    iget-boolean v4, v0, Lcom/google/common/collect/Streams$1OptionalState;->set:Z

    if-eqz v4, :cond_0

    .line 802
    invoke-virtual {v0}, Lcom/google/common/collect/Streams$1OptionalState;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v4

    return-object v4

    .line 810
    .end local v2    # "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .end local v3    # "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_8
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v2

    return-object v2
.end method

.method public static findLast(Lj$/util/stream/DoubleStream;)Lj$/util/OptionalDouble;
    .locals 3
    .param p0, "stream"    # Lj$/util/stream/DoubleStream;

    .line 863
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Streams;->findLast(Lj$/util/stream/Stream;)Lj$/util/Optional;

    move-result-object v0

    .line 864
    .local v0, "boxedLast":Lj$/util/Optional;, "Ljava/util/Optional<Ljava/lang/Double;>;"
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lj$/util/OptionalDouble;->of(D)Lj$/util/OptionalDouble;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/OptionalDouble;->empty()Lj$/util/OptionalDouble;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static findLast(Lj$/util/stream/IntStream;)Lj$/util/OptionalInt;
    .locals 2
    .param p0, "stream"    # Lj$/util/stream/IntStream;

    .line 827
    invoke-interface {p0}, Lj$/util/stream/IntStream;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Streams;->findLast(Lj$/util/stream/Stream;)Lj$/util/Optional;

    move-result-object v0

    .line 828
    .local v0, "boxedLast":Lj$/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lj$/util/OptionalInt;->of(I)Lj$/util/OptionalInt;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/OptionalInt;->empty()Lj$/util/OptionalInt;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static findLast(Lj$/util/stream/LongStream;)Lj$/util/OptionalLong;
    .locals 3
    .param p0, "stream"    # Lj$/util/stream/LongStream;

    .line 845
    invoke-interface {p0}, Lj$/util/stream/LongStream;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Streams;->findLast(Lj$/util/stream/Stream;)Lj$/util/Optional;

    move-result-object v0

    .line 846
    .local v0, "boxedLast":Lj$/util/Optional;, "Ljava/util/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lj$/util/OptionalLong;->of(J)Lj$/util/OptionalLong;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/OptionalLong;->empty()Lj$/util/OptionalLong;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static forEachPair(Lj$/util/stream/Stream;Lj$/util/stream/Stream;Lj$/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Stream<",
            "TA;>;",
            "Lj$/util/stream/Stream<",
            "TB;>;",
            "Lj$/util/function/BiConsumer<",
            "-TA;-TB;>;)V"
        }
    .end annotation

    .line 302
    .local p0, "streamA":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TA;>;"
    .local p1, "streamB":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TB;>;"
    .local p2, "consumer":Lj$/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TA;-TB;>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-interface {p0}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 307
    :cond_0
    invoke-interface {p0}, Lj$/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 308
    .local v0, "iterA":Ljava/util/Iterator;, "Ljava/util/Iterator<TA;>;"
    invoke-interface {p1}, Lj$/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 309
    .local v1, "iterB":Ljava/util/Iterator;, "Ljava/util/Iterator<TB;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    .end local v0    # "iterA":Ljava/util/Iterator;, "Ljava/util/Iterator<TA;>;"
    .end local v1    # "iterB":Ljava/util/Iterator;, "Ljava/util/Iterator<TB;>;"
    :cond_1
    :goto_1
    new-instance v0, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Streams;->zip(Lj$/util/stream/Stream;Lj$/util/stream/Stream;Lj$/util/function/BiFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda9;-><init>(Lj$/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Lj$/util/function/Consumer;)V

    .line 313
    :cond_2
    return-void
.end method

.method static synthetic lambda$concat$0(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 0
    .param p0, "splitr"    # Lj$/util/Spliterator;

    .line 160
    return-object p0
.end method

.method static synthetic lambda$concat$1([Lj$/util/stream/Stream;)V
    .locals 3
    .param p0, "streams"    # [Lj$/util/stream/Stream;

    .line 166
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 167
    .local v2, "stream":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TT;>;"
    invoke-interface {v2}, Lj$/util/stream/Stream;->close()V

    .line 166
    .end local v2    # "stream":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TT;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method static synthetic lambda$concat$2(Lj$/util/stream/IntStream;)Lj$/util/stream/IntStream;
    .locals 0
    .param p0, "stream"    # Lj$/util/stream/IntStream;

    .line 183
    return-object p0
.end method

.method static synthetic lambda$concat$3(Lj$/util/stream/LongStream;)Lj$/util/stream/LongStream;
    .locals 0
    .param p0, "stream"    # Lj$/util/stream/LongStream;

    .line 197
    return-object p0
.end method

.method static synthetic lambda$concat$4(Lj$/util/stream/DoubleStream;)Lj$/util/stream/DoubleStream;
    .locals 0
    .param p0, "stream"    # Lj$/util/stream/DoubleStream;

    .line 211
    return-object p0
.end method

.method static synthetic lambda$forEachPair$5(Lj$/util/function/BiConsumer;Lcom/google/common/collect/Streams$TemporaryPair;)V
    .locals 2
    .param p0, "consumer"    # Lj$/util/function/BiConsumer;
    .param p1, "pair"    # Lcom/google/common/collect/Streams$TemporaryPair;

    .line 305
    iget-object v0, p1, Lcom/google/common/collect/Streams$TemporaryPair;->a:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/common/collect/Streams$TemporaryPair;->b:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static mapWithIndex(Lj$/util/stream/DoubleStream;Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;)Lj$/util/stream/Stream;
    .locals 10
    .param p0, "stream"    # Lj$/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/DoubleStream;",
            "Lcom/google/common/collect/Streams$DoubleFunctionWithIndex<",
            "TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 588
    .local p1, "function":Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;, "Lcom/google/common/collect/Streams$DoubleFunctionWithIndex<TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->isParallel()Z

    move-result v0

    .line 591
    .local v0, "isParallel":Z
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v1

    .line 593
    .local v1, "fromSpliterator":Lj$/util/Spliterator$OfDouble;
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lj$/util/Spliterator$OfDouble;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 594
    invoke-static {v1}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfDouble;)Lj$/util/PrimitiveIterator$OfDouble;

    move-result-object v2

    .line 595
    .local v2, "fromIterator":Lj$/util/PrimitiveIterator$OfDouble;
    new-instance v9, Lcom/google/common/collect/Streams$5;

    .line 597
    invoke-interface {v1}, Lj$/util/Spliterator$OfDouble;->estimateSize()J

    move-result-wide v4

    .line 598
    invoke-interface {v1}, Lj$/util/Spliterator$OfDouble;->characteristics()I

    move-result v3

    and-int/lit8 v6, v3, 0x50

    move-object v3, v9

    move-object v7, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$5;-><init>(JILj$/util/PrimitiveIterator$OfDouble;Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;)V

    .line 595
    invoke-static {v9, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda1;-><init>(Lj$/util/stream/DoubleStream;)V

    .line 611
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v3

    check-cast v3, Lj$/util/stream/Stream;

    .line 595
    return-object v3

    .line 640
    .end local v2    # "fromIterator":Lj$/util/PrimitiveIterator$OfDouble;
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$4Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$4Splitr;-><init>(Lj$/util/Spliterator$OfDouble;JLcom/google/common/collect/Streams$DoubleFunctionWithIndex;)V

    invoke-static {v2, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda1;-><init>(Lj$/util/stream/DoubleStream;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Stream;

    return-object v2
.end method

.method public static mapWithIndex(Lj$/util/stream/IntStream;Lcom/google/common/collect/Streams$IntFunctionWithIndex;)Lj$/util/stream/Stream;
    .locals 10
    .param p0, "stream"    # Lj$/util/stream/IntStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/IntStream;",
            "Lcom/google/common/collect/Streams$IntFunctionWithIndex<",
            "TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 431
    .local p1, "function":Lcom/google/common/collect/Streams$IntFunctionWithIndex;, "Lcom/google/common/collect/Streams$IntFunctionWithIndex<TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-interface {p0}, Lj$/util/stream/IntStream;->isParallel()Z

    move-result v0

    .line 434
    .local v0, "isParallel":Z
    invoke-interface {p0}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v1

    .line 436
    .local v1, "fromSpliterator":Lj$/util/Spliterator$OfInt;
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lj$/util/Spliterator$OfInt;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 437
    invoke-static {v1}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfInt;)Lj$/util/PrimitiveIterator$OfInt;

    move-result-object v2

    .line 438
    .local v2, "fromIterator":Lj$/util/PrimitiveIterator$OfInt;
    new-instance v9, Lcom/google/common/collect/Streams$3;

    .line 440
    invoke-interface {v1}, Lj$/util/Spliterator$OfInt;->estimateSize()J

    move-result-wide v4

    .line 441
    invoke-interface {v1}, Lj$/util/Spliterator$OfInt;->characteristics()I

    move-result v3

    and-int/lit8 v6, v3, 0x50

    move-object v3, v9

    move-object v7, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$3;-><init>(JILj$/util/PrimitiveIterator$OfInt;Lcom/google/common/collect/Streams$IntFunctionWithIndex;)V

    .line 438
    invoke-static {v9, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda11;-><init>(Lj$/util/stream/IntStream;)V

    .line 454
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v3

    check-cast v3, Lj$/util/stream/Stream;

    .line 438
    return-object v3

    .line 483
    .end local v2    # "fromIterator":Lj$/util/PrimitiveIterator$OfInt;
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$2Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$2Splitr;-><init>(Lj$/util/Spliterator$OfInt;JLcom/google/common/collect/Streams$IntFunctionWithIndex;)V

    invoke-static {v2, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda11;-><init>(Lj$/util/stream/IntStream;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Stream;

    return-object v2
.end method

.method public static mapWithIndex(Lj$/util/stream/LongStream;Lcom/google/common/collect/Streams$LongFunctionWithIndex;)Lj$/util/stream/Stream;
    .locals 10
    .param p0, "stream"    # Lj$/util/stream/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/LongStream;",
            "Lcom/google/common/collect/Streams$LongFunctionWithIndex<",
            "TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 509
    .local p1, "function":Lcom/google/common/collect/Streams$LongFunctionWithIndex;, "Lcom/google/common/collect/Streams$LongFunctionWithIndex<TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-interface {p0}, Lj$/util/stream/LongStream;->isParallel()Z

    move-result v0

    .line 512
    .local v0, "isParallel":Z
    invoke-interface {p0}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v1

    .line 514
    .local v1, "fromSpliterator":Lj$/util/Spliterator$OfLong;
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lj$/util/Spliterator$OfLong;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 515
    invoke-static {v1}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfLong;)Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v2

    .line 516
    .local v2, "fromIterator":Lj$/util/PrimitiveIterator$OfLong;
    new-instance v9, Lcom/google/common/collect/Streams$4;

    .line 518
    invoke-interface {v1}, Lj$/util/Spliterator$OfLong;->estimateSize()J

    move-result-wide v4

    .line 519
    invoke-interface {v1}, Lj$/util/Spliterator$OfLong;->characteristics()I

    move-result v3

    and-int/lit8 v6, v3, 0x50

    move-object v3, v9

    move-object v7, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$4;-><init>(JILj$/util/PrimitiveIterator$OfLong;Lcom/google/common/collect/Streams$LongFunctionWithIndex;)V

    .line 516
    invoke-static {v9, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda2;-><init>(Lj$/util/stream/LongStream;)V

    .line 532
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v3

    check-cast v3, Lj$/util/stream/Stream;

    .line 516
    return-object v3

    .line 561
    .end local v2    # "fromIterator":Lj$/util/PrimitiveIterator$OfLong;
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$3Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$3Splitr;-><init>(Lj$/util/Spliterator$OfLong;JLcom/google/common/collect/Streams$LongFunctionWithIndex;)V

    invoke-static {v2, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda2;-><init>(Lj$/util/stream/LongStream;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Stream;

    return-object v2
.end method

.method public static mapWithIndex(Lj$/util/stream/Stream;Lcom/google/common/collect/Streams$FunctionWithIndex;)Lj$/util/stream/Stream;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Stream<",
            "TT;>;",
            "Lcom/google/common/collect/Streams$FunctionWithIndex<",
            "-TT;+TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 350
    .local p0, "stream":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    .local p1, "function":Lcom/google/common/collect/Streams$FunctionWithIndex;, "Lcom/google/common/collect/Streams$FunctionWithIndex<-TT;+TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-interface {p0}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v0

    .line 353
    .local v0, "isParallel":Z
    invoke-interface {p0}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v1

    .line 355
    .local v1, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    invoke-static {v1}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v2

    .line 357
    .local v2, "fromIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    new-instance v9, Lcom/google/common/collect/Streams$2;

    .line 359
    invoke-interface {v1}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v4

    .line 360
    invoke-interface {v1}, Lj$/util/Spliterator;->characteristics()I

    move-result v3

    and-int/lit8 v6, v3, 0x50

    move-object v3, v9

    move-object v7, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$2;-><init>(JILjava/util/Iterator;Lcom/google/common/collect/Streams$FunctionWithIndex;)V

    .line 357
    invoke-static {v9, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;-><init>(Lj$/util/stream/Stream;)V

    .line 373
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v3

    check-cast v3, Lj$/util/stream/Stream;

    .line 357
    return-object v3

    .line 405
    .end local v2    # "fromIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$1Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$1Splitr;-><init>(Lj$/util/Spliterator;JLcom/google/common/collect/Streams$FunctionWithIndex;)V

    invoke-static {v2, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;-><init>(Lj$/util/stream/Stream;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Stream;

    return-object v2
.end method

.method public static stream(Lj$/util/OptionalDouble;)Lj$/util/stream/DoubleStream;
    .locals 2
    .param p0, "optional"    # Lj$/util/OptionalDouble;

    .line 130
    invoke-virtual {p0}, Lj$/util/OptionalDouble;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/stream/DoubleStream$-CC;->of(D)Lj$/util/stream/DoubleStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/stream/DoubleStream$-CC;->empty()Lj$/util/stream/DoubleStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Lj$/util/OptionalInt;)Lj$/util/stream/IntStream;
    .locals 1
    .param p0, "optional"    # Lj$/util/OptionalInt;

    .line 110
    invoke-virtual {p0}, Lj$/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/OptionalInt;->getAsInt()I

    move-result v0

    invoke-static {v0}, Lj$/util/stream/IntStream$-CC;->of(I)Lj$/util/stream/IntStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/stream/IntStream$-CC;->empty()Lj$/util/stream/IntStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Lj$/util/OptionalLong;)Lj$/util/stream/LongStream;
    .locals 2
    .param p0, "optional"    # Lj$/util/OptionalLong;

    .line 120
    invoke-virtual {p0}, Lj$/util/OptionalLong;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/OptionalLong;->getAsLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/stream/LongStream$-CC;->of(J)Lj$/util/stream/LongStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/stream/LongStream$-CC;->empty()Lj$/util/stream/LongStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Lcom/google/common/base/Optional;)Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Optional<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 90
    .local p0, "optional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$-CC;->of(Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Lj$/util/Optional;)Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Optional<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 100
    .local p0, "optional":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$-CC;->of(Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Ljava/lang/Iterable;)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 62
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 63
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p0}, Lj$/lang/Iterable$-EL;->spliterator(Ljava/lang/Iterable;)Lj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0
.end method

.method public static stream(Ljava/util/Collection;)Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static stream(Ljava/util/Iterator;)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 82
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    move-result-object v1

    invoke-static {v1, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lj$/util/stream/Stream;Lj$/util/stream/Stream;Lj$/util/function/BiFunction;)Lj$/util/stream/Stream;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Stream<",
            "TA;>;",
            "Lj$/util/stream/Stream<",
            "TB;>;",
            "Lj$/util/function/BiFunction<",
            "-TA;-TB;TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 241
    .local p0, "streamA":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TA;>;"
    .local p1, "streamB":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TB;>;"
    .local p2, "function":Lj$/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TA;-TB;TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static/range {p2 .. p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-interface {p0}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 245
    .local v0, "isParallel":Z
    :goto_1
    invoke-interface {p0}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v1

    .line 246
    .local v1, "splitrA":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TA;>;"
    invoke-interface {p1}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v2

    .line 247
    .local v2, "splitrB":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TB;>;"
    nop

    .line 248
    invoke-interface {v1}, Lj$/util/Spliterator;->characteristics()I

    move-result v3

    .line 249
    invoke-interface {v2}, Lj$/util/Spliterator;->characteristics()I

    move-result v4

    and-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x50

    .line 251
    .local v3, "characteristics":I
    invoke-static {v1}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v11

    .line 252
    .local v11, "itrA":Ljava/util/Iterator;, "Ljava/util/Iterator<TA;>;"
    invoke-static {v2}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v12

    .line 253
    .local v12, "itrB":Ljava/util/Iterator;, "Ljava/util/Iterator<TB;>;"
    new-instance v13, Lcom/google/common/collect/Streams$1;

    .line 255
    invoke-interface {v1}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v4

    invoke-interface {v2}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-object v4, v13

    move v7, v3

    move-object v8, v11

    move-object v9, v12

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/google/common/collect/Streams$1;-><init>(JILjava/util/Iterator;Ljava/util/Iterator;Lj$/util/function/BiFunction;)V

    .line 253
    invoke-static {v13, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;

    move-object v6, p0

    invoke-direct {v5, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;-><init>(Lj$/util/stream/Stream;)V

    .line 266
    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v4

    check-cast v4, Lj$/util/stream/Stream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;

    move-object v7, p1

    invoke-direct {v5, p1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;-><init>(Lj$/util/stream/Stream;)V

    .line 267
    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v4

    check-cast v4, Lj$/util/stream/Stream;

    .line 253
    return-object v4
.end method

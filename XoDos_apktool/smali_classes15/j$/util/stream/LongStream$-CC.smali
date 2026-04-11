.class public final synthetic Lj$/util/stream/LongStream$-CC;
.super Ljava/lang/Object;
.source "LongStream.java"


# direct methods
.method public static bridge synthetic $default$iterator(Lj$/util/stream/LongStream;)Ljava/util/Iterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/LongStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/LongStream;->iterator()Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$parallel(Lj$/util/stream/LongStream;)Lj$/util/stream/BaseStream;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/LongStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/LongStream;->parallel()Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$sequential(Lj$/util/stream/LongStream;)Lj$/util/stream/BaseStream;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/LongStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$spliterator(Lj$/util/stream/LongStream;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/LongStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lj$/util/stream/LongStream$Builder;
    .locals 1

    .line 681
    new-instance v0, Lj$/util/stream/Streams$LongStreamBuilderImpl;

    invoke-direct {v0}, Lj$/util/stream/Streams$LongStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Lj$/util/stream/LongStream;Lj$/util/stream/LongStream;)Lj$/util/stream/LongStream;
    .locals 3
    .param p0, "a"    # Lj$/util/stream/LongStream;
    .param p1, "b"    # Lj$/util/stream/LongStream;

    .line 850
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    new-instance v0, Lj$/util/stream/Streams$ConcatSpliterator$OfLong;

    .line 854
    invoke-interface {p0}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v1

    invoke-interface {p1}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj$/util/stream/Streams$ConcatSpliterator$OfLong;-><init>(Lj$/util/Spliterator$OfLong;Lj$/util/Spliterator$OfLong;)V

    .line 855
    .local v0, "split":Lj$/util/Spliterator$OfLong;
    invoke-interface {p0}, Lj$/util/stream/LongStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lj$/util/stream/LongStream;->isParallel()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v1

    .line 856
    .local v1, "stream":Lj$/util/stream/LongStream;
    invoke-static {p0, p1}, Lj$/util/stream/Streams;->composedClose(Lj$/util/stream/BaseStream;Lj$/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/LongStream;

    return-object v2
.end method

.method public static empty()Lj$/util/stream/LongStream;
    .locals 2

    .line 690
    invoke-static {}, Lj$/util/Spliterators;->emptyLongSpliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Lj$/util/function/LongSupplier;)Lj$/util/stream/LongStream;
    .locals 3
    .param p0, "s"    # Lj$/util/function/LongSupplier;

    .line 760
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    new-instance v0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;-><init>(JLj$/util/function/LongSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(JLj$/util/function/LongUnaryOperator;)Lj$/util/stream/LongStream;
    .locals 3
    .param p0, "seed"    # J
    .param p2, "f"    # Lj$/util/function/LongUnaryOperator;

    .line 730
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    new-instance v0, Lj$/util/stream/LongStream$1;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/LongStream$1;-><init>(JLj$/util/function/LongUnaryOperator;)V

    .line 746
    .local v0, "iterator":Lj$/util/PrimitiveIterator$OfLong;
    const/16 v1, 0x510

    invoke-static {v0, v1}, Lj$/util/Spliterators;->spliteratorUnknownSize(Lj$/util/PrimitiveIterator$OfLong;I)Lj$/util/Spliterator$OfLong;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v1

    return-object v1
.end method

.method public static of(J)Lj$/util/stream/LongStream;
    .locals 2
    .param p0, "t"    # J

    .line 700
    new-instance v0, Lj$/util/stream/Streams$LongStreamBuilderImpl;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/Streams$LongStreamBuilderImpl;-><init>(J)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([J)Lj$/util/stream/LongStream;
    .locals 1
    .param p0, "values"    # [J

    .line 710
    invoke-static {p0}, Lj$/util/DesugarArrays;->stream([J)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static range(JJ)Lj$/util/stream/LongStream;
    .locals 9
    .param p0, "startInclusive"    # J
    .param p2, "endExclusive"    # J

    .line 783
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    .line 784
    invoke-static {}, Lj$/util/stream/LongStream$-CC;->empty()Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 785
    :cond_0
    sub-long v0, p2, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 790
    sub-long v0, p2, p0

    const-wide/16 v2, 0x2

    invoke-static {v0, v1, v2, v3}, Lj$/util/stream/LongStream$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 791
    .local v0, "m":J
    invoke-static {p0, p1, v0, v1}, Lj$/util/stream/LongStream$-CC;->range(JJ)Lj$/util/stream/LongStream;

    move-result-object v2

    invoke-static {v0, v1, p2, p3}, Lj$/util/stream/LongStream$-CC;->range(JJ)Lj$/util/stream/LongStream;

    move-result-object v3

    invoke-static {v2, v3}, Lj$/util/stream/LongStream$-CC;->concat(Lj$/util/stream/LongStream;Lj$/util/stream/LongStream;)Lj$/util/stream/LongStream;

    move-result-object v2

    return-object v2

    .line 793
    .end local v0    # "m":J
    :cond_1
    new-instance v0, Lj$/util/stream/Streams$RangeLongSpliterator;

    const/4 v8, 0x0

    move-object v3, v0

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static rangeClosed(JJ)Lj$/util/stream/LongStream;
    .locals 9
    .param p0, "startInclusive"    # J
    .param p2, "endInclusive"    # J

    .line 816
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 817
    invoke-static {}, Lj$/util/stream/LongStream$-CC;->empty()Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 818
    :cond_0
    sub-long v0, p2, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gtz v6, :cond_1

    .line 824
    sub-long v0, p2, p0

    const-wide/16 v4, 0x2

    invoke-static {v0, v1, v4, v5}, Lj$/util/stream/LongStream$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    add-long/2addr v0, p0

    add-long/2addr v0, v2

    .line 825
    .local v0, "m":J
    invoke-static {p0, p1, v0, v1}, Lj$/util/stream/LongStream$-CC;->range(JJ)Lj$/util/stream/LongStream;

    move-result-object v2

    invoke-static {v0, v1, p2, p3}, Lj$/util/stream/LongStream$-CC;->rangeClosed(JJ)Lj$/util/stream/LongStream;

    move-result-object v3

    invoke-static {v2, v3}, Lj$/util/stream/LongStream$-CC;->concat(Lj$/util/stream/LongStream;Lj$/util/stream/LongStream;)Lj$/util/stream/LongStream;

    move-result-object v2

    return-object v2

    .line 827
    .end local v0    # "m":J
    :cond_1
    new-instance v0, Lj$/util/stream/Streams$RangeLongSpliterator;

    const/4 v8, 0x1

    move-object v3, v0

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

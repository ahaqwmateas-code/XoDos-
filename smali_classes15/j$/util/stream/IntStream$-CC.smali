.class public final synthetic Lj$/util/stream/IntStream$-CC;
.super Ljava/lang/Object;
.source "IntStream.java"


# direct methods
.method public static bridge synthetic $default$iterator(Lj$/util/stream/IntStream;)Ljava/util/Iterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/IntStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/IntStream;->iterator()Lj$/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$parallel(Lj$/util/stream/IntStream;)Lj$/util/stream/BaseStream;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/IntStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/IntStream;->parallel()Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$sequential(Lj$/util/stream/IntStream;)Lj$/util/stream/BaseStream;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/IntStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$spliterator(Lj$/util/stream/IntStream;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/IntStream;

    .line 73
    invoke-interface {p0}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lj$/util/stream/IntStream$Builder;
    .locals 1

    .line 693
    new-instance v0, Lj$/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0}, Lj$/util/stream/Streams$IntStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Lj$/util/stream/IntStream;Lj$/util/stream/IntStream;)Lj$/util/stream/IntStream;
    .locals 3
    .param p0, "a"    # Lj$/util/stream/IntStream;
    .param p1, "b"    # Lj$/util/stream/IntStream;

    .line 847
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    new-instance v0, Lj$/util/stream/Streams$ConcatSpliterator$OfInt;

    .line 851
    invoke-interface {p0}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v1

    invoke-interface {p1}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj$/util/stream/Streams$ConcatSpliterator$OfInt;-><init>(Lj$/util/Spliterator$OfInt;Lj$/util/Spliterator$OfInt;)V

    .line 852
    .local v0, "split":Lj$/util/Spliterator$OfInt;
    invoke-interface {p0}, Lj$/util/stream/IntStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lj$/util/stream/IntStream;->isParallel()Z

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
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v1

    .line 853
    .local v1, "stream":Lj$/util/stream/IntStream;
    invoke-static {p0, p1}, Lj$/util/stream/Streams;->composedClose(Lj$/util/stream/BaseStream;Lj$/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/IntStream;

    return-object v2
.end method

.method public static empty()Lj$/util/stream/IntStream;
    .locals 2

    .line 702
    invoke-static {}, Lj$/util/Spliterators;->emptyIntSpliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Lj$/util/function/IntSupplier;)Lj$/util/stream/IntStream;
    .locals 3
    .param p0, "s"    # Lj$/util/function/IntSupplier;

    .line 772
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    new-instance v0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;-><init>(JLj$/util/function/IntSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(ILj$/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;
    .locals 3
    .param p0, "seed"    # I
    .param p1, "f"    # Lj$/util/function/IntUnaryOperator;

    .line 742
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    new-instance v0, Lj$/util/stream/IntStream$1;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/IntStream$1;-><init>(ILj$/util/function/IntUnaryOperator;)V

    .line 758
    .local v0, "iterator":Lj$/util/PrimitiveIterator$OfInt;
    const/16 v1, 0x510

    invoke-static {v0, v1}, Lj$/util/Spliterators;->spliteratorUnknownSize(Lj$/util/PrimitiveIterator$OfInt;I)Lj$/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v1

    return-object v1
.end method

.method public static of(I)Lj$/util/stream/IntStream;
    .locals 2
    .param p0, "t"    # I

    .line 712
    new-instance v0, Lj$/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0, p0}, Lj$/util/stream/Streams$IntStreamBuilderImpl;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([I)Lj$/util/stream/IntStream;
    .locals 1
    .param p0, "values"    # [I

    .line 722
    invoke-static {p0}, Lj$/util/DesugarArrays;->stream([I)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static range(II)Lj$/util/stream/IntStream;
    .locals 2
    .param p0, "startInclusive"    # I
    .param p1, "endExclusive"    # I

    .line 795
    if-lt p0, p1, :cond_0

    .line 796
    invoke-static {}, Lj$/util/stream/IntStream$-CC;->empty()Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 798
    :cond_0
    new-instance v0, Lj$/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj$/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static rangeClosed(II)Lj$/util/stream/IntStream;
    .locals 2
    .param p0, "startInclusive"    # I
    .param p1, "endInclusive"    # I

    .line 821
    if-le p0, p1, :cond_0

    .line 822
    invoke-static {}, Lj$/util/stream/IntStream$-CC;->empty()Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 824
    :cond_0
    new-instance v0, Lj$/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lj$/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

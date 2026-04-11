.class public final synthetic Lj$/util/stream/DoubleStream$-CC;
.super Ljava/lang/Object;
.source "DoubleStream.java"


# direct methods
.method public static bridge synthetic $default$iterator(Lj$/util/stream/DoubleStream;)Ljava/util/Iterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/DoubleStream;

    .line 72
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->iterator()Lj$/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$parallel(Lj$/util/stream/DoubleStream;)Lj$/util/stream/BaseStream;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/DoubleStream;

    .line 72
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->parallel()Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$sequential(Lj$/util/stream/DoubleStream;)Lj$/util/stream/BaseStream;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/DoubleStream;

    .line 72
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->sequential()Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$spliterator(Lj$/util/stream/DoubleStream;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/stream/DoubleStream;

    .line 72
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lj$/util/stream/DoubleStream$Builder;
    .locals 1

    .line 722
    new-instance v0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;

    invoke-direct {v0}, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Lj$/util/stream/DoubleStream;Lj$/util/stream/DoubleStream;)Lj$/util/stream/DoubleStream;
    .locals 3
    .param p0, "a"    # Lj$/util/stream/DoubleStream;
    .param p1, "b"    # Lj$/util/stream/DoubleStream;

    .line 824
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    new-instance v0, Lj$/util/stream/Streams$ConcatSpliterator$OfDouble;

    .line 828
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v1

    invoke-interface {p1}, Lj$/util/stream/DoubleStream;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj$/util/stream/Streams$ConcatSpliterator$OfDouble;-><init>(Lj$/util/Spliterator$OfDouble;Lj$/util/Spliterator$OfDouble;)V

    .line 829
    .local v0, "split":Lj$/util/Spliterator$OfDouble;
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lj$/util/stream/DoubleStream;->isParallel()Z

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
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v1

    .line 830
    .local v1, "stream":Lj$/util/stream/DoubleStream;
    invoke-static {p0, p1}, Lj$/util/stream/Streams;->composedClose(Lj$/util/stream/BaseStream;Lj$/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/DoubleStream;

    return-object v2
.end method

.method public static empty()Lj$/util/stream/DoubleStream;
    .locals 2

    .line 731
    invoke-static {}, Lj$/util/Spliterators;->emptyDoubleSpliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Lj$/util/function/DoubleSupplier;)Lj$/util/stream/DoubleStream;
    .locals 3
    .param p0, "s"    # Lj$/util/function/DoubleSupplier;

    .line 801
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    new-instance v0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;-><init>(JLj$/util/function/DoubleSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(DLj$/util/function/DoubleUnaryOperator;)Lj$/util/stream/DoubleStream;
    .locals 3
    .param p0, "seed"    # D
    .param p2, "f"    # Lj$/util/function/DoubleUnaryOperator;

    .line 771
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    new-instance v0, Lj$/util/stream/DoubleStream$1;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/DoubleStream$1;-><init>(DLj$/util/function/DoubleUnaryOperator;)V

    .line 787
    .local v0, "iterator":Lj$/util/PrimitiveIterator$OfDouble;
    const/16 v1, 0x510

    invoke-static {v0, v1}, Lj$/util/Spliterators;->spliteratorUnknownSize(Lj$/util/PrimitiveIterator$OfDouble;I)Lj$/util/Spliterator$OfDouble;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v1

    return-object v1
.end method

.method public static of(D)Lj$/util/stream/DoubleStream;
    .locals 2
    .param p0, "t"    # D

    .line 741
    new-instance v0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;-><init>(D)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([D)Lj$/util/stream/DoubleStream;
    .locals 1
    .param p0, "values"    # [D

    .line 751
    invoke-static {p0}, Lj$/util/DesugarArrays;->stream([D)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

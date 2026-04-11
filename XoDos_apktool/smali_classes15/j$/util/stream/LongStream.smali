.class public interface abstract Lj$/util/stream/LongStream;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Lj$/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/LongStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/stream/BaseStream<",
        "Ljava/lang/Long;",
        "Lj$/util/stream/LongStream;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract allMatch(Lj$/util/function/LongPredicate;)Z
.end method

.method public abstract anyMatch(Lj$/util/function/LongPredicate;)Z
.end method

.method public abstract asDoubleStream()Lj$/util/stream/DoubleStream;
.end method

.method public abstract average()Lj$/util/OptionalDouble;
.end method

.method public abstract boxed()Lj$/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract collect(Lj$/util/function/Supplier;Lj$/util/function/ObjLongConsumer;Lj$/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/Supplier<",
            "TR;>;",
            "Lj$/util/function/ObjLongConsumer<",
            "TR;>;",
            "Lj$/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Lj$/util/stream/LongStream;
.end method

.method public abstract filter(Lj$/util/function/LongPredicate;)Lj$/util/stream/LongStream;
.end method

.method public abstract findAny()Lj$/util/OptionalLong;
.end method

.method public abstract findFirst()Lj$/util/OptionalLong;
.end method

.method public abstract flatMap(Lj$/util/function/LongFunction;)Lj$/util/stream/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/LongFunction<",
            "+",
            "Lj$/util/stream/LongStream;",
            ">;)",
            "Lj$/util/stream/LongStream;"
        }
    .end annotation
.end method

.method public abstract forEach(Lj$/util/function/LongConsumer;)V
.end method

.method public abstract forEachOrdered(Lj$/util/function/LongConsumer;)V
.end method

.method public abstract iterator()Lj$/util/PrimitiveIterator$OfLong;
.end method

.method public abstract limit(J)Lj$/util/stream/LongStream;
.end method

.method public abstract map(Lj$/util/function/LongUnaryOperator;)Lj$/util/stream/LongStream;
.end method

.method public abstract mapToDouble(Lj$/util/function/LongToDoubleFunction;)Lj$/util/stream/DoubleStream;
.end method

.method public abstract mapToInt(Lj$/util/function/LongToIntFunction;)Lj$/util/stream/IntStream;
.end method

.method public abstract mapToObj(Lj$/util/function/LongFunction;)Lj$/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/LongFunction<",
            "+TU;>;)",
            "Lj$/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract max()Lj$/util/OptionalLong;
.end method

.method public abstract min()Lj$/util/OptionalLong;
.end method

.method public abstract noneMatch(Lj$/util/function/LongPredicate;)Z
.end method

.method public abstract parallel()Lj$/util/stream/LongStream;
.end method

.method public abstract peek(Lj$/util/function/LongConsumer;)Lj$/util/stream/LongStream;
.end method

.method public abstract reduce(JLj$/util/function/LongBinaryOperator;)J
.end method

.method public abstract reduce(Lj$/util/function/LongBinaryOperator;)Lj$/util/OptionalLong;
.end method

.method public abstract sequential()Lj$/util/stream/LongStream;
.end method

.method public abstract skip(J)Lj$/util/stream/LongStream;
.end method

.method public abstract sorted()Lj$/util/stream/LongStream;
.end method

.method public abstract spliterator()Lj$/util/Spliterator$OfLong;
.end method

.method public abstract sum()J
.end method

.method public abstract summaryStatistics()Lj$/util/LongSummaryStatistics;
.end method

.method public abstract toArray()[J
.end method

.class final Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;
.super Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<",
        "Ljava/lang/Integer;",
        ">;",
        "Lj$/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field final s:Lj$/util/function/IntSupplier;


# direct methods
.method constructor <init>(JLj$/util/function/IntSupplier;)V
    .locals 0
    .param p1, "size"    # J
    .param p3, "s"    # Lj$/util/function/IntSupplier;

    .line 1373
    invoke-direct {p0, p1, p2}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    .line 1374
    iput-object p3, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->s:Lj$/util/function/IntSupplier;

    .line 1375
    return-void
.end method


# virtual methods
.method public synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Lj$/util/function/IntConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Lj$/util/function/IntConsumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic tryAdvance(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfInt;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Lj$/util/function/IntConsumer;)Z
    .locals 1
    .param p1, "action"    # Lj$/util/function/IntConsumer;

    .line 1379
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->s:Lj$/util/function/IntSupplier;

    invoke-interface {v0}, Lj$/util/function/IntSupplier;->getAsInt()I

    move-result v0

    invoke-interface {p1, v0}, Lj$/util/function/IntConsumer;->accept(I)V

    .line 1382
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1368
    check-cast p1, Lj$/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->tryAdvance(Lj$/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public trySplit()Lj$/util/Spliterator$OfInt;
    .locals 5

    .line 1387
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->estimate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1388
    const/4 v0, 0x0

    return-object v0

    .line 1389
    :cond_0
    new-instance v0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;

    iget-wide v1, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->estimate:J

    const/4 v3, 0x1

    ushr-long/2addr v1, v3

    iput-wide v1, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->estimate:J

    iget-object v3, p0, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->s:Lj$/util/function/IntSupplier;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;-><init>(JLj$/util/function/IntSupplier;)V

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1368
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 1368
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

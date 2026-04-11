.class final Lj$/util/stream/Streams$LongStreamBuilderImpl;
.super Lj$/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Lj$/util/stream/LongStream$Builder;
.implements Lj$/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Streams$AbstractStreamBuilderImpl<",
        "Ljava/lang/Long;",
        "Lj$/util/Spliterator$OfLong;",
        ">;",
        "Lj$/util/stream/LongStream$Builder;",
        "Lj$/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field buffer:Lj$/util/stream/SpinedBuffer$OfLong;

.field first:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 530
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Lj$/util/stream/Streams$1;)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "t"    # J

    .line 537
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Lj$/util/stream/Streams$1;)V

    .line 538
    iput-wide p1, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->first:J

    .line 539
    const/4 v0, -0x2

    iput v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 540
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "t"    # J

    .line 546
    iget v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 547
    iput-wide p1, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->first:J

    .line 548
    iget v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    goto :goto_0

    .line 550
    :cond_0
    iget v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 551
    iget-object v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfLong;

    if-nez v0, :cond_1

    .line 552
    new-instance v0, Lj$/util/stream/SpinedBuffer$OfLong;

    invoke-direct {v0}, Lj$/util/stream/SpinedBuffer$OfLong;-><init>()V

    iput-object v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfLong;

    .line 553
    iget-object v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfLong;

    iget-wide v1, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-virtual {v0, v1, v2}, Lj$/util/stream/SpinedBuffer$OfLong;->accept(J)V

    .line 554
    iget v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 557
    :cond_1
    iget-object v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0, p1, p2}, Lj$/util/stream/SpinedBuffer$OfLong;->accept(J)V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public synthetic add(J)Lj$/util/stream/LongStream$Builder;
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/LongStream$Builder$-CC;->$default$add(Lj$/util/stream/LongStream$Builder;J)Lj$/util/stream/LongStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Lj$/util/function/LongConsumer;)Lj$/util/function/LongConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/LongConsumer$-CC;->$default$andThen(Lj$/util/function/LongConsumer;Lj$/util/function/LongConsumer;)Lj$/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method

.method public build()Lj$/util/stream/LongStream;
    .locals 3

    .line 566
    iget v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 567
    .local v0, "c":I
    if-ltz v0, :cond_1

    .line 569
    iget v1, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 572
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-static {p0, v2}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v1}, Lj$/util/stream/SpinedBuffer$OfLong;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v1

    invoke-static {v1, v2}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v1

    :goto_0
    return-object v1

    .line 575
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Lj$/util/function/LongConsumer;)V
    .locals 2
    .param p1, "action"    # Lj$/util/function/LongConsumer;

    .line 598
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 601
    iget-wide v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-interface {p1, v0, v1}, Lj$/util/function/LongConsumer;->accept(J)V

    .line 602
    const/4 v0, -0x1

    iput v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 604
    :cond_0
    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 516
    check-cast p1, Lj$/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Streams$LongStreamBuilderImpl;->forEachRemaining(Lj$/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic tryAdvance(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfLong;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Lj$/util/function/LongConsumer;)Z
    .locals 2
    .param p1, "action"    # Lj$/util/function/LongConsumer;

    .line 584
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 587
    iget-wide v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-interface {p1, v0, v1}, Lj$/util/function/LongConsumer;->accept(J)V

    .line 588
    const/4 v0, -0x1

    iput v0, p0, Lj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 589
    const/4 v0, 0x1

    return v0

    .line 592
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 516
    check-cast p1, Lj$/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Streams$LongStreamBuilderImpl;->tryAdvance(Lj$/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfLong;
    .locals 1

    .line 516
    invoke-super {p0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfLong;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 516
    invoke-super {p0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method

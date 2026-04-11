.class final Lj$/util/stream/Streams$DoubleStreamBuilderImpl;
.super Lj$/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Lj$/util/stream/DoubleStream$Builder;
.implements Lj$/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Streams$AbstractStreamBuilderImpl<",
        "Ljava/lang/Double;",
        "Lj$/util/Spliterator$OfDouble;",
        ">;",
        "Lj$/util/stream/DoubleStream$Builder;",
        "Lj$/util/Spliterator$OfDouble;"
    }
.end annotation


# instance fields
.field buffer:Lj$/util/stream/SpinedBuffer$OfDouble;

.field first:D


# direct methods
.method constructor <init>()V
    .locals 1

    .line 621
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Lj$/util/stream/Streams$1;)V

    return-void
.end method

.method constructor <init>(D)V
    .locals 1
    .param p1, "t"    # D

    .line 628
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Lj$/util/stream/Streams$1;)V

    .line 629
    iput-wide p1, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    .line 630
    const/4 v0, -0x2

    iput v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 631
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    .line 637
    iget v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 638
    iput-wide p1, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    .line 639
    iget v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    goto :goto_0

    .line 641
    :cond_0
    iget v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 642
    iget-object v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfDouble;

    if-nez v0, :cond_1

    .line 643
    new-instance v0, Lj$/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Lj$/util/stream/SpinedBuffer$OfDouble;-><init>()V

    iput-object v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfDouble;

    .line 644
    iget-object v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfDouble;

    iget-wide v1, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-virtual {v0, v1, v2}, Lj$/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    .line 645
    iget v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 648
    :cond_1
    iget-object v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0, p1, p2}, Lj$/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public synthetic add(D)Lj$/util/stream/DoubleStream$Builder;
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/DoubleStream$Builder$-CC;->$default$add(Lj$/util/stream/DoubleStream$Builder;D)Lj$/util/stream/DoubleStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Lj$/util/function/DoubleConsumer;)Lj$/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/DoubleConsumer$-CC;->$default$andThen(Lj$/util/function/DoubleConsumer;Lj$/util/function/DoubleConsumer;)Lj$/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method public build()Lj$/util/stream/DoubleStream;
    .locals 3

    .line 657
    iget v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 658
    .local v0, "c":I
    if-ltz v0, :cond_1

    .line 660
    iget v1, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 663
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-static {p0, v2}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v1}, Lj$/util/stream/SpinedBuffer$OfDouble;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v1

    invoke-static {v1, v2}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v1

    :goto_0
    return-object v1

    .line 666
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Lj$/util/function/DoubleConsumer;)V
    .locals 2
    .param p1, "action"    # Lj$/util/function/DoubleConsumer;

    .line 689
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 692
    iget-wide v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-interface {p1, v0, v1}, Lj$/util/function/DoubleConsumer;->accept(D)V

    .line 693
    const/4 v0, -0x1

    iput v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 695
    :cond_0
    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 607
    check-cast p1, Lj$/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->forEachRemaining(Lj$/util/function/DoubleConsumer;)V

    return-void
.end method

.method public synthetic tryAdvance(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfDouble$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfDouble;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Lj$/util/function/DoubleConsumer;)Z
    .locals 2
    .param p1, "action"    # Lj$/util/function/DoubleConsumer;

    .line 675
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 678
    iget-wide v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-interface {p1, v0, v1}, Lj$/util/function/DoubleConsumer;->accept(D)V

    .line 679
    const/4 v0, -0x1

    iput v0, p0, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 680
    const/4 v0, 0x1

    return v0

    .line 683
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 607
    check-cast p1, Lj$/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Streams$DoubleStreamBuilderImpl;->tryAdvance(Lj$/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfDouble;
    .locals 1

    .line 607
    invoke-super {p0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 607
    invoke-super {p0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method

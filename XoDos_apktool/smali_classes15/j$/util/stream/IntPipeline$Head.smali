.class Lj$/util/stream/IntPipeline$Head;
.super Lj$/util/stream/IntPipeline;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/IntPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Head"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/IntPipeline<",
        "TE_IN;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/Spliterator;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .line 539
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    .local p1, "source":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/IntPipeline;-><init>(Lj$/util/Spliterator;IZ)V

    .line 540
    return-void
.end method

.method constructor <init>(Lj$/util/function/Supplier;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 526
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    .local p1, "source":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Integer;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/IntPipeline;-><init>(Lj$/util/function/Supplier;IZ)V

    .line 527
    return-void
.end method


# virtual methods
.method public forEach(Lj$/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Lj$/util/function/IntConsumer;

    .line 556
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/IntPipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lj$/util/stream/IntPipeline$Head;->sourceStageSpliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/IntPipeline;->access$000(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Lj$/util/function/IntConsumer;)V

    goto :goto_0

    .line 560
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/IntPipeline;->forEach(Lj$/util/function/IntConsumer;)V

    .line 562
    :goto_0
    return-void
.end method

.method public forEachOrdered(Lj$/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Lj$/util/function/IntConsumer;

    .line 566
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/IntPipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lj$/util/stream/IntPipeline$Head;->sourceStageSpliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/IntPipeline;->access$000(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Lj$/util/function/IntConsumer;)V

    goto :goto_0

    .line 570
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/IntPipeline;->forEachOrdered(Lj$/util/function/IntConsumer;)V

    .line 572
    :goto_0
    return-void
.end method

.method final opIsStateful()Z
    .locals 1

    .line 544
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lj$/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation

    .line 549
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic parallel()Lj$/util/stream/IntStream;
    .locals 1

    .line 514
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/IntPipeline;->parallel()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/IntStream;

    return-object v0
.end method

.method public bridge synthetic sequential()Lj$/util/stream/IntStream;
    .locals 1

    .line 514
    .local p0, "this":Lj$/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/IntPipeline;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/IntStream;

    return-object v0
.end method

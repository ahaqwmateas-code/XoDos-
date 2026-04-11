.class Lj$/util/stream/DoublePipeline$Head;
.super Lj$/util/stream/DoublePipeline;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/DoublePipeline;
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
        "Lj$/util/stream/DoublePipeline<",
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
            "Ljava/lang/Double;",
            ">;IZ)V"
        }
    .end annotation

    .line 542
    .local p0, "this":Lj$/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
    .local p1, "source":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/DoublePipeline;-><init>(Lj$/util/Spliterator;IZ)V

    .line 543
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
            "Ljava/lang/Double;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 529
    .local p0, "this":Lj$/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
    .local p1, "source":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Double;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/DoublePipeline;-><init>(Lj$/util/function/Supplier;IZ)V

    .line 530
    return-void
.end method


# virtual methods
.method public forEach(Lj$/util/function/DoubleConsumer;)V
    .locals 1
    .param p1, "consumer"    # Lj$/util/function/DoubleConsumer;

    .line 559
    .local p0, "this":Lj$/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/DoublePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lj$/util/stream/DoublePipeline$Head;->sourceStageSpliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/DoublePipeline;->access$000(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfDouble;->forEachRemaining(Lj$/util/function/DoubleConsumer;)V

    goto :goto_0

    .line 563
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/DoublePipeline;->forEach(Lj$/util/function/DoubleConsumer;)V

    .line 565
    :goto_0
    return-void
.end method

.method public forEachOrdered(Lj$/util/function/DoubleConsumer;)V
    .locals 1
    .param p1, "consumer"    # Lj$/util/function/DoubleConsumer;

    .line 569
    .local p0, "this":Lj$/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
    invoke-virtual {p0}, Lj$/util/stream/DoublePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lj$/util/stream/DoublePipeline$Head;->sourceStageSpliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/DoublePipeline;->access$000(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfDouble;->forEachRemaining(Lj$/util/function/DoubleConsumer;)V

    goto :goto_0

    .line 573
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/DoublePipeline;->forEachOrdered(Lj$/util/function/DoubleConsumer;)V

    .line 575
    :goto_0
    return-void
.end method

.method final opIsStateful()Z
    .locals 1

    .line 547
    .local p0, "this":Lj$/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
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
            "Ljava/lang/Double;",
            ">;)",
            "Lj$/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lj$/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic parallel()Lj$/util/stream/DoubleStream;
    .locals 1

    .line 517
    .local p0, "this":Lj$/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/DoublePipeline;->parallel()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/DoubleStream;

    return-object v0
.end method

.method public bridge synthetic sequential()Lj$/util/stream/DoubleStream;
    .locals 1

    .line 517
    .local p0, "this":Lj$/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/DoublePipeline;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/DoubleStream;

    return-object v0
.end method

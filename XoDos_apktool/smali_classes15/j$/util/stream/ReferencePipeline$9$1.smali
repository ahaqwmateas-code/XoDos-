.class Lj$/util/stream/ReferencePipeline$9$1;
.super Lj$/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/ReferencePipeline$9;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedReference<",
        "TP_OUT;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field downstreamAsDouble:Lj$/util/function/DoubleConsumer;

.field final synthetic this$1:Lj$/util/stream/ReferencePipeline$9;


# direct methods
.method constructor <init>(Lj$/util/stream/ReferencePipeline$9;Lj$/util/stream/Sink;)V
    .locals 2
    .param p1, "this$1"    # Lj$/util/stream/ReferencePipeline$9;

    .line 314
    .local p0, "this":Lj$/util/stream/ReferencePipeline$9$1;, "Ljava/util/stream/ReferencePipeline$9$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Lj$/util/stream/ReferencePipeline$9$1;->this$1:Lj$/util/stream/ReferencePipeline$9;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

    .line 315
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$9$1;->downstream:Lj$/util/stream/Sink;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda0;-><init>(Lj$/util/stream/Sink;)V

    iput-object v1, p0, Lj$/util/stream/ReferencePipeline$9$1;->downstreamAsDouble:Lj$/util/function/DoubleConsumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .line 323
    .local p0, "this":Lj$/util/stream/ReferencePipeline$9$1;, "Ljava/util/stream/ReferencePipeline$9$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$9$1;->this$1:Lj$/util/stream/ReferencePipeline$9;

    iget-object v0, v0, Lj$/util/stream/ReferencePipeline$9;->val$mapper:Lj$/util/function/Function;

    invoke-interface {v0, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/DoubleStream;

    .line 325
    .local v0, "result":Lj$/util/stream/DoubleStream;
    if-eqz v0, :cond_1

    .line 326
    :try_start_0
    invoke-interface {v0}, Lj$/util/stream/DoubleStream;->sequential()Lj$/util/stream/DoubleStream;

    move-result-object v1

    iget-object v2, p0, Lj$/util/stream/ReferencePipeline$9$1;->downstreamAsDouble:Lj$/util/function/DoubleConsumer;

    invoke-interface {v1, v2}, Lj$/util/stream/DoubleStream;->forEach(Lj$/util/function/DoubleConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 323
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Lj$/util/stream/DoubleStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 327
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lj$/util/stream/DoubleStream;->close()V

    .line 328
    .end local v0    # "result":Lj$/util/stream/DoubleStream;
    :cond_2
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 318
    .local p0, "this":Lj$/util/stream/ReferencePipeline$9$1;, "Ljava/util/stream/ReferencePipeline$9$1;"
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$9$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 319
    return-void
.end method

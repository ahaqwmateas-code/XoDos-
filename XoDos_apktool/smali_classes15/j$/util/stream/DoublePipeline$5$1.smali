.class Lj$/util/stream/DoublePipeline$5$1;
.super Lj$/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/DoublePipeline$5;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lj$/util/stream/DoublePipeline$5;


# direct methods
.method constructor <init>(Lj$/util/stream/DoublePipeline$5;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/DoublePipeline$5;

    .line 261
    .local p0, "this":Lj$/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Lj$/util/stream/DoublePipeline$5$1;->this$1:Lj$/util/stream/DoublePipeline$5;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedDouble;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    .line 269
    .local p0, "this":Lj$/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    iget-object v0, p0, Lj$/util/stream/DoublePipeline$5$1;->this$1:Lj$/util/stream/DoublePipeline$5;

    iget-object v0, v0, Lj$/util/stream/DoublePipeline$5;->val$mapper:Lj$/util/function/DoubleFunction;

    invoke-interface {v0, p1, p2}, Lj$/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/DoubleStream;

    .line 271
    .local v0, "result":Lj$/util/stream/DoubleStream;
    if-eqz v0, :cond_1

    .line 272
    :try_start_0
    invoke-interface {v0}, Lj$/util/stream/DoubleStream;->sequential()Lj$/util/stream/DoubleStream;

    move-result-object v1

    new-instance v2, Lj$/util/stream/DoublePipeline$5$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lj$/util/stream/DoublePipeline$5$1$$ExternalSyntheticLambda0;-><init>(Lj$/util/stream/DoublePipeline$5$1;)V

    invoke-interface {v1, v2}, Lj$/util/stream/DoubleStream;->forEach(Lj$/util/function/DoubleConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 269
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

    .line 273
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lj$/util/stream/DoubleStream;->close()V

    .line 274
    .end local v0    # "result":Lj$/util/stream/DoubleStream;
    :cond_2
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 264
    .local p0, "this":Lj$/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    iget-object v0, p0, Lj$/util/stream/DoublePipeline$5$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 265
    return-void
.end method

.method synthetic lambda$accept$0$java-util-stream-DoublePipeline$5$1(D)V
    .locals 1
    .param p1, "i"    # D

    .line 272
    .local p0, "this":Lj$/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    iget-object v0, p0, Lj$/util/stream/DoublePipeline$5$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Sink;->accept(D)V

    return-void
.end method

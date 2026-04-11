.class Lj$/util/stream/IntPipeline$7$1;
.super Lj$/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/IntPipeline$7;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lj$/util/stream/IntPipeline$7;


# direct methods
.method constructor <init>(Lj$/util/stream/IntPipeline$7;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/IntPipeline$7;

    .line 297
    .local p0, "this":Lj$/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Lj$/util/stream/IntPipeline$7$1;->this$1:Lj$/util/stream/IntPipeline$7;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedInt;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3
    .param p1, "t"    # I

    .line 305
    .local p0, "this":Lj$/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    iget-object v0, p0, Lj$/util/stream/IntPipeline$7$1;->this$1:Lj$/util/stream/IntPipeline$7;

    iget-object v0, v0, Lj$/util/stream/IntPipeline$7;->val$mapper:Lj$/util/function/IntFunction;

    invoke-interface {v0, p1}, Lj$/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/IntStream;

    .line 307
    .local v0, "result":Lj$/util/stream/IntStream;
    if-eqz v0, :cond_1

    .line 308
    :try_start_0
    invoke-interface {v0}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lj$/util/stream/IntPipeline$7$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lj$/util/stream/IntPipeline$7$1$$ExternalSyntheticLambda0;-><init>(Lj$/util/stream/IntPipeline$7$1;)V

    invoke-interface {v1, v2}, Lj$/util/stream/IntStream;->forEach(Lj$/util/function/IntConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 305
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Lj$/util/stream/IntStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 309
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lj$/util/stream/IntStream;->close()V

    .line 310
    .end local v0    # "result":Lj$/util/stream/IntStream;
    :cond_2
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 300
    .local p0, "this":Lj$/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    iget-object v0, p0, Lj$/util/stream/IntPipeline$7$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 301
    return-void
.end method

.method synthetic lambda$accept$0$java-util-stream-IntPipeline$7$1(I)V
    .locals 1
    .param p1, "i"    # I

    .line 308
    .local p0, "this":Lj$/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    iget-object v0, p0, Lj$/util/stream/IntPipeline$7$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(I)V

    return-void
.end method

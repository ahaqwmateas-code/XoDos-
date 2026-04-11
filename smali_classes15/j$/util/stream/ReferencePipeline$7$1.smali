.class Lj$/util/stream/ReferencePipeline$7$1;
.super Lj$/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/ReferencePipeline$7;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedReference<",
        "TP_OUT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lj$/util/stream/ReferencePipeline$7;


# direct methods
.method constructor <init>(Lj$/util/stream/ReferencePipeline$7;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/ReferencePipeline$7;

    .line 259
    .local p0, "this":Lj$/util/stream/ReferencePipeline$7$1;, "Ljava/util/stream/ReferencePipeline$7$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-TR;>;"
    iput-object p1, p0, Lj$/util/stream/ReferencePipeline$7$1;->this$1:Lj$/util/stream/ReferencePipeline$7;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

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

    .line 267
    .local p0, "this":Lj$/util/stream/ReferencePipeline$7$1;, "Ljava/util/stream/ReferencePipeline$7$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$7$1;->this$1:Lj$/util/stream/ReferencePipeline$7;

    iget-object v0, v0, Lj$/util/stream/ReferencePipeline$7;->val$mapper:Lj$/util/function/Function;

    invoke-interface {v0, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Stream;

    .line 269
    .local v0, "result":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    if-eqz v0, :cond_1

    .line 270
    :try_start_0
    invoke-interface {v0}, Lj$/util/stream/Stream;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Lj$/util/stream/Stream;

    iget-object v2, p0, Lj$/util/stream/ReferencePipeline$7$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->forEach(Lj$/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 267
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Lj$/util/stream/Stream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 271
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lj$/util/stream/Stream;->close()V

    .line 272
    .end local v0    # "result":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    :cond_2
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 262
    .local p0, "this":Lj$/util/stream/ReferencePipeline$7$1;, "Ljava/util/stream/ReferencePipeline$7$1;"
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$7$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 263
    return-void
.end method

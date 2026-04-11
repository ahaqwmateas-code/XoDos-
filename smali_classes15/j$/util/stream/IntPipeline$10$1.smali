.class Lj$/util/stream/IntPipeline$10$1;
.super Lj$/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/IntPipeline$10;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
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
.field final synthetic this$1:Lj$/util/stream/IntPipeline$10;


# direct methods
.method constructor <init>(Lj$/util/stream/IntPipeline$10;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/IntPipeline$10;

    .line 358
    .local p0, "this":Lj$/util/stream/IntPipeline$10$1;, "Ljava/util/stream/IntPipeline$10$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Lj$/util/stream/IntPipeline$10$1;->this$1:Lj$/util/stream/IntPipeline$10;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedInt;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "t"    # I

    .line 361
    .local p0, "this":Lj$/util/stream/IntPipeline$10$1;, "Ljava/util/stream/IntPipeline$10$1;"
    iget-object v0, p0, Lj$/util/stream/IntPipeline$10$1;->this$1:Lj$/util/stream/IntPipeline$10;

    iget-object v0, v0, Lj$/util/stream/IntPipeline$10;->val$action:Lj$/util/function/IntConsumer;

    invoke-interface {v0, p1}, Lj$/util/function/IntConsumer;->accept(I)V

    .line 362
    iget-object v0, p0, Lj$/util/stream/IntPipeline$10$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(I)V

    .line 363
    return-void
.end method

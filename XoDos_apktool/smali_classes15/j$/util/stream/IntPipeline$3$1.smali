.class Lj$/util/stream/IntPipeline$3$1;
.super Lj$/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/IntPipeline$3;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
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
.field final synthetic this$1:Lj$/util/stream/IntPipeline$3;


# direct methods
.method constructor <init>(Lj$/util/stream/IntPipeline$3;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/IntPipeline$3;

    .line 230
    .local p0, "this":Lj$/util/stream/IntPipeline$3$1;, "Ljava/util/stream/IntPipeline$3$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Lj$/util/stream/IntPipeline$3$1;->this$1:Lj$/util/stream/IntPipeline$3;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedInt;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "t"    # I

    .line 233
    .local p0, "this":Lj$/util/stream/IntPipeline$3$1;, "Ljava/util/stream/IntPipeline$3$1;"
    iget-object v0, p0, Lj$/util/stream/IntPipeline$3$1;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/IntPipeline$3$1;->this$1:Lj$/util/stream/IntPipeline$3;

    iget-object v1, v1, Lj$/util/stream/IntPipeline$3;->val$mapper:Lj$/util/function/IntUnaryOperator;

    invoke-interface {v1, p1}, Lj$/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Lj$/util/stream/Sink;->accept(I)V

    .line 234
    return-void
.end method

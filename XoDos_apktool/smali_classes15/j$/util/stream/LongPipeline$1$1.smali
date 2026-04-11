.class Lj$/util/stream/LongPipeline$1$1;
.super Lj$/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/LongPipeline$1;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lj$/util/stream/LongPipeline$1;


# direct methods
.method constructor <init>(Lj$/util/stream/LongPipeline$1;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/LongPipeline$1;

    .line 189
    .local p0, "this":Lj$/util/stream/LongPipeline$1$1;, "Ljava/util/stream/LongPipeline$1$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Lj$/util/stream/LongPipeline$1$1;->this$1:Lj$/util/stream/LongPipeline$1;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedLong;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "t"    # J

    .line 192
    .local p0, "this":Lj$/util/stream/LongPipeline$1$1;, "Ljava/util/stream/LongPipeline$1$1;"
    iget-object v0, p0, Lj$/util/stream/LongPipeline$1$1;->downstream:Lj$/util/stream/Sink;

    long-to-double v1, p1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->accept(D)V

    .line 193
    return-void
.end method

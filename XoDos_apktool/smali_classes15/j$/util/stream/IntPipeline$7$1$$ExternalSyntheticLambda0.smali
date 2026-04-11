.class public final synthetic Lj$/util/stream/IntPipeline$7$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lj$/util/stream/IntPipeline$7$1;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/IntPipeline$7$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/IntPipeline$7$1$$ExternalSyntheticLambda0;->f$0:Lj$/util/stream/IntPipeline$7$1;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/IntPipeline$7$1$$ExternalSyntheticLambda0;->f$0:Lj$/util/stream/IntPipeline$7$1;

    invoke-virtual {v0, p1}, Lj$/util/stream/IntPipeline$7$1;->lambda$accept$0$java-util-stream-IntPipeline$7$1(I)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/IntConsumer;)Lj$/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Lj$/util/function/IntConsumer;Lj$/util/function/IntConsumer;)Lj$/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

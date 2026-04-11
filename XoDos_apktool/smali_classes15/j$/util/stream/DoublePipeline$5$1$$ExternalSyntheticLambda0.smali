.class public final synthetic Lj$/util/stream/DoublePipeline$5$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/DoubleConsumer;


# instance fields
.field public final synthetic f$0:Lj$/util/stream/DoublePipeline$5$1;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/DoublePipeline$5$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/DoublePipeline$5$1$$ExternalSyntheticLambda0;->f$0:Lj$/util/stream/DoublePipeline$5$1;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/DoublePipeline$5$1$$ExternalSyntheticLambda0;->f$0:Lj$/util/stream/DoublePipeline$5$1;

    invoke-virtual {v0, p1, p2}, Lj$/util/stream/DoublePipeline$5$1;->lambda$accept$0$java-util-stream-DoublePipeline$5$1(D)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/DoubleConsumer;)Lj$/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/DoubleConsumer$-CC;->$default$andThen(Lj$/util/function/DoubleConsumer;Lj$/util/function/DoubleConsumer;)Lj$/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

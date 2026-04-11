.class Lj$/util/stream/DoubleStream$1;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Lj$/util/PrimitiveIterator$OfDouble;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/DoubleStream$-CC;->iterate(DLj$/util/function/DoubleUnaryOperator;)Lj$/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field t:D

.field final synthetic val$f:Lj$/util/function/DoubleUnaryOperator;

.field final synthetic val$seed:D


# direct methods
.method constructor <init>(DLj$/util/function/DoubleUnaryOperator;)V
    .locals 0

    .line 772
    iput-wide p1, p0, Lj$/util/stream/DoubleStream$1;->val$seed:D

    iput-object p3, p0, Lj$/util/stream/DoubleStream$1;->val$f:Lj$/util/function/DoubleUnaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iget-wide p1, p0, Lj$/util/stream/DoubleStream$1;->val$seed:D

    iput-wide p1, p0, Lj$/util/stream/DoubleStream$1;->t:D

    return-void
.end method


# virtual methods
.method public synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/PrimitiveIterator$OfDouble$-CC;->$default$forEachRemaining(Lj$/util/PrimitiveIterator$OfDouble;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Lj$/util/function/DoubleConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/PrimitiveIterator$OfDouble$-CC;->$default$forEachRemaining(Lj$/util/PrimitiveIterator$OfDouble;Lj$/util/function/DoubleConsumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/PrimitiveIterator$OfDouble$-CC;->$default$forEachRemaining(Lj$/util/PrimitiveIterator$OfDouble;Ljava/lang/Object;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 777
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic next()Ljava/lang/Double;
    .locals 1

    invoke-static {p0}, Lj$/util/PrimitiveIterator$OfDouble$-CC;->$default$next(Lj$/util/PrimitiveIterator$OfDouble;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lj$/util/PrimitiveIterator$OfDouble$-CC;->$default$next(Lj$/util/PrimitiveIterator$OfDouble;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextDouble()D
    .locals 5

    .line 782
    iget-wide v0, p0, Lj$/util/stream/DoubleStream$1;->t:D

    .line 783
    .local v0, "v":D
    iget-object v2, p0, Lj$/util/stream/DoubleStream$1;->val$f:Lj$/util/function/DoubleUnaryOperator;

    iget-wide v3, p0, Lj$/util/stream/DoubleStream$1;->t:D

    invoke-interface {v2, v3, v4}, Lj$/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    iput-wide v2, p0, Lj$/util/stream/DoubleStream$1;->t:D

    .line 784
    return-wide v0
.end method

.class Lj$/util/stream/LongStream$1;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Lj$/util/PrimitiveIterator$OfLong;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/LongStream$-CC;->iterate(JLj$/util/function/LongUnaryOperator;)Lj$/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field t:J

.field final synthetic val$f:Lj$/util/function/LongUnaryOperator;

.field final synthetic val$seed:J


# direct methods
.method constructor <init>(JLj$/util/function/LongUnaryOperator;)V
    .locals 0

    .line 731
    iput-wide p1, p0, Lj$/util/stream/LongStream$1;->val$seed:J

    iput-object p3, p0, Lj$/util/stream/LongStream$1;->val$f:Lj$/util/function/LongUnaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iget-wide p1, p0, Lj$/util/stream/LongStream$1;->val$seed:J

    iput-wide p1, p0, Lj$/util/stream/LongStream$1;->t:J

    return-void
.end method


# virtual methods
.method public synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/PrimitiveIterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/PrimitiveIterator$OfLong;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Lj$/util/function/LongConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/PrimitiveIterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/PrimitiveIterator$OfLong;Lj$/util/function/LongConsumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/PrimitiveIterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/PrimitiveIterator$OfLong;Ljava/lang/Object;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 736
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic next()Ljava/lang/Long;
    .locals 1

    invoke-static {p0}, Lj$/util/PrimitiveIterator$OfLong$-CC;->$default$next(Lj$/util/PrimitiveIterator$OfLong;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lj$/util/PrimitiveIterator$OfLong$-CC;->$default$next(Lj$/util/PrimitiveIterator$OfLong;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextLong()J
    .locals 5

    .line 741
    iget-wide v0, p0, Lj$/util/stream/LongStream$1;->t:J

    .line 742
    .local v0, "v":J
    iget-object v2, p0, Lj$/util/stream/LongStream$1;->val$f:Lj$/util/function/LongUnaryOperator;

    iget-wide v3, p0, Lj$/util/stream/LongStream$1;->t:J

    invoke-interface {v2, v3, v4}, Lj$/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Lj$/util/stream/LongStream$1;->t:J

    .line 743
    return-wide v0
.end method

.class Lj$/util/stream/IntStream$1;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Lj$/util/PrimitiveIterator$OfInt;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/IntStream$-CC;->iterate(ILj$/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field t:I

.field final synthetic val$f:Lj$/util/function/IntUnaryOperator;

.field final synthetic val$seed:I


# direct methods
.method constructor <init>(ILj$/util/function/IntUnaryOperator;)V
    .locals 0

    .line 743
    iput p1, p0, Lj$/util/stream/IntStream$1;->val$seed:I

    iput-object p2, p0, Lj$/util/stream/IntStream$1;->val$f:Lj$/util/function/IntUnaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iget p1, p0, Lj$/util/stream/IntStream$1;->val$seed:I

    iput p1, p0, Lj$/util/stream/IntStream$1;->t:I

    return-void
.end method


# virtual methods
.method public synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/PrimitiveIterator$OfInt$-CC;->$default$forEachRemaining(Lj$/util/PrimitiveIterator$OfInt;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Lj$/util/function/IntConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/PrimitiveIterator$OfInt$-CC;->$default$forEachRemaining(Lj$/util/PrimitiveIterator$OfInt;Lj$/util/function/IntConsumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/PrimitiveIterator$OfInt$-CC;->$default$forEachRemaining(Lj$/util/PrimitiveIterator$OfInt;Ljava/lang/Object;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 748
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic next()Ljava/lang/Integer;
    .locals 1

    invoke-static {p0}, Lj$/util/PrimitiveIterator$OfInt$-CC;->$default$next(Lj$/util/PrimitiveIterator$OfInt;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lj$/util/PrimitiveIterator$OfInt$-CC;->$default$next(Lj$/util/PrimitiveIterator$OfInt;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextInt()I
    .locals 3

    .line 753
    iget v0, p0, Lj$/util/stream/IntStream$1;->t:I

    .line 754
    .local v0, "v":I
    iget-object v1, p0, Lj$/util/stream/IntStream$1;->val$f:Lj$/util/function/IntUnaryOperator;

    iget v2, p0, Lj$/util/stream/IntStream$1;->t:I

    invoke-interface {v1, v2}, Lj$/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    iput v1, p0, Lj$/util/stream/IntStream$1;->t:I

    .line 755
    return v0
.end method

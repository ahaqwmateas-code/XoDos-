.class public final synthetic Lcom/google/common/util/concurrent/AtomicLongMap$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lj$/util/function/LongUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lj$/util/function/LongUnaryOperator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AtomicLongMap$$ExternalSyntheticLambda6;->f$0:Lj$/util/function/LongUnaryOperator;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lj$/util/function/Function;)Lj$/util/function/BiFunction;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Lj$/util/function/BiFunction;Lj$/util/function/Function;)Lj$/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap$$ExternalSyntheticLambda6;->f$0:Lj$/util/function/LongUnaryOperator;

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, p1, p2}, Lcom/google/common/util/concurrent/AtomicLongMap;->lambda$updateAndGet$0(Lj$/util/function/LongUnaryOperator;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

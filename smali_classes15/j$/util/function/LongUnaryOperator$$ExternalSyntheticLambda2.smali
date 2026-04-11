.class public final synthetic Lj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/LongUnaryOperator;


# instance fields
.field public final synthetic f$0:Lj$/util/function/LongUnaryOperator;

.field public final synthetic f$1:Lj$/util/function/LongUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lj$/util/function/LongUnaryOperator;Lj$/util/function/LongUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;->f$0:Lj$/util/function/LongUnaryOperator;

    iput-object p2, p0, Lj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;->f$1:Lj$/util/function/LongUnaryOperator;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lj$/util/function/LongUnaryOperator;)Lj$/util/function/LongUnaryOperator;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/LongUnaryOperator$-CC;->$default$andThen(Lj$/util/function/LongUnaryOperator;Lj$/util/function/LongUnaryOperator;)Lj$/util/function/LongUnaryOperator;

    move-result-object p1

    return-object p1
.end method

.method public final applyAsLong(J)J
    .locals 2

    iget-object v0, p0, Lj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;->f$0:Lj$/util/function/LongUnaryOperator;

    iget-object v1, p0, Lj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;->f$1:Lj$/util/function/LongUnaryOperator;

    invoke-static {v0, v1, p1, p2}, Lj$/util/function/LongUnaryOperator$-CC;->$private$lambda$compose$0(Lj$/util/function/LongUnaryOperator;Lj$/util/function/LongUnaryOperator;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic compose(Lj$/util/function/LongUnaryOperator;)Lj$/util/function/LongUnaryOperator;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/LongUnaryOperator$-CC;->$default$compose(Lj$/util/function/LongUnaryOperator;Lj$/util/function/LongUnaryOperator;)Lj$/util/function/LongUnaryOperator;

    move-result-object p1

    return-object p1
.end method

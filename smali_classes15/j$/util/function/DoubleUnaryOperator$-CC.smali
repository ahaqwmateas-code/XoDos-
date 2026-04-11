.class public final synthetic Lj$/util/function/DoubleUnaryOperator$-CC;
.super Ljava/lang/Object;
.source "DoubleUnaryOperator.java"


# direct methods
.method public static $default$andThen(Lj$/util/function/DoubleUnaryOperator;Lj$/util/function/DoubleUnaryOperator;)Lj$/util/function/DoubleUnaryOperator;
    .locals 1
    .param p0, "_this"    # Lj$/util/function/DoubleUnaryOperator;
    .param p1, "after"    # Lj$/util/function/DoubleUnaryOperator;

    .line 83
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Lj$/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lj$/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda2;-><init>(Lj$/util/function/DoubleUnaryOperator;Lj$/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method

.method public static $default$compose(Lj$/util/function/DoubleUnaryOperator;Lj$/util/function/DoubleUnaryOperator;)Lj$/util/function/DoubleUnaryOperator;
    .locals 1
    .param p0, "_this"    # Lj$/util/function/DoubleUnaryOperator;
    .param p1, "before"    # Lj$/util/function/DoubleUnaryOperator;

    .line 65
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lj$/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lj$/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/DoubleUnaryOperator;Lj$/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$1(Lj$/util/function/DoubleUnaryOperator;Lj$/util/function/DoubleUnaryOperator;D)D
    .locals 2
    .param p0, "_this"    # Lj$/util/function/DoubleUnaryOperator;
    .param p1, "after"    # Lj$/util/function/DoubleUnaryOperator;
    .param p2, "t"    # D

    .line 84
    invoke-interface {p0, p2, p3}, Lj$/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lj$/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $private$lambda$compose$0(Lj$/util/function/DoubleUnaryOperator;Lj$/util/function/DoubleUnaryOperator;D)D
    .locals 2
    .param p0, "_this"    # Lj$/util/function/DoubleUnaryOperator;
    .param p1, "before"    # Lj$/util/function/DoubleUnaryOperator;
    .param p2, "v"    # D

    .line 66
    invoke-interface {p1, p2, p3}, Lj$/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lj$/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static identity()Lj$/util/function/DoubleUnaryOperator;
    .locals 1

    .line 93
    new-instance v0, Lj$/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lj$/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$identity$2(D)D
    .locals 0
    .param p0, "t"    # D

    .line 93
    return-wide p0
.end method

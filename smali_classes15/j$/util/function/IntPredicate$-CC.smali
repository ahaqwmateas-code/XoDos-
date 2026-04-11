.class public final synthetic Lj$/util/function/IntPredicate$-CC;
.super Ljava/lang/Object;
.source "IntPredicate.java"


# direct methods
.method public static $default$and(Lj$/util/function/IntPredicate;Lj$/util/function/IntPredicate;)Lj$/util/function/IntPredicate;
    .locals 1
    .param p0, "_this"    # Lj$/util/function/IntPredicate;
    .param p1, "other"    # Lj$/util/function/IntPredicate;

    .line 69
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Lj$/util/function/IntPredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lj$/util/function/IntPredicate$$ExternalSyntheticLambda2;-><init>(Lj$/util/function/IntPredicate;Lj$/util/function/IntPredicate;)V

    return-object v0
.end method

.method public static $default$negate(Lj$/util/function/IntPredicate;)Lj$/util/function/IntPredicate;
    .locals 1
    .param p0, "_this"    # Lj$/util/function/IntPredicate;

    .line 81
    new-instance v0, Lj$/util/function/IntPredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lj$/util/function/IntPredicate$$ExternalSyntheticLambda1;-><init>(Lj$/util/function/IntPredicate;)V

    return-object v0
.end method

.method public static $default$or(Lj$/util/function/IntPredicate;Lj$/util/function/IntPredicate;)Lj$/util/function/IntPredicate;
    .locals 1
    .param p0, "_this"    # Lj$/util/function/IntPredicate;
    .param p1, "other"    # Lj$/util/function/IntPredicate;

    .line 101
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Lj$/util/function/IntPredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lj$/util/function/IntPredicate$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/IntPredicate;Lj$/util/function/IntPredicate;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$and$0(Lj$/util/function/IntPredicate;Lj$/util/function/IntPredicate;I)Z
    .locals 1
    .param p0, "_this"    # Lj$/util/function/IntPredicate;
    .param p1, "other"    # Lj$/util/function/IntPredicate;
    .param p2, "value"    # I

    .line 70
    invoke-interface {p0, p2}, Lj$/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lj$/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic $private$lambda$negate$1(Lj$/util/function/IntPredicate;I)Z
    .locals 1
    .param p0, "_this"    # Lj$/util/function/IntPredicate;
    .param p1, "value"    # I

    .line 81
    invoke-interface {p0, p1}, Lj$/util/function/IntPredicate;->test(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic $private$lambda$or$2(Lj$/util/function/IntPredicate;Lj$/util/function/IntPredicate;I)Z
    .locals 1
    .param p0, "_this"    # Lj$/util/function/IntPredicate;
    .param p1, "other"    # Lj$/util/function/IntPredicate;
    .param p2, "value"    # I

    .line 102
    invoke-interface {p0, p2}, Lj$/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lj$/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.class public final synthetic Lj$/util/function/Predicate$-CC;
.super Ljava/lang/Object;
.source "Predicate.java"


# direct methods
.method public static $default$and(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 1
    .param p0, "_this"    # Lj$/util/function/Predicate;

    .line 68
    .local p1, "other":Lj$/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lj$/util/function/Predicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lj$/util/function/Predicate$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)V

    return-object v0
.end method

.method public static $default$negate(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 1
    .param p0, "_this"    # Lj$/util/function/Predicate;

    .line 80
    new-instance v0, Lj$/util/function/Predicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lj$/util/function/Predicate$$ExternalSyntheticLambda1;-><init>(Lj$/util/function/Predicate;)V

    return-object v0
.end method

.method public static $default$or(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 1
    .param p0, "_this"    # Lj$/util/function/Predicate;

    .line 100
    .local p1, "other":Lj$/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lj$/util/function/Predicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lj$/util/function/Predicate$$ExternalSyntheticLambda2;-><init>(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$and$0(Lj$/util/function/Predicate;Lj$/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Lj$/util/function/Predicate;
    .param p1, "other"    # Lj$/util/function/Predicate;
    .param p2, "t"    # Ljava/lang/Object;

    .line 69
    invoke-interface {p0, p2}, Lj$/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lj$/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic $private$lambda$negate$1(Lj$/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Lj$/util/function/Predicate;
    .param p1, "t"    # Ljava/lang/Object;

    .line 80
    invoke-interface {p0, p1}, Lj$/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic $private$lambda$or$2(Lj$/util/function/Predicate;Lj$/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Lj$/util/function/Predicate;
    .param p1, "other"    # Lj$/util/function/Predicate;
    .param p2, "t"    # Ljava/lang/Object;

    .line 101
    invoke-interface {p0, p2}, Lj$/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lj$/util/function/Predicate;->test(Ljava/lang/Object;)Z

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

.method public static isEqual(Ljava/lang/Object;)Lj$/util/function/Predicate;
    .locals 1
    .param p0, "targetRef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lj$/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 115
    if-nez p0, :cond_0

    .line 116
    new-instance v0, Lj$/util/function/Predicate$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lj$/util/function/Predicate$$ExternalSyntheticLambda3;-><init>()V

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Lj$/util/function/Predicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lj$/util/function/Predicate$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$isEqual$3(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "targetRef"    # Ljava/lang/Object;
    .param p1, "object"    # Ljava/lang/Object;

    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.class public interface abstract Lj$/util/function/BiPredicate;
.super Ljava/lang/Object;
.source "BiPredicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract and(Lj$/util/function/BiPredicate;)Lj$/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/BiPredicate<",
            "-TT;-TU;>;)",
            "Lj$/util/function/BiPredicate<",
            "TT;TU;>;"
        }
    .end annotation
.end method

.method public abstract negate()Lj$/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/function/BiPredicate<",
            "TT;TU;>;"
        }
    .end annotation
.end method

.method public abstract or(Lj$/util/function/BiPredicate;)Lj$/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/BiPredicate<",
            "-TT;-TU;>;)",
            "Lj$/util/function/BiPredicate<",
            "TT;TU;>;"
        }
    .end annotation
.end method

.method public abstract test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)Z"
        }
    .end annotation
.end method

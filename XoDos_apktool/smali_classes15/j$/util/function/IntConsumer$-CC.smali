.class public final synthetic Lj$/util/function/IntConsumer$-CC;
.super Ljava/lang/Object;
.source "IntConsumer.java"


# direct methods
.method public static $default$andThen(Lj$/util/function/IntConsumer;Lj$/util/function/IntConsumer;)Lj$/util/function/IntConsumer;
    .locals 1
    .param p0, "_this"    # Lj$/util/function/IntConsumer;
    .param p1, "after"    # Lj$/util/function/IntConsumer;

    .line 64
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lj$/util/function/IntConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lj$/util/function/IntConsumer$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/IntConsumer;Lj$/util/function/IntConsumer;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$0(Lj$/util/function/IntConsumer;Lj$/util/function/IntConsumer;I)V
    .locals 0
    .param p0, "_this"    # Lj$/util/function/IntConsumer;
    .param p1, "after"    # Lj$/util/function/IntConsumer;
    .param p2, "t"    # I

    .line 65
    invoke-interface {p0, p2}, Lj$/util/function/IntConsumer;->accept(I)V

    invoke-interface {p1, p2}, Lj$/util/function/IntConsumer;->accept(I)V

    return-void
.end method

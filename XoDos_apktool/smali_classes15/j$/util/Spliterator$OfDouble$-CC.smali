.class public final synthetic Lj$/util/Spliterator$OfDouble$-CC;
.super Ljava/lang/Object;
.source "Spliterator.java"


# direct methods
.method public static $default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Lj$/util/function/Consumer;)V
    .locals 2
    .param p0, "_this"    # Lj$/util/Spliterator$OfDouble;

    .line 821
    .local p1, "action":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Lj$/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 822
    move-object v0, p1

    check-cast v0, Lj$/util/function/DoubleConsumer;

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfDouble;->forEachRemaining(Lj$/util/function/DoubleConsumer;)V

    goto :goto_0

    .line 825
    :cond_0
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 826
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)"

    invoke-static {v0, v1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 828
    :cond_1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfDouble;->forEachRemaining(Lj$/util/function/DoubleConsumer;)V

    .line 830
    :goto_0
    return-void
.end method

.method public static $default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Lj$/util/function/DoubleConsumer;)V
    .locals 1
    .param p0, "_this"    # Lj$/util/Spliterator$OfDouble;
    .param p1, "action"    # Lj$/util/function/DoubleConsumer;

    .line 782
    :cond_0
    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Lj$/util/function/DoubleConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    return-void
.end method

.method public static bridge synthetic $default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lj$/util/Spliterator$OfDouble;

    .line 772
    check-cast p1, Lj$/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfDouble;->forEachRemaining(Lj$/util/function/DoubleConsumer;)V

    return-void
.end method

.method public static $default$tryAdvance(Lj$/util/Spliterator$OfDouble;Lj$/util/function/Consumer;)Z
    .locals 2
    .param p0, "_this"    # Lj$/util/Spliterator$OfDouble;

    .line 797
    .local p1, "action":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Lj$/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 798
    move-object v0, p1

    check-cast v0, Lj$/util/function/DoubleConsumer;

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Lj$/util/function/DoubleConsumer;)Z

    move-result v0

    return v0

    .line 801
    :cond_0
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)"

    invoke-static {v0, v1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 804
    :cond_1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Lj$/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic $default$tryAdvance(Lj$/util/Spliterator$OfDouble;Ljava/lang/Object;)Z
    .locals 0
    .param p0, "_this"    # Lj$/util/Spliterator$OfDouble;

    .line 772
    check-cast p1, Lj$/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Lj$/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public static bridge synthetic $default$trySplit(Lj$/util/Spliterator$OfDouble;)Lj$/util/Spliterator$OfPrimitive;
    .locals 1
    .param p0, "_this"    # Lj$/util/Spliterator$OfDouble;

    .line 772
    invoke-interface {p0}, Lj$/util/Spliterator$OfDouble;->trySplit()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$trySplit(Lj$/util/Spliterator$OfDouble;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/Spliterator$OfDouble;

    .line 772
    invoke-interface {p0}, Lj$/util/Spliterator$OfDouble;->trySplit()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

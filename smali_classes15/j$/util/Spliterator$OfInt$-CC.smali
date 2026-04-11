.class public final synthetic Lj$/util/Spliterator$OfInt$-CC;
.super Ljava/lang/Object;
.source "Spliterator.java"


# direct methods
.method public static $default$forEachRemaining(Lj$/util/Spliterator$OfInt;Lj$/util/function/Consumer;)V
    .locals 2
    .param p0, "_this"    # Lj$/util/Spliterator$OfInt;

    .line 692
    .local p1, "action":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    instance-of v0, p1, Lj$/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 693
    move-object v0, p1

    check-cast v0, Lj$/util/function/IntConsumer;

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Lj$/util/function/IntConsumer;)V

    goto :goto_0

    .line 696
    :cond_0
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 697
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)"

    invoke-static {v0, v1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 699
    :cond_1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/PrimitiveIterator$OfInt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfInt$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Lj$/util/function/IntConsumer;)V

    .line 701
    :goto_0
    return-void
.end method

.method public static $default$forEachRemaining(Lj$/util/Spliterator$OfInt;Lj$/util/function/IntConsumer;)V
    .locals 1
    .param p0, "_this"    # Lj$/util/Spliterator$OfInt;
    .param p1, "action"    # Lj$/util/function/IntConsumer;

    .line 654
    :cond_0
    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfInt;->tryAdvance(Lj$/util/function/IntConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    return-void
.end method

.method public static bridge synthetic $default$forEachRemaining(Lj$/util/Spliterator$OfInt;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lj$/util/Spliterator$OfInt;

    .line 644
    check-cast p1, Lj$/util/function/IntConsumer;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Lj$/util/function/IntConsumer;)V

    return-void
.end method

.method public static $default$tryAdvance(Lj$/util/Spliterator$OfInt;Lj$/util/function/Consumer;)Z
    .locals 2
    .param p0, "_this"    # Lj$/util/Spliterator$OfInt;

    .line 669
    .local p1, "action":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    instance-of v0, p1, Lj$/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 670
    move-object v0, p1

    check-cast v0, Lj$/util/function/IntConsumer;

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfInt;->tryAdvance(Lj$/util/function/IntConsumer;)Z

    move-result v0

    return v0

    .line 673
    :cond_0
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 674
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)"

    invoke-static {v0, v1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 676
    :cond_1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/PrimitiveIterator$OfInt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfInt$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfInt;->tryAdvance(Lj$/util/function/IntConsumer;)Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic $default$tryAdvance(Lj$/util/Spliterator$OfInt;Ljava/lang/Object;)Z
    .locals 0
    .param p0, "_this"    # Lj$/util/Spliterator$OfInt;

    .line 644
    check-cast p1, Lj$/util/function/IntConsumer;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfInt;->tryAdvance(Lj$/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public static bridge synthetic $default$trySplit(Lj$/util/Spliterator$OfInt;)Lj$/util/Spliterator$OfPrimitive;
    .locals 1
    .param p0, "_this"    # Lj$/util/Spliterator$OfInt;

    .line 644
    invoke-interface {p0}, Lj$/util/Spliterator$OfInt;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$trySplit(Lj$/util/Spliterator$OfInt;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "_this"    # Lj$/util/Spliterator$OfInt;

    .line 644
    invoke-interface {p0}, Lj$/util/Spliterator$OfInt;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

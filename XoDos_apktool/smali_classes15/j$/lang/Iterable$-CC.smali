.class public final synthetic Lj$/lang/Iterable$-CC;
.super Ljava/lang/Object;
.source "Iterable.java"


# direct methods
.method public static $default$forEach(Ljava/lang/Iterable;Lj$/util/function/Consumer;)V
    .locals 2
    .param p0, "_this"    # Ljava/lang/Iterable;

    .line 76
    .local p1, "action":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    sget-object v0, Lj$/util/DesugarCollections;->SYNCHRONIZED_COLLECTION:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0, p1}, Lj$/util/DesugarCollections;->forEach(Ljava/lang/Iterable;Lj$/util/function/Consumer;)V

    .line 78
    return-void

    .line 80
    :cond_0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 83
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method

.method public static $default$spliterator(Ljava/lang/Iterable;)Lj$/util/Spliterator;
    .locals 2
    .param p0, "_this"    # Ljava/lang/Iterable;

    .line 108
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

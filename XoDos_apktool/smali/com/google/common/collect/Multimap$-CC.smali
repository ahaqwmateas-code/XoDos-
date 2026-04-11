.class public final synthetic Lcom/google/common/collect/Multimap$-CC;
.super Ljava/lang/Object;
.source "Multimap.java"


# direct methods
.method public static $default$forEach(Lcom/google/common/collect/Multimap;Lj$/util/function/BiConsumer;)V
    .locals 2
    .param p0, "_this"    # Lcom/google/common/collect/Multimap;

    .line 341
    .local p0, "this":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<TK;TV;>;"
    .local p1, "action":Lj$/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multimap$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/google/common/collect/Multimap$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/BiConsumer;)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Lj$/util/function/Consumer;)V

    .line 343
    return-void
.end method

.method public static synthetic lambda$forEach$0(Lj$/util/function/BiConsumer;Ljava/util/Map$Entry;)V
    .locals 2
    .param p0, "action"    # Lj$/util/function/BiConsumer;
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 342
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

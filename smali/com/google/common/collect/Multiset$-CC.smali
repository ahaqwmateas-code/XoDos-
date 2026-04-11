.class public final synthetic Lcom/google/common/collect/Multiset$-CC;
.super Ljava/lang/Object;
.source "Multiset.java"


# direct methods
.method public static $default$forEach(Lcom/google/common/collect/Multiset;Lj$/util/function/Consumer;)V
    .locals 2
    .param p0, "_this"    # Lcom/google/common/collect/Multiset;

    .line 459
    .local p0, "this":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "action":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multiset$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/google/common/collect/Multiset$$ExternalSyntheticLambda1;-><init>(Lj$/util/function/Consumer;)V

    .line 461
    invoke-static {v0, v1}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Lj$/util/function/Consumer;)V

    .line 469
    return-void
.end method

.method public static $default$forEachEntry(Lcom/google/common/collect/Multiset;Lj$/util/function/ObjIntConsumer;)V
    .locals 2
    .param p0, "_this"    # Lcom/google/common/collect/Multiset;

    .line 338
    .local p0, "this":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "action":Lj$/util/function/ObjIntConsumer;, "Ljava/util/function/ObjIntConsumer<-TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multiset$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/google/common/collect/Multiset$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/ObjIntConsumer;)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Lj$/util/function/Consumer;)V

    .line 340
    return-void
.end method

.method public static $default$spliterator(Lcom/google/common/collect/Multiset;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "_this"    # Lcom/google/common/collect/Multiset;

    .line 473
    .local p0, "this":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->spliteratorImpl(Lcom/google/common/collect/Multiset;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$forEach$1(Lj$/util/function/Consumer;Lcom/google/common/collect/Multiset$Entry;)V
    .locals 3
    .param p0, "action"    # Lj$/util/function/Consumer;
    .param p1, "entry"    # Lcom/google/common/collect/Multiset$Entry;

    .line 463
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 464
    .local v0, "elem":Ljava/lang/Object;, "TE;"
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    .line 465
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 466
    invoke-interface {p0, v0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public static synthetic lambda$forEachEntry$0(Lj$/util/function/ObjIntConsumer;Lcom/google/common/collect/Multiset$Entry;)V
    .locals 2
    .param p0, "action"    # Lj$/util/function/ObjIntConsumer;
    .param p1, "entry"    # Lcom/google/common/collect/Multiset$Entry;

    .line 339
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lj$/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method

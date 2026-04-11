.class final Lcom/google/common/collect/CollectSpliterators;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static filter(Lj$/util/Spliterator;Lj$/util/function/Predicate;)Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TT;>;",
            "Lj$/util/function/Predicate<",
            "-TT;>;)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 141
    .local p0, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p1, "predicate":Lj$/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$1Splitr;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CollectSpliterators$1Splitr;-><init>(Lj$/util/Spliterator;Lj$/util/function/Predicate;)V

    return-object v0
.end method

.method static flatMap(Lj$/util/Spliterator;Lj$/util/function/Function;IJ)Lj$/util/Spliterator;
    .locals 9
    .param p2, "topCharacteristics"    # I
    .param p3, "topSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TF;>;",
            "Lj$/util/function/Function<",
            "-TF;",
            "Lj$/util/Spliterator<",
            "TT;>;>;IJ)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 203
    .local p0, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TF;>;"
    .local p1, "function":Lj$/util/function/Function;, "Ljava/util/function/Function<-TF;Ljava/util/Spliterator<TT;>;>;"
    and-int/lit16 v0, p2, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "flatMap does not support SUBSIZED characteristic"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 206
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "flatMap does not support SORTED characteristic"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 209
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;

    const/4 v3, 0x0

    move-object v2, v0

    move-object v4, p0

    move v5, p2

    move-wide v6, p3

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;-><init>(Lj$/util/Spliterator;Lj$/util/Spliterator;IJLj$/util/function/Function;)V

    return-object v0
.end method

.method static indexed(IILj$/util/function/IntFunction;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "size"    # I
    .param p1, "extraCharacteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lj$/util/function/IntFunction<",
            "TT;>;)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 39
    .local p2, "function":Lj$/util/function/IntFunction;, "Ljava/util/function/IntFunction<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/common/collect/CollectSpliterators;->indexed(IILj$/util/function/IntFunction;Ljava/util/Comparator;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method static indexed(IILj$/util/function/IntFunction;Ljava/util/Comparator;)Lj$/util/Spliterator;
    .locals 2
    .param p0, "size"    # I
    .param p1, "extraCharacteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lj$/util/function/IntFunction<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 47
    .local p2, "function":Lj$/util/function/IntFunction;, "Ljava/util/function/IntFunction<TT;>;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 48
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 96
    :cond_1
    new-instance v1, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;

    invoke-static {v0, p0}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-direct {v1, v0, p2, p1, p3}, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;-><init>(Lj$/util/Spliterator$OfInt;Lj$/util/function/IntFunction;ILjava/util/Comparator;)V

    return-object v1
.end method

.method static map(Lj$/util/Spliterator;Lj$/util/function/Function;)Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TF;>;",
            "Lj$/util/function/Function<",
            "-TF;+TT;>;)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 105
    .local p0, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TF;>;"
    .local p1, "function":Lj$/util/function/Function;, "Ljava/util/function/Function<-TF;+TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CollectSpliterators$1;-><init>(Lj$/util/Spliterator;Lj$/util/function/Function;)V

    return-object v0
.end method

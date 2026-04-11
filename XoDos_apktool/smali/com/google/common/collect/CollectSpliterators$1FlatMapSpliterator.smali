.class Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CollectSpliterators;->flatMap(Lj$/util/Spliterator;Lj$/util/function/Function;IJ)Lj$/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlatMapSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field characteristics:I

.field estimatedSize:J

.field final from:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/Spliterator<",
            "TF;>;"
        }
    .end annotation
.end field

.field prefix:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final synthetic val$function:Lj$/util/function/Function;


# direct methods
.method constructor <init>(Lj$/util/Spliterator;Lj$/util/Spliterator;IJLj$/util/function/Function;)V
    .locals 0
    .param p3, "characteristics"    # I
    .param p4, "estimatedSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;",
            "Lj$/util/Spliterator<",
            "TF;>;IJ)V"
        }
    .end annotation

    .line 218
    .local p1, "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "from":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TF;>;"
    iput-object p6, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->val$function:Lj$/util/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    .line 220
    iput-object p2, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->from:Lj$/util/Spliterator;

    .line 221
    iput p3, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->characteristics:I

    .line 222
    iput-wide p4, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    .line 223
    return-void
.end method

.method static synthetic lambda$forEachRemaining$1(Lj$/util/function/Function;Lj$/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1
    .param p0, "function"    # Lj$/util/function/Function;
    .param p1, "action"    # Lj$/util/function/Consumer;
    .param p2, "fromElement"    # Ljava/lang/Object;

    .line 248
    invoke-interface {p0, p2}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Lj$/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    if-eqz v0, :cond_0

    .line 279
    iget-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    iget-object v2, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    invoke-interface {v2}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    .line 281
    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 244
    .local p1, "action":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Lj$/util/function/Consumer;)V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->from:Lj$/util/Spliterator;

    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->val$function:Lj$/util/function/Function;

    new-instance v2, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator$$ExternalSyntheticLambda1;-><init>(Lj$/util/function/Function;Lj$/util/function/Consumer;)V

    invoke-interface {v0, v2}, Lj$/util/Spliterator;->forEachRemaining(Lj$/util/function/Consumer;)V

    .line 249
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    .line 250
    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$tryAdvance$0$com-google-common-collect-CollectSpliterators$1FlatMapSpliterator(Lj$/util/function/Function;Ljava/lang/Object;)V
    .locals 1
    .param p1, "function"    # Lj$/util/function/Function;
    .param p2, "fromElement"    # Ljava/lang/Object;

    .line 236
    invoke-interface {p1, p2}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator;

    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    return-void
.end method

.method public tryAdvance(Lj$/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 228
    .local p1, "action":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    nop

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->tryAdvance(Lj$/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    iget-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 230
    iget-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    .line 232
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    .line 236
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->from:Lj$/util/Spliterator;

    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->val$function:Lj$/util/function/Function;

    new-instance v2, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;Lj$/util/function/Function;)V

    invoke-interface {v0, v2}, Lj$/util/Spliterator;->tryAdvance(Lj$/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->from:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    .line 255
    .local v0, "fromSplit":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TF;>;"
    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 256
    iget v1, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->characteristics:I

    and-int/lit8 v9, v1, -0x41

    .line 257
    .local v9, "splitCharacteristics":I
    invoke-virtual {p0}, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimateSize()J

    move-result-wide v1

    .line 258
    .local v1, "estSplitSize":J
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 259
    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    .line 260
    iget-wide v3, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    .line 261
    iput v9, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->characteristics:I

    move-wide v10, v1

    goto :goto_0

    .line 258
    :cond_0
    move-wide v10, v1

    .line 263
    .end local v1    # "estSplitSize":J
    .local v10, "estSplitSize":J
    :goto_0
    new-instance v12, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;

    iget-object v2, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    iget-object v7, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->val$function:Lj$/util/function/Function;

    move-object v1, v12

    move-object v3, v0

    move v4, v9

    move-wide v5, v10

    invoke-direct/range {v1 .. v7}, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;-><init>(Lj$/util/Spliterator;Lj$/util/Spliterator;IJLj$/util/function/Function;)V

    .line 265
    .local v1, "result":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    iput-object v8, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    .line 266
    return-object v1

    .line 267
    .end local v1    # "result":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .end local v9    # "splitCharacteristics":I
    .end local v10    # "estSplitSize":J
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    if-eqz v1, :cond_2

    .line 268
    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    .line 269
    .restart local v1    # "result":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    iput-object v8, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    .line 270
    return-object v1

    .line 272
    .end local v1    # "result":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_2
    return-object v8
.end method

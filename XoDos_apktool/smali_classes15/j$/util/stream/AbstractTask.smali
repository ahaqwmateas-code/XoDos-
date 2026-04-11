.class abstract Lj$/util/stream/AbstractTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "AbstractTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "K:",
        "Lj$/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;TR;TK;>;>",
        "Ljava/util/concurrent/CountedCompleter<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final LEAF_TARGET:I


# instance fields
.field protected final helper:Lj$/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/PipelineHelper<",
            "TP_OUT;>;"
        }
    .end annotation
.end field

.field protected leftChild:Lj$/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private localResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field protected rightChild:Lj$/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected spliterator:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/Spliterator<",
            "TP_IN;>;"
        }
    .end annotation
.end field

.field protected targetSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    sput v0, Lj$/util/stream/AbstractTask;->LEAF_TARGET:I

    return-void
.end method

.method protected constructor <init>(Lj$/util/stream/AbstractTask;Lj$/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 153
    .local p0, "this":Lj$/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "parent":Lj$/util/stream/AbstractTask;, "TK;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 154
    iput-object p2, p0, Lj$/util/stream/AbstractTask;->spliterator:Lj$/util/Spliterator;

    .line 155
    iget-object v0, p1, Lj$/util/stream/AbstractTask;->helper:Lj$/util/stream/PipelineHelper;

    iput-object v0, p0, Lj$/util/stream/AbstractTask;->helper:Lj$/util/stream/PipelineHelper;

    .line 156
    iget-wide v0, p1, Lj$/util/stream/AbstractTask;->targetSize:J

    iput-wide v0, p0, Lj$/util/stream/AbstractTask;->targetSize:J

    .line 157
    return-void
.end method

.method protected constructor <init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 138
    .local p0, "this":Lj$/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 139
    iput-object p1, p0, Lj$/util/stream/AbstractTask;->helper:Lj$/util/stream/PipelineHelper;

    .line 140
    iput-object p2, p0, Lj$/util/stream/AbstractTask;->spliterator:Lj$/util/Spliterator;

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lj$/util/stream/AbstractTask;->targetSize:J

    .line 142
    return-void
.end method

.method public static suggestTargetSize(J)J
    .locals 5
    .param p0, "sizeEstimate"    # J

    .line 184
    sget v0, Lj$/util/stream/AbstractTask;->LEAF_TARGET:I

    int-to-long v0, v0

    div-long v0, p0, v0

    .line 185
    .local v0, "est":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    return-wide v2
.end method


# virtual methods
.method public compute()V
    .locals 11

    .line 292
    .local p0, "this":Lj$/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Lj$/util/stream/AbstractTask;->spliterator:Lj$/util/Spliterator;

    .line 293
    .local v0, "rs":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 294
    .local v1, "sizeEstimate":J
    invoke-virtual {p0, v1, v2}, Lj$/util/stream/AbstractTask;->getTargetSize(J)J

    move-result-wide v3

    .line 295
    .local v3, "sizeThreshold":J
    const/4 v5, 0x0

    .line 296
    .local v5, "forkRight":Z
    move-object v6, p0

    .line 297
    .local v6, "task":Lj$/util/stream/AbstractTask;, "TK;"
    :goto_0
    cmp-long v7, v1, v3

    if-lez v7, :cond_1

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v7

    move-object v8, v7

    .local v8, "ls":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    if-eqz v7, :cond_1

    .line 299
    invoke-virtual {v6, v8}, Lj$/util/stream/AbstractTask;->makeChild(Lj$/util/Spliterator;)Lj$/util/stream/AbstractTask;

    move-result-object v7

    move-object v9, v7

    .local v9, "leftChild":Lj$/util/stream/AbstractTask;, "TK;"
    iput-object v7, v6, Lj$/util/stream/AbstractTask;->leftChild:Lj$/util/stream/AbstractTask;

    .line 300
    invoke-virtual {v6, v0}, Lj$/util/stream/AbstractTask;->makeChild(Lj$/util/Spliterator;)Lj$/util/stream/AbstractTask;

    move-result-object v7

    move-object v10, v7

    .local v10, "rightChild":Lj$/util/stream/AbstractTask;, "TK;"
    iput-object v7, v6, Lj$/util/stream/AbstractTask;->rightChild:Lj$/util/stream/AbstractTask;

    .line 301
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lj$/util/stream/AbstractTask;->setPendingCount(I)V

    .line 302
    if-eqz v5, :cond_0

    .line 303
    const/4 v5, 0x0

    .line 304
    move-object v0, v8

    .line 305
    move-object v6, v9

    .line 306
    move-object v7, v10

    .local v7, "taskToFork":Lj$/util/stream/AbstractTask;, "TK;"
    goto :goto_1

    .line 309
    .end local v7    # "taskToFork":Lj$/util/stream/AbstractTask;, "TK;"
    :cond_0
    const/4 v5, 0x1

    .line 310
    move-object v6, v10

    .line 311
    move-object v7, v9

    .line 313
    .restart local v7    # "taskToFork":Lj$/util/stream/AbstractTask;, "TK;"
    :goto_1
    invoke-virtual {v7}, Lj$/util/stream/AbstractTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 314
    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 315
    .end local v7    # "taskToFork":Lj$/util/stream/AbstractTask;, "TK;"
    .end local v9    # "leftChild":Lj$/util/stream/AbstractTask;, "TK;"
    .end local v10    # "rightChild":Lj$/util/stream/AbstractTask;, "TK;"
    goto :goto_0

    .line 316
    .end local v8    # "ls":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_1
    invoke-virtual {v6}, Lj$/util/stream/AbstractTask;->doLeaf()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lj$/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v6}, Lj$/util/stream/AbstractTask;->tryComplete()V

    .line 318
    return-void
.end method

.method protected abstract doLeaf()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method protected getLocalResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lj$/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Lj$/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-object v0
.end method

.method protected getParent()Lj$/util/stream/AbstractTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 274
    .local p0, "this":Lj$/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Lj$/util/stream/AbstractTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    check-cast v0, Lj$/util/stream/AbstractTask;

    return-object v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 209
    .local p0, "this":Lj$/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Lj$/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-object v0
.end method

.method protected final getTargetSize(J)J
    .locals 7
    .param p1, "sizeEstimate"    # J

    .line 194
    .local p0, "this":Lj$/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-wide v0, p0, Lj$/util/stream/AbstractTask;->targetSize:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    move-wide v0, v2

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {p1, p2}, Lj$/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v0

    iput-wide v0, p0, Lj$/util/stream/AbstractTask;->targetSize:J

    .line 194
    :goto_0
    return-wide v0
.end method

.method protected isLeaf()Z
    .locals 1

    .line 255
    .local p0, "this":Lj$/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Lj$/util/stream/AbstractTask;->leftChild:Lj$/util/stream/AbstractTask;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isLeftmostNode()Z
    .locals 3

    .line 343
    .local p0, "this":Lj$/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    move-object v0, p0

    .line 344
    .local v0, "node":Lj$/util/stream/AbstractTask;, "TK;"
    :goto_0
    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {v0}, Lj$/util/stream/AbstractTask;->getParent()Lj$/util/stream/AbstractTask;

    move-result-object v1

    .line 346
    .local v1, "parent":Lj$/util/stream/AbstractTask;, "TK;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Lj$/util/stream/AbstractTask;->leftChild:Lj$/util/stream/AbstractTask;

    if-eq v2, v0, :cond_0

    .line 347
    const/4 v2, 0x0

    return v2

    .line 348
    :cond_0
    move-object v0, v1

    .line 349
    .end local v1    # "parent":Lj$/util/stream/AbstractTask;, "TK;"
    goto :goto_0

    .line 350
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected isRoot()Z
    .locals 1

    .line 264
    .local p0, "this":Lj$/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Lj$/util/stream/AbstractTask;->getParent()Lj$/util/stream/AbstractTask;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract makeChild(Lj$/util/Spliterator;)Lj$/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)TK;"
        }
    .end annotation
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 330
    .local p0, "this":Lj$/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/AbstractTask;->spliterator:Lj$/util/Spliterator;

    .line 331
    iput-object v0, p0, Lj$/util/stream/AbstractTask;->rightChild:Lj$/util/stream/AbstractTask;

    iput-object v0, p0, Lj$/util/stream/AbstractTask;->leftChild:Lj$/util/stream/AbstractTask;

    .line 332
    return-void
.end method

.method protected setLocalResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 243
    .local p0, "this":Lj$/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "localResult":Ljava/lang/Object;, "TR;"
    iput-object p1, p0, Lj$/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    .line 244
    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 222
    .local p0, "this":Lj$/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    if-nez p1, :cond_0

    .line 224
    return-void

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

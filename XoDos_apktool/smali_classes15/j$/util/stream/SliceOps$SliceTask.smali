.class final Lj$/util/stream/SliceOps$SliceTask;
.super Lj$/util/stream/AbstractShortCircuitTask;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SliceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SliceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/AbstractShortCircuitTask<",
        "TP_IN;TP_OUT;",
        "Lj$/util/stream/Node<",
        "TP_OUT;>;",
        "Lj$/util/stream/SliceOps$SliceTask<",
        "TP_IN;TP_OUT;>;>;"
    }
.end annotation


# instance fields
.field private volatile completed:Z

.field private final generator:Lj$/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/function/IntFunction<",
            "[TP_OUT;>;"
        }
    .end annotation
.end field

.field private final op:Lj$/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field private final targetOffset:J

.field private final targetSize:J

.field private thisNodeSize:J


# direct methods
.method constructor <init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Lj$/util/function/IntFunction;JJ)V
    .locals 0
    .param p5, "offset"    # J
    .param p7, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;",
            "Lj$/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;",
            "Lj$/util/function/IntFunction<",
            "[TP_OUT;>;JJ)V"
        }
    .end annotation

    .line 573
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "op":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TP_OUT;TP_OUT;*>;"
    .local p2, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Lj$/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-direct {p0, p2, p3}, Lj$/util/stream/AbstractShortCircuitTask;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V

    .line 574
    iput-object p1, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    .line 575
    iput-object p4, p0, Lj$/util/stream/SliceOps$SliceTask;->generator:Lj$/util/function/IntFunction;

    .line 576
    iput-wide p5, p0, Lj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    .line 577
    iput-wide p7, p0, Lj$/util/stream/SliceOps$SliceTask;->targetSize:J

    .line 578
    return-void
.end method

.method constructor <init>(Lj$/util/stream/SliceOps$SliceTask;Lj$/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/SliceOps$SliceTask<",
            "TP_IN;TP_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 581
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "parent":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractShortCircuitTask;-><init>(Lj$/util/stream/AbstractShortCircuitTask;Lj$/util/Spliterator;)V

    .line 582
    iget-object v0, p1, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    iput-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    .line 583
    iget-object v0, p1, Lj$/util/stream/SliceOps$SliceTask;->generator:Lj$/util/function/IntFunction;

    iput-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->generator:Lj$/util/function/IntFunction;

    .line 584
    iget-wide v0, p1, Lj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    iput-wide v0, p0, Lj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    .line 585
    iget-wide v0, p1, Lj$/util/stream/SliceOps$SliceTask;->targetSize:J

    iput-wide v0, p0, Lj$/util/stream/SliceOps$SliceTask;->targetSize:J

    .line 586
    return-void
.end method

.method private completedSize(J)J
    .locals 6
    .param p1, "target"    # J

    .line 699
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-boolean v0, p0, Lj$/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    .line 700
    iget-wide v0, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide v0

    .line 702
    :cond_0
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/SliceOps$SliceTask;

    .line 703
    .local v0, "left":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-object v1, p0, Lj$/util/stream/SliceOps$SliceTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v1, Lj$/util/stream/SliceOps$SliceTask;

    .line 704
    .local v1, "right":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    .line 709
    :cond_1
    invoke-direct {v0, p1, p2}, Lj$/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v2

    .line 710
    .local v2, "leftSize":J
    cmp-long v4, v2, p1

    if-ltz v4, :cond_2

    move-wide v4, v2

    goto :goto_0

    :cond_2
    invoke-direct {v1, p1, p2}, Lj$/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    :goto_0
    return-wide v4

    .line 706
    .end local v2    # "leftSize":J
    :cond_3
    :goto_1
    iget-wide v2, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide v2
.end method

.method private doTruncate(Lj$/util/stream/Node;)Lj$/util/stream/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;)",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 657
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "input":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    iget-wide v0, p0, Lj$/util/stream/SliceOps$SliceTask;->targetSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-interface {p1}, Lj$/util/stream/Node;->count()J

    move-result-wide v0

    iget-wide v2, p0, Lj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v4, p0, Lj$/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    :goto_0
    move-wide v5, v0

    .line 658
    .local v5, "to":J
    iget-wide v3, p0, Lj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-object v7, p0, Lj$/util/stream/SliceOps$SliceTask;->generator:Lj$/util/function/IntFunction;

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lj$/util/stream/Node;->truncate(JJLj$/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method private isLeftCompleted(J)Z
    .locals 8
    .param p1, "target"    # J

    .line 670
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-boolean v0, p0, Lj$/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v0

    .line 671
    .local v0, "size":J
    :goto_0
    const/4 v2, 0x1

    cmp-long v3, v0, p1

    if-ltz v3, :cond_1

    .line 672
    return v2

    .line 673
    :cond_1
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->getParent()Lj$/util/stream/AbstractTask;

    move-result-object v3

    check-cast v3, Lj$/util/stream/SliceOps$SliceTask;

    .local v3, "parent":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    move-object v4, p0

    .line 674
    .local v4, "node":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    :goto_1
    if-eqz v3, :cond_3

    .line 676
    iget-object v5, v3, Lj$/util/stream/SliceOps$SliceTask;->rightChild:Lj$/util/stream/AbstractTask;

    if-ne v4, v5, :cond_2

    .line 677
    iget-object v5, v3, Lj$/util/stream/SliceOps$SliceTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v5, Lj$/util/stream/SliceOps$SliceTask;

    .line 678
    .local v5, "left":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    if-eqz v5, :cond_2

    .line 679
    invoke-direct {v5, p1, p2}, Lj$/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 680
    cmp-long v6, v0, p1

    if-ltz v6, :cond_2

    .line 681
    return v2

    .line 675
    .end local v5    # "left":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    :cond_2
    move-object v4, v3

    invoke-virtual {v3}, Lj$/util/stream/SliceOps$SliceTask;->getParent()Lj$/util/stream/AbstractTask;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lj$/util/stream/SliceOps$SliceTask;

    goto :goto_1

    .line 685
    .end local v3    # "parent":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .end local v4    # "node":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    :cond_3
    cmp-long v3, v0, p1

    if-ltz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    .line 651
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-super {p0}, Lj$/util/stream/AbstractShortCircuitTask;->cancel()V

    .line 652
    iget-boolean v0, p0, Lj$/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->getEmptyResult()Lj$/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/SliceOps$SliceTask;->setLocalResult(Ljava/lang/Object;)V

    .line 654
    :cond_0
    return-void
.end method

.method protected final doLeaf()Lj$/util/stream/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 600
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 601
    sget-object v0, Lj$/util/stream/StreamOpFlag;->SIZED:Lj$/util/stream/StreamOpFlag;

    iget-object v3, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    iget v3, v3, Lj$/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v0, v3}, Lj$/util/stream/StreamOpFlag;->isPreserved(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    iget-object v1, p0, Lj$/util/stream/SliceOps$SliceTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v0, v1}, Lj$/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v1

    goto :goto_0

    .line 603
    :cond_0
    nop

    :goto_0
    move-wide v0, v1

    .line 604
    .local v0, "sizeIfKnown":J
    iget-object v2, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    iget-object v3, p0, Lj$/util/stream/SliceOps$SliceTask;->generator:Lj$/util/function/IntFunction;

    invoke-virtual {v2, v0, v1, v3}, Lj$/util/stream/AbstractPipeline;->makeNodeBuilder(JLj$/util/function/IntFunction;)Lj$/util/stream/Node$Builder;

    move-result-object v2

    .line 605
    .local v2, "nb":Lj$/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    iget-object v3, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    iget-object v4, p0, Lj$/util/stream/SliceOps$SliceTask;->helper:Lj$/util/stream/PipelineHelper;

    invoke-virtual {v4}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lj$/util/stream/AbstractPipeline;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object v3

    .line 606
    .local v3, "opSink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    iget-object v4, p0, Lj$/util/stream/SliceOps$SliceTask;->helper:Lj$/util/stream/PipelineHelper;

    iget-object v5, p0, Lj$/util/stream/SliceOps$SliceTask;->helper:Lj$/util/stream/PipelineHelper;

    invoke-virtual {v5, v3}, Lj$/util/stream/PipelineHelper;->wrapSink(Lj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object v5

    iget-object v6, p0, Lj$/util/stream/SliceOps$SliceTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v4, v5, v6}, Lj$/util/stream/PipelineHelper;->copyIntoWithCancel(Lj$/util/stream/Sink;Lj$/util/Spliterator;)V

    .line 609
    invoke-interface {v2}, Lj$/util/stream/Node$Builder;->build()Lj$/util/stream/Node;

    move-result-object v4

    return-object v4

    .line 612
    .end local v0    # "sizeIfKnown":J
    .end local v2    # "nb":Lj$/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TP_OUT;>;"
    .end local v3    # "opSink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    :cond_1
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->helper:Lj$/util/stream/PipelineHelper;

    iget-object v3, p0, Lj$/util/stream/SliceOps$SliceTask;->helper:Lj$/util/stream/PipelineHelper;

    iget-object v4, p0, Lj$/util/stream/SliceOps$SliceTask;->generator:Lj$/util/function/IntFunction;

    invoke-virtual {v3, v1, v2, v4}, Lj$/util/stream/PipelineHelper;->makeNodeBuilder(JLj$/util/function/IntFunction;)Lj$/util/stream/Node$Builder;

    move-result-object v1

    iget-object v2, p0, Lj$/util/stream/SliceOps$SliceTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node$Builder;

    .line 613
    invoke-interface {v0}, Lj$/util/stream/Node$Builder;->build()Lj$/util/stream/Node;

    move-result-object v0

    .line 614
    .local v0, "node":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    invoke-interface {v0}, Lj$/util/stream/Node;->count()J

    move-result-wide v1

    iput-wide v1, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .line 615
    const/4 v1, 0x1

    iput-boolean v1, p0, Lj$/util/stream/SliceOps$SliceTask;->completed:Z

    .line 616
    const/4 v1, 0x0

    iput-object v1, p0, Lj$/util/stream/SliceOps$SliceTask;->spliterator:Lj$/util/Spliterator;

    .line 617
    return-object v0
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    .line 558
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->doLeaf()Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final getEmptyResult()Lj$/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 595
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->getOutputShape()Lj$/util/stream/StreamShape;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Nodes;->emptyNode(Lj$/util/stream/StreamShape;)Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getEmptyResult()Ljava/lang/Object;
    .locals 1

    .line 558
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->getEmptyResult()Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Lj$/util/Spliterator;)Lj$/util/stream/AbstractTask;
    .locals 0

    .line 558
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    invoke-virtual {p0, p1}, Lj$/util/stream/SliceOps$SliceTask;->makeChild(Lj$/util/Spliterator;)Lj$/util/stream/SliceOps$SliceTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Lj$/util/Spliterator;)Lj$/util/stream/SliceOps$SliceTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)",
            "Lj$/util/stream/SliceOps$SliceTask<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    .line 590
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/SliceOps$SliceTask;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/SliceOps$SliceTask;-><init>(Lj$/util/stream/SliceOps$SliceTask;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 623
    .local p0, "this":Lj$/util/stream/SliceOps$SliceTask;, "Ljava/util/stream/SliceOps$SliceTask<TP_IN;TP_OUT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->isLeaf()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_4

    .line 625
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/SliceOps$SliceTask;

    iget-wide v3, v0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/SliceOps$SliceTask;

    iget-wide v5, v0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .line 626
    iget-boolean v0, p0, Lj$/util/stream/SliceOps$SliceTask;->canceled:Z

    if-eqz v0, :cond_0

    .line 627
    iput-wide v1, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .line 628
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->getEmptyResult()Lj$/util/stream/Node;

    move-result-object v0

    .local v0, "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_0

    .line 630
    .end local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_0
    iget-wide v3, p0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 631
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->getEmptyResult()Lj$/util/stream/Node;

    move-result-object v0

    .restart local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_0

    .line 632
    .end local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_1
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/SliceOps$SliceTask;

    iget-wide v3, v0, Lj$/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 633
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v0, Lj$/util/stream/SliceOps$SliceTask;

    invoke-virtual {v0}, Lj$/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    .restart local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    goto :goto_0

    .line 635
    .end local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_2
    iget-object v0, p0, Lj$/util/stream/SliceOps$SliceTask;->op:Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->getOutputShape()Lj$/util/stream/StreamShape;

    move-result-object v0

    iget-object v3, p0, Lj$/util/stream/SliceOps$SliceTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v3, Lj$/util/stream/SliceOps$SliceTask;

    .line 636
    invoke-virtual {v3}, Lj$/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/util/stream/Node;

    iget-object v4, p0, Lj$/util/stream/SliceOps$SliceTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v4, Lj$/util/stream/SliceOps$SliceTask;

    invoke-virtual {v4}, Lj$/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/util/stream/Node;

    .line 635
    invoke-static {v0, v3, v4}, Lj$/util/stream/Nodes;->conc(Lj$/util/stream/StreamShape;Lj$/util/stream/Node;Lj$/util/stream/Node;)Lj$/util/stream/Node;

    move-result-object v0

    .line 638
    .restart local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :goto_0
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Lj$/util/stream/SliceOps$SliceTask;->doTruncate(Lj$/util/stream/Node;)Lj$/util/stream/Node;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    invoke-virtual {p0, v3}, Lj$/util/stream/SliceOps$SliceTask;->setLocalResult(Ljava/lang/Object;)V

    .line 639
    const/4 v3, 0x1

    iput-boolean v3, p0, Lj$/util/stream/SliceOps$SliceTask;->completed:Z

    .line 641
    .end local v0    # "result":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_4
    iget-wide v3, p0, Lj$/util/stream/SliceOps$SliceTask;->targetSize:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_5

    .line 642
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v0, p0, Lj$/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v2, p0, Lj$/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v0, v2

    .line 643
    invoke-direct {p0, v0, v1}, Lj$/util/stream/SliceOps$SliceTask;->isLeftCompleted(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 644
    invoke-virtual {p0}, Lj$/util/stream/SliceOps$SliceTask;->cancelLaterNodes()V

    .line 646
    :cond_5
    invoke-super {p0, p1}, Lj$/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 647
    return-void
.end method

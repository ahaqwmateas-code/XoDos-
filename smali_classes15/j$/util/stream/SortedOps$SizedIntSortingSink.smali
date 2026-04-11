.class final Lj$/util/stream/SortedOps$SizedIntSortingSink;
.super Lj$/util/stream/SortedOps$AbstractIntSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizedIntSortingSink"
.end annotation


# instance fields
.field private array:[I

.field private offset:I


# direct methods
.method constructor <init>(Lj$/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Sink<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 441
    .local p1, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lj$/util/stream/SortedOps$AbstractIntSortingSink;-><init>(Lj$/util/stream/Sink;)V

    .line 442
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3
    .param p1, "t"    # I

    .line 469
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    iget v1, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    aput p1, v0, v1

    .line 470
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 446
    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 448
    long-to-int v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    .line 449
    return-void

    .line 447
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 3

    .line 453
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    const/4 v1, 0x0

    iget v2, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 454
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->downstream:Lj$/util/stream/Sink;

    iget v1, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 455
    iget-boolean v0, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->cancellationWasRequested:Z

    if-nez v0, :cond_1

    .line 456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    if-ge v0, v1, :cond_0

    .line 457
    iget-object v1, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->downstream:Lj$/util/stream/Sink;

    iget-object v2, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    aget v2, v2, v0

    invoke-interface {v1, v2}, Lj$/util/stream/Sink;->accept(I)V

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 460
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v1}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    if-nez v1, :cond_2

    .line 461
    iget-object v1, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->downstream:Lj$/util/stream/Sink;

    iget-object v2, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    aget v2, v2, v0

    invoke-interface {v1, v2}, Lj$/util/stream/Sink;->accept(I)V

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 463
    .end local v0    # "i":I
    :cond_2
    :goto_2
    iget-object v0, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->end()V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    .line 465
    return-void
.end method

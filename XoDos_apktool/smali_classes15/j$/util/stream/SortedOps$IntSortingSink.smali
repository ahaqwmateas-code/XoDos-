.class final Lj$/util/stream/SortedOps$IntSortingSink;
.super Lj$/util/stream/SortedOps$AbstractIntSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntSortingSink"
.end annotation


# instance fields
.field private b:Lj$/util/stream/SpinedBuffer$OfInt;


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

    .line 480
    .local p1, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lj$/util/stream/SortedOps$AbstractIntSortingSink;-><init>(Lj$/util/stream/Sink;)V

    .line 481
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "t"    # I

    .line 510
    iget-object v0, p0, Lj$/util/stream/SortedOps$IntSortingSink;->b:Lj$/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Lj$/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 511
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 485
    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 487
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    new-instance v0, Lj$/util/stream/SpinedBuffer$OfInt;

    if-lez v2, :cond_0

    long-to-int v1, p1

    invoke-direct {v0, v1}, Lj$/util/stream/SpinedBuffer$OfInt;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lj$/util/stream/SpinedBuffer$OfInt;-><init>()V

    :goto_0
    iput-object v0, p0, Lj$/util/stream/SortedOps$IntSortingSink;->b:Lj$/util/stream/SpinedBuffer$OfInt;

    .line 488
    return-void

    .line 486
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 5

    .line 492
    iget-object v0, p0, Lj$/util/stream/SortedOps$IntSortingSink;->b:Lj$/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0}, Lj$/util/stream/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 493
    .local v0, "ints":[I
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 494
    iget-object v1, p0, Lj$/util/stream/SortedOps$IntSortingSink;->downstream:Lj$/util/stream/Sink;

    array-length v2, v0

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lj$/util/stream/Sink;->begin(J)V

    .line 495
    iget-boolean v1, p0, Lj$/util/stream/SortedOps$IntSortingSink;->cancellationWasRequested:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 496
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 497
    .local v3, "anInt":I
    iget-object v4, p0, Lj$/util/stream/SortedOps$IntSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v4, v3}, Lj$/util/stream/Sink;->accept(I)V

    .line 496
    .end local v3    # "anInt":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    :cond_0
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 501
    .restart local v3    # "anInt":I
    iget-object v4, p0, Lj$/util/stream/SortedOps$IntSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v4}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 502
    :cond_1
    iget-object v4, p0, Lj$/util/stream/SortedOps$IntSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v4, v3}, Lj$/util/stream/Sink;->accept(I)V

    .line 500
    .end local v3    # "anInt":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 505
    :cond_2
    :goto_2
    iget-object v1, p0, Lj$/util/stream/SortedOps$IntSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v1}, Lj$/util/stream/Sink;->end()V

    .line 506
    return-void
.end method

.class final Lj$/util/stream/SortedOps$DoubleSortingSink;
.super Lj$/util/stream/SortedOps$AbstractDoubleSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoubleSortingSink"
.end annotation


# instance fields
.field private b:Lj$/util/stream/SpinedBuffer$OfDouble;


# direct methods
.method constructor <init>(Lj$/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Sink<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 676
    .local p1, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    invoke-direct {p0, p1}, Lj$/util/stream/SortedOps$AbstractDoubleSortingSink;-><init>(Lj$/util/stream/Sink;)V

    .line 677
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "t"    # D

    .line 706
    iget-object v0, p0, Lj$/util/stream/SortedOps$DoubleSortingSink;->b:Lj$/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0, p1, p2}, Lj$/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    .line 707
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 681
    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 683
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    new-instance v0, Lj$/util/stream/SpinedBuffer$OfDouble;

    if-lez v2, :cond_0

    long-to-int v1, p1

    invoke-direct {v0, v1}, Lj$/util/stream/SpinedBuffer$OfDouble;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lj$/util/stream/SpinedBuffer$OfDouble;-><init>()V

    :goto_0
    iput-object v0, p0, Lj$/util/stream/SortedOps$DoubleSortingSink;->b:Lj$/util/stream/SpinedBuffer$OfDouble;

    .line 684
    return-void

    .line 682
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 6

    .line 688
    iget-object v0, p0, Lj$/util/stream/SortedOps$DoubleSortingSink;->b:Lj$/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0}, Lj$/util/stream/SpinedBuffer$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 689
    .local v0, "doubles":[D
    invoke-static {v0}, Ljava/util/Arrays;->sort([D)V

    .line 690
    iget-object v1, p0, Lj$/util/stream/SortedOps$DoubleSortingSink;->downstream:Lj$/util/stream/Sink;

    array-length v2, v0

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lj$/util/stream/Sink;->begin(J)V

    .line 691
    iget-boolean v1, p0, Lj$/util/stream/SortedOps$DoubleSortingSink;->cancellationWasRequested:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 692
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-wide v3, v0, v2

    .line 693
    .local v3, "aDouble":D
    iget-object v5, p0, Lj$/util/stream/SortedOps$DoubleSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v5, v3, v4}, Lj$/util/stream/Sink;->accept(D)V

    .line 692
    .end local v3    # "aDouble":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 696
    :cond_0
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-wide v3, v0, v2

    .line 697
    .restart local v3    # "aDouble":D
    iget-object v5, p0, Lj$/util/stream/SortedOps$DoubleSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v5}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 698
    :cond_1
    iget-object v5, p0, Lj$/util/stream/SortedOps$DoubleSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v5, v3, v4}, Lj$/util/stream/Sink;->accept(D)V

    .line 696
    .end local v3    # "aDouble":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 701
    :cond_2
    :goto_2
    iget-object v1, p0, Lj$/util/stream/SortedOps$DoubleSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v1}, Lj$/util/stream/Sink;->end()V

    .line 702
    return-void
.end method

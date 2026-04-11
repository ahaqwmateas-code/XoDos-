.class public Lj$/util/LongSummaryStatistics;
.super Ljava/lang/Object;
.source "LongSummaryStatistics.java"

# interfaces
.implements Lj$/util/function/LongConsumer;
.implements Lj$/util/function/IntConsumer;


# instance fields
.field private count:J

.field private max:J

.field private min:J

.field private sum:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lj$/util/LongSummaryStatistics;->min:J

    .line 70
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lj$/util/LongSummaryStatistics;->max:J

    .line 77
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "value"    # I

    .line 86
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/util/LongSummaryStatistics;->accept(J)V

    .line 87
    return-void
.end method

.method public accept(J)V
    .locals 4
    .param p1, "value"    # J

    .line 96
    iget-wide v0, p0, Lj$/util/LongSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/LongSummaryStatistics;->count:J

    .line 97
    iget-wide v0, p0, Lj$/util/LongSummaryStatistics;->sum:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lj$/util/LongSummaryStatistics;->sum:J

    .line 98
    iget-wide v0, p0, Lj$/util/LongSummaryStatistics;->min:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lj$/util/LongSummaryStatistics;->min:J

    .line 99
    iget-wide v0, p0, Lj$/util/LongSummaryStatistics;->max:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lj$/util/LongSummaryStatistics;->max:J

    .line 100
    return-void
.end method

.method public synthetic andThen(Lj$/util/function/IntConsumer;)Lj$/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Lj$/util/function/IntConsumer;Lj$/util/function/IntConsumer;)Lj$/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Lj$/util/function/LongConsumer;)Lj$/util/function/LongConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/LongConsumer$-CC;->$default$andThen(Lj$/util/function/LongConsumer;Lj$/util/function/LongConsumer;)Lj$/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method

.method public combine(Lj$/util/LongSummaryStatistics;)V
    .locals 4
    .param p1, "other"    # Lj$/util/LongSummaryStatistics;

    .line 110
    iget-wide v0, p0, Lj$/util/LongSummaryStatistics;->count:J

    iget-wide v2, p1, Lj$/util/LongSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/LongSummaryStatistics;->count:J

    .line 111
    iget-wide v0, p0, Lj$/util/LongSummaryStatistics;->sum:J

    iget-wide v2, p1, Lj$/util/LongSummaryStatistics;->sum:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/LongSummaryStatistics;->sum:J

    .line 112
    iget-wide v0, p0, Lj$/util/LongSummaryStatistics;->min:J

    iget-wide v2, p1, Lj$/util/LongSummaryStatistics;->min:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lj$/util/LongSummaryStatistics;->min:J

    .line 113
    iget-wide v0, p0, Lj$/util/LongSummaryStatistics;->max:J

    iget-wide v2, p1, Lj$/util/LongSummaryStatistics;->max:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lj$/util/LongSummaryStatistics;->max:J

    .line 114
    return-void
.end method

.method public final getAverage()D
    .locals 5

    .line 162
    invoke-virtual {p0}, Lj$/util/LongSummaryStatistics;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lj$/util/LongSummaryStatistics;->getSum()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lj$/util/LongSummaryStatistics;->getCount()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getCount()J
    .locals 2

    .line 122
    iget-wide v0, p0, Lj$/util/LongSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final getMax()J
    .locals 2

    .line 152
    iget-wide v0, p0, Lj$/util/LongSummaryStatistics;->max:J

    return-wide v0
.end method

.method public final getMin()J
    .locals 2

    .line 142
    iget-wide v0, p0, Lj$/util/LongSummaryStatistics;->min:J

    return-wide v0
.end method

.method public final getSum()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lj$/util/LongSummaryStatistics;->sum:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 174
    nop

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lj$/util/LongSummaryStatistics;->getCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 178
    invoke-virtual {p0}, Lj$/util/LongSummaryStatistics;->getSum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 179
    invoke-virtual {p0}, Lj$/util/LongSummaryStatistics;->getMin()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 180
    invoke-virtual {p0}, Lj$/util/LongSummaryStatistics;->getAverage()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 181
    invoke-virtual {p0}, Lj$/util/LongSummaryStatistics;->getMax()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    .line 174
    const-string v0, "%s{count=%d, sum=%d, min=%d, average=%f, max=%d}"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

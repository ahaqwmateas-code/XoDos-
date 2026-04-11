.class public final synthetic Lj$/util/stream/LongStream$Builder$-CC;
.super Ljava/lang/Object;
.source "LongStream.java"


# direct methods
.method public static $default$add(Lj$/util/stream/LongStream$Builder;J)Lj$/util/stream/LongStream$Builder;
    .locals 0
    .param p0, "_this"    # Lj$/util/stream/LongStream$Builder;
    .param p1, "t"    # J

    .line 899
    invoke-interface {p0, p1, p2}, Lj$/util/stream/LongStream$Builder;->accept(J)V

    .line 900
    return-object p0
.end method

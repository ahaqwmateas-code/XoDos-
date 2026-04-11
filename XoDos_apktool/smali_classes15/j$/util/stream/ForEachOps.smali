.class final Lj$/util/stream/ForEachOps;
.super Ljava/lang/Object;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/ForEachOps$ForEachOrderedTask;,
        Lj$/util/stream/ForEachOps$ForEachTask;,
        Lj$/util/stream/ForEachOps$ForEachOp;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeDouble(Lj$/util/function/DoubleConsumer;Z)Lj$/util/stream/TerminalOp;
    .locals 1
    .param p0, "action"    # Lj$/util/function/DoubleConsumer;
    .param p1, "ordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/DoubleConsumer;",
            "Z)",
            "Lj$/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Lj$/util/stream/ForEachOps$ForEachOp$OfDouble;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/ForEachOps$ForEachOp$OfDouble;-><init>(Lj$/util/function/DoubleConsumer;Z)V

    return-object v0
.end method

.method public static makeInt(Lj$/util/function/IntConsumer;Z)Lj$/util/stream/TerminalOp;
    .locals 1
    .param p0, "action"    # Lj$/util/function/IntConsumer;
    .param p1, "ordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/IntConsumer;",
            "Z)",
            "Lj$/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lj$/util/stream/ForEachOps$ForEachOp$OfInt;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/ForEachOps$ForEachOp$OfInt;-><init>(Lj$/util/function/IntConsumer;Z)V

    return-object v0
.end method

.method public static makeLong(Lj$/util/function/LongConsumer;Z)Lj$/util/stream/TerminalOp;
    .locals 1
    .param p0, "action"    # Lj$/util/function/LongConsumer;
    .param p1, "ordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/LongConsumer;",
            "Z)",
            "Lj$/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Lj$/util/stream/ForEachOps$ForEachOp$OfLong;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/ForEachOps$ForEachOp$OfLong;-><init>(Lj$/util/function/LongConsumer;Z)V

    return-object v0
.end method

.method public static makeRef(Lj$/util/function/Consumer;Z)Lj$/util/stream/TerminalOp;
    .locals 1
    .param p1, "ordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/Consumer<",
            "-TT;>;Z)",
            "Lj$/util/stream/TerminalOp<",
            "TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 72
    .local p0, "action":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Lj$/util/stream/ForEachOps$ForEachOp$OfRef;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/ForEachOps$ForEachOp$OfRef;-><init>(Lj$/util/function/Consumer;Z)V

    return-object v0
.end method

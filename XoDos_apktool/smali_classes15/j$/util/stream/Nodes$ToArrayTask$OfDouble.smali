.class final Lj$/util/stream/Nodes$ToArrayTask$OfDouble;
.super Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive<",
        "Ljava/lang/Double;",
        "Lj$/util/function/DoubleConsumer;",
        "[D",
        "Lj$/util/Spliterator$OfDouble;",
        "Lj$/util/stream/Node$OfDouble;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lj$/util/stream/Node$OfDouble;[DI)V
    .locals 1
    .param p1, "node"    # Lj$/util/stream/Node$OfDouble;
    .param p2, "array"    # [D
    .param p3, "offset"    # I

    .line 2144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Lj$/util/stream/Node$OfPrimitive;Ljava/lang/Object;ILj$/util/stream/Nodes$1;)V

    .line 2145
    return-void
.end method

.method synthetic constructor <init>(Lj$/util/stream/Node$OfDouble;[DILj$/util/stream/Nodes$1;)V
    .locals 0
    .param p1, "x0"    # Lj$/util/stream/Node$OfDouble;
    .param p2, "x1"    # [D
    .param p3, "x2"    # I
    .param p4, "x3"    # Lj$/util/stream/Nodes$1;

    .line 2141
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/Nodes$ToArrayTask$OfDouble;-><init>(Lj$/util/stream/Node$OfDouble;[DI)V

    return-void
.end method

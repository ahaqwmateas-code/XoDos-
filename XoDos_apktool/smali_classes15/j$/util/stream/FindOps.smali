.class final Lj$/util/stream/FindOps;
.super Ljava/lang/Object;
.source "FindOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/FindOps$FindTask;,
        Lj$/util/stream/FindOps$FindSink;,
        Lj$/util/stream/FindOps$FindOp;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeDouble(Z)Lj$/util/stream/TerminalOp;
    .locals 7
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lj$/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Lj$/util/OptionalDouble;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v6, Lj$/util/stream/FindOps$FindOp;

    sget-object v2, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    invoke-static {}, Lj$/util/OptionalDouble;->empty()Lj$/util/OptionalDouble;

    move-result-object v3

    new-instance v4, Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;-><init>()V

    new-instance v5, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;-><init>()V

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/FindOps$FindOp;-><init>(ZLj$/util/stream/StreamShape;Ljava/lang/Object;Lj$/util/function/Predicate;Lj$/util/function/Supplier;)V

    return-object v6
.end method

.method public static makeInt(Z)Lj$/util/stream/TerminalOp;
    .locals 7
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lj$/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Lj$/util/OptionalInt;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v6, Lj$/util/stream/FindOps$FindOp;

    sget-object v2, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    invoke-static {}, Lj$/util/OptionalInt;->empty()Lj$/util/OptionalInt;

    move-result-object v3

    new-instance v4, Lj$/util/stream/FindOps$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda6;-><init>()V

    new-instance v5, Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;-><init>()V

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/FindOps$FindOp;-><init>(ZLj$/util/stream/StreamShape;Ljava/lang/Object;Lj$/util/function/Predicate;Lj$/util/function/Supplier;)V

    return-object v6
.end method

.method public static makeLong(Z)Lj$/util/stream/TerminalOp;
    .locals 7
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lj$/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Lj$/util/OptionalLong;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v6, Lj$/util/stream/FindOps$FindOp;

    sget-object v2, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    invoke-static {}, Lj$/util/OptionalLong;->empty()Lj$/util/OptionalLong;

    move-result-object v3

    new-instance v4, Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;-><init>()V

    new-instance v5, Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;-><init>()V

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/FindOps$FindOp;-><init>(ZLj$/util/stream/StreamShape;Ljava/lang/Object;Lj$/util/function/Predicate;Lj$/util/function/Supplier;)V

    return-object v6
.end method

.method public static makeRef(Z)Lj$/util/stream/TerminalOp;
    .locals 7
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lj$/util/stream/TerminalOp<",
            "TT;",
            "Lj$/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 58
    new-instance v6, Lj$/util/stream/FindOps$FindOp;

    sget-object v2, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3

    new-instance v4, Lj$/util/stream/FindOps$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;-><init>()V

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/FindOps$FindOp;-><init>(ZLj$/util/stream/StreamShape;Ljava/lang/Object;Lj$/util/function/Predicate;Lj$/util/function/Supplier;)V

    return-object v6
.end method

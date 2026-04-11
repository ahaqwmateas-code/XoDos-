.class public Lj$/util/DesugarArrays;
.super Ljava/lang/Object;
.source "DesugarArrays.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "e1"    # Ljava/lang/Object;
    .param p1, "e2"    # Ljava/lang/Object;

    .line 71
    nop

    .line 73
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 74
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    .local v0, "eq":Z
    goto/16 :goto_0

    .line 75
    .end local v0    # "eq":Z
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 76
    move-object v0, p0

    check-cast v0, [B

    move-object v1, p1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto/16 :goto_0

    .line 77
    .end local v0    # "eq":Z
    :cond_1
    instance-of v0, p0, [S

    if-eqz v0, :cond_2

    instance-of v0, p1, [S

    if-eqz v0, :cond_2

    .line 78
    move-object v0, p0

    check-cast v0, [S

    move-object v1, p1

    check-cast v1, [S

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto/16 :goto_0

    .line 79
    .end local v0    # "eq":Z
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    instance-of v0, p1, [I

    if-eqz v0, :cond_3

    .line 80
    move-object v0, p0

    check-cast v0, [I

    move-object v1, p1

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 81
    .end local v0    # "eq":Z
    :cond_3
    instance-of v0, p0, [J

    if-eqz v0, :cond_4

    instance-of v0, p1, [J

    if-eqz v0, :cond_4

    .line 82
    move-object v0, p0

    check-cast v0, [J

    move-object v1, p1

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 83
    .end local v0    # "eq":Z
    :cond_4
    instance-of v0, p0, [C

    if-eqz v0, :cond_5

    instance-of v0, p1, [C

    if-eqz v0, :cond_5

    .line 84
    move-object v0, p0

    check-cast v0, [C

    move-object v1, p1

    check-cast v1, [C

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 85
    .end local v0    # "eq":Z
    :cond_5
    instance-of v0, p0, [F

    if-eqz v0, :cond_6

    instance-of v0, p1, [F

    if-eqz v0, :cond_6

    .line 86
    move-object v0, p0

    check-cast v0, [F

    move-object v1, p1

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 87
    .end local v0    # "eq":Z
    :cond_6
    instance-of v0, p0, [D

    if-eqz v0, :cond_7

    instance-of v0, p1, [D

    if-eqz v0, :cond_7

    .line 88
    move-object v0, p0

    check-cast v0, [D

    move-object v1, p1

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 89
    .end local v0    # "eq":Z
    :cond_7
    instance-of v0, p0, [Z

    if-eqz v0, :cond_8

    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 90
    move-object v0, p0

    check-cast v0, [Z

    move-object v1, p1

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 92
    .end local v0    # "eq":Z
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    .restart local v0    # "eq":Z
    :goto_0
    return v0
.end method

.method static synthetic lambda$parallelSetAll$0([Ljava/lang/Object;Lj$/util/function/IntFunction;I)V
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "generator"    # Lj$/util/function/IntFunction;
    .param p2, "i"    # I

    .line 133
    invoke-interface {p1, p2}, Lj$/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p0, p2

    return-void
.end method

.method static synthetic lambda$parallelSetAll$1([ILj$/util/function/IntUnaryOperator;I)V
    .locals 1
    .param p0, "array"    # [I
    .param p1, "generator"    # Lj$/util/function/IntUnaryOperator;
    .param p2, "i"    # I

    .line 171
    invoke-interface {p1, p2}, Lj$/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    aput v0, p0, p2

    return-void
.end method

.method static synthetic lambda$parallelSetAll$2([JLj$/util/function/IntToLongFunction;I)V
    .locals 2
    .param p0, "array"    # [J
    .param p1, "generator"    # Lj$/util/function/IntToLongFunction;
    .param p2, "i"    # I

    .line 209
    invoke-interface {p1, p2}, Lj$/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method static synthetic lambda$parallelSetAll$3([DLj$/util/function/IntToDoubleFunction;I)V
    .locals 2
    .param p0, "array"    # [D
    .param p1, "generator"    # Lj$/util/function/IntToDoubleFunction;
    .param p2, "i"    # I

    .line 247
    invoke-interface {p1, p2}, Lj$/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method public static parallelSetAll([DLj$/util/function/IntToDoubleFunction;)V
    .locals 2
    .param p0, "array"    # [D
    .param p1, "generator"    # Lj$/util/function/IntToDoubleFunction;

    .line 246
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->parallel()Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lj$/util/DesugarArrays$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lj$/util/DesugarArrays$$ExternalSyntheticLambda1;-><init>([DLj$/util/function/IntToDoubleFunction;)V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->forEach(Lj$/util/function/IntConsumer;)V

    .line 248
    return-void
.end method

.method public static parallelSetAll([ILj$/util/function/IntUnaryOperator;)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "generator"    # Lj$/util/function/IntUnaryOperator;

    .line 170
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->parallel()Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lj$/util/DesugarArrays$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lj$/util/DesugarArrays$$ExternalSyntheticLambda3;-><init>([ILj$/util/function/IntUnaryOperator;)V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->forEach(Lj$/util/function/IntConsumer;)V

    .line 172
    return-void
.end method

.method public static parallelSetAll([JLj$/util/function/IntToLongFunction;)V
    .locals 2
    .param p0, "array"    # [J
    .param p1, "generator"    # Lj$/util/function/IntToLongFunction;

    .line 208
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->parallel()Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lj$/util/DesugarArrays$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lj$/util/DesugarArrays$$ExternalSyntheticLambda2;-><init>([JLj$/util/function/IntToLongFunction;)V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->forEach(Lj$/util/function/IntConsumer;)V

    .line 210
    return-void
.end method

.method public static parallelSetAll([Ljava/lang/Object;Lj$/util/function/IntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lj$/util/function/IntFunction<",
            "+TT;>;)V"
        }
    .end annotation

    .line 132
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Lj$/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->parallel()Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lj$/util/DesugarArrays$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lj$/util/DesugarArrays$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Object;Lj$/util/function/IntFunction;)V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->forEach(Lj$/util/function/IntConsumer;)V

    .line 134
    return-void
.end method

.method public static setAll([DLj$/util/function/IntToDoubleFunction;)V
    .locals 3
    .param p0, "array"    # [D
    .param p1, "generator"    # Lj$/util/function/IntToDoubleFunction;

    .line 226
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 228
    invoke-interface {p1, v0}, Lj$/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static setAll([ILj$/util/function/IntUnaryOperator;)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "generator"    # Lj$/util/function/IntUnaryOperator;

    .line 150
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 152
    invoke-interface {p1, v0}, Lj$/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    aput v1, p0, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static setAll([JLj$/util/function/IntToLongFunction;)V
    .locals 3
    .param p0, "array"    # [J
    .param p1, "generator"    # Lj$/util/function/IntToLongFunction;

    .line 188
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 190
    invoke-interface {p1, v0}, Lj$/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static setAll([Ljava/lang/Object;Lj$/util/function/IntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lj$/util/function/IntFunction<",
            "+TT;>;)V"
        }
    .end annotation

    .line 111
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Lj$/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 113
    invoke-interface {p1, v0}, Lj$/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static spliterator([D)Lj$/util/Spliterator$OfDouble;
    .locals 1
    .param p0, "array"    # [D

    .line 382
    const/16 v0, 0x410

    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliterator([DI)Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([DII)Lj$/util/Spliterator$OfDouble;
    .locals 1
    .param p0, "array"    # [D
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 405
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Lj$/util/Spliterators;->spliterator([DIII)Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([I)Lj$/util/Spliterator$OfInt;
    .locals 1
    .param p0, "array"    # [I

    .line 303
    const/16 v0, 0x410

    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliterator([II)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([III)Lj$/util/Spliterator$OfInt;
    .locals 1
    .param p0, "array"    # [I
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 326
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Lj$/util/Spliterators;->spliterator([IIII)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([J)Lj$/util/Spliterator$OfLong;
    .locals 1
    .param p0, "array"    # [J

    .line 342
    const/16 v0, 0x410

    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliterator([JI)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([JII)Lj$/util/Spliterator$OfLong;
    .locals 1
    .param p0, "array"    # [J
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 365
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Lj$/util/Spliterators;->spliterator([JIII)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;)Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 263
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0x410

    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliterator([Ljava/lang/Object;I)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;II)Lj$/util/Spliterator;
    .locals 1
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 287
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Lj$/util/Spliterators;->spliterator([Ljava/lang/Object;III)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static stream([D)Lj$/util/stream/DoubleStream;
    .locals 2
    .param p0, "array"    # [D

    .line 510
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lj$/util/DesugarArrays;->stream([DII)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([DII)Lj$/util/stream/DoubleStream;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 528
    invoke-static {p0, p1, p2}, Lj$/util/DesugarArrays;->spliterator([DII)Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([I)Lj$/util/stream/IntStream;
    .locals 2
    .param p0, "array"    # [I

    .line 450
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lj$/util/DesugarArrays;->stream([III)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([III)Lj$/util/stream/IntStream;
    .locals 2
    .param p0, "array"    # [I
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 468
    invoke-static {p0, p1, p2}, Lj$/util/DesugarArrays;->spliterator([III)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([J)Lj$/util/stream/LongStream;
    .locals 2
    .param p0, "array"    # [J

    .line 480
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lj$/util/DesugarArrays;->stream([JII)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([JII)Lj$/util/stream/LongStream;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 498
    invoke-static {p0, p1, p2}, Lj$/util/DesugarArrays;->spliterator([JII)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([Ljava/lang/Object;)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 419
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;II)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([Ljava/lang/Object;II)Lj$/util/stream/Stream;
    .locals 2
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 438
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1, p2}, Lj$/util/DesugarArrays;->spliterator([Ljava/lang/Object;II)Lj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

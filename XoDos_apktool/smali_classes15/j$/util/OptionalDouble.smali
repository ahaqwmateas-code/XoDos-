.class public final Lj$/util/OptionalDouble;
.super Ljava/lang/Object;
.source "OptionalDouble.java"


# static fields
.field private static final EMPTY:Lj$/util/OptionalDouble;


# instance fields
.field private final isPresent:Z

.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lj$/util/OptionalDouble;

    invoke-direct {v0}, Lj$/util/OptionalDouble;-><init>()V

    sput-object v0, Lj$/util/OptionalDouble;->EMPTY:Lj$/util/OptionalDouble;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    .line 69
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    .line 70
    return-void
.end method

.method private constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    .line 94
    iput-wide p1, p0, Lj$/util/OptionalDouble;->value:D

    .line 95
    return-void
.end method

.method public static empty()Lj$/util/OptionalDouble;
    .locals 1

    .line 84
    sget-object v0, Lj$/util/OptionalDouble;->EMPTY:Lj$/util/OptionalDouble;

    return-object v0
.end method

.method public static of(D)Lj$/util/OptionalDouble;
    .locals 1
    .param p0, "value"    # D

    .line 104
    new-instance v0, Lj$/util/OptionalDouble;

    invoke-direct {v0, p0, p1}, Lj$/util/OptionalDouble;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 208
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 209
    return v0

    .line 212
    :cond_0
    instance-of v1, p1, Lj$/util/OptionalDouble;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 213
    return v2

    .line 216
    :cond_1
    move-object v1, p1

    check-cast v1, Lj$/util/OptionalDouble;

    .line 217
    .local v1, "other":Lj$/util/OptionalDouble;
    iget-boolean v3, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v3, :cond_3

    .line 218
    iget-wide v3, p0, Lj$/util/OptionalDouble;->value:D

    iget-wide v5, v1, Lj$/util/OptionalDouble;->value:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :cond_3
    iget-boolean v3, p0, Lj$/util/OptionalDouble;->isPresent:Z

    iget-boolean v4, v1, Lj$/util/OptionalDouble;->isPresent:Z

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0
.end method

.method public getAsDouble()D
    .locals 2

    .line 117
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    .line 120
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    return-wide v0

    .line 118
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .line 230
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Lj$/util/OptionalDouble$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ifPresent(Lj$/util/function/DoubleConsumer;)V
    .locals 2
    .param p1, "consumer"    # Lj$/util/function/DoubleConsumer;

    .line 141
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    .line 142
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Lj$/util/function/DoubleConsumer;->accept(D)V

    .line 143
    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    return v0
.end method

.method public orElse(D)D
    .locals 2
    .param p1, "other"    # D

    .line 152
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    return-wide v0
.end method

.method public orElseGet(Lj$/util/function/DoubleSupplier;)D
    .locals 2
    .param p1, "other"    # Lj$/util/function/DoubleSupplier;

    .line 166
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lj$/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public orElseThrow(Lj$/util/function/Supplier;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lj$/util/function/Supplier<",
            "TX;>;)D^TX;"
        }
    .end annotation

    .line 186
    .local p1, "exceptionSupplier":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<TX;>;"
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    .line 187
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    return-wide v0

    .line 189
    :cond_0
    invoke-interface {p1}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 248
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    .line 249
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "OptionalDouble[%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_0
    const-string v0, "OptionalDouble.empty"

    .line 248
    :goto_0
    return-object v0
.end method

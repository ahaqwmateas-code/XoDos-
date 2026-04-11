.class public final Lj$/util/OptionalLong;
.super Ljava/lang/Object;
.source "OptionalLong.java"


# static fields
.field private static final EMPTY:Lj$/util/OptionalLong;


# instance fields
.field private final isPresent:Z

.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lj$/util/OptionalLong;

    invoke-direct {v0}, Lj$/util/OptionalLong;-><init>()V

    sput-object v0, Lj$/util/OptionalLong;->EMPTY:Lj$/util/OptionalLong;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lj$/util/OptionalLong;->value:J

    .line 70
    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    .line 94
    iput-wide p1, p0, Lj$/util/OptionalLong;->value:J

    .line 95
    return-void
.end method

.method public static empty()Lj$/util/OptionalLong;
    .locals 1

    .line 84
    sget-object v0, Lj$/util/OptionalLong;->EMPTY:Lj$/util/OptionalLong;

    return-object v0
.end method

.method public static of(J)Lj$/util/OptionalLong;
    .locals 1
    .param p0, "value"    # J

    .line 104
    new-instance v0, Lj$/util/OptionalLong;

    invoke-direct {v0, p0, p1}, Lj$/util/OptionalLong;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 208
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 209
    return v0

    .line 212
    :cond_0
    instance-of v1, p1, Lj$/util/OptionalLong;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 213
    return v2

    .line 216
    :cond_1
    move-object v1, p1

    check-cast v1, Lj$/util/OptionalLong;

    .line 217
    .local v1, "other":Lj$/util/OptionalLong;
    iget-boolean v3, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v3, :cond_3

    .line 218
    iget-wide v3, p0, Lj$/util/OptionalLong;->value:J

    iget-wide v5, v1, Lj$/util/OptionalLong;->value:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :cond_3
    iget-boolean v3, p0, Lj$/util/OptionalLong;->isPresent:Z

    iget-boolean v4, v1, Lj$/util/OptionalLong;->isPresent:Z

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0
.end method

.method public getAsLong()J
    .locals 2

    .line 117
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 120
    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

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
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Lj$/util/OptionalLong$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ifPresent(Lj$/util/function/LongConsumer;)V
    .locals 2
    .param p1, "consumer"    # Lj$/util/function/LongConsumer;

    .line 141
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 142
    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Lj$/util/function/LongConsumer;->accept(J)V

    .line 143
    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    return v0
.end method

.method public orElse(J)J
    .locals 2
    .param p1, "other"    # J

    .line 152
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    return-wide v0
.end method

.method public orElseGet(Lj$/util/function/LongSupplier;)J
    .locals 2
    .param p1, "other"    # Lj$/util/function/LongSupplier;

    .line 166
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lj$/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public orElseThrow(Lj$/util/function/Supplier;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lj$/util/function/Supplier<",
            "TX;>;)J^TX;"
        }
    .end annotation

    .line 186
    .local p1, "exceptionSupplier":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<TX;>;"
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 187
    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

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
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 249
    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "OptionalLong[%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_0
    const-string v0, "OptionalLong.empty"

    .line 248
    :goto_0
    return-object v0
.end method

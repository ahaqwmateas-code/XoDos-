.class public final Lj$/util/OptionalInt;
.super Ljava/lang/Object;
.source "OptionalInt.java"


# static fields
.field private static final EMPTY:Lj$/util/OptionalInt;


# instance fields
.field private final isPresent:Z

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lj$/util/OptionalInt;

    invoke-direct {v0}, Lj$/util/OptionalInt;-><init>()V

    sput-object v0, Lj$/util/OptionalInt;->EMPTY:Lj$/util/OptionalInt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    .line 69
    iput v0, p0, Lj$/util/OptionalInt;->value:I

    .line 70
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    .line 94
    iput p1, p0, Lj$/util/OptionalInt;->value:I

    .line 95
    return-void
.end method

.method public static empty()Lj$/util/OptionalInt;
    .locals 1

    .line 84
    sget-object v0, Lj$/util/OptionalInt;->EMPTY:Lj$/util/OptionalInt;

    return-object v0
.end method

.method public static of(I)Lj$/util/OptionalInt;
    .locals 1
    .param p0, "value"    # I

    .line 104
    new-instance v0, Lj$/util/OptionalInt;

    invoke-direct {v0, p0}, Lj$/util/OptionalInt;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 208
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 209
    return v0

    .line 212
    :cond_0
    instance-of v1, p1, Lj$/util/OptionalInt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 213
    return v2

    .line 216
    :cond_1
    move-object v1, p1

    check-cast v1, Lj$/util/OptionalInt;

    .line 217
    .local v1, "other":Lj$/util/OptionalInt;
    iget-boolean v3, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_3

    .line 218
    iget v3, p0, Lj$/util/OptionalInt;->value:I

    iget v4, v1, Lj$/util/OptionalInt;->value:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :cond_3
    iget-boolean v3, p0, Lj$/util/OptionalInt;->isPresent:Z

    iget-boolean v4, v1, Lj$/util/OptionalInt;->isPresent:Z

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0
.end method

.method public getAsInt()I
    .locals 2

    .line 117
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 120
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    return v0

    .line 118
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 230
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lj$/util/OptionalInt;->value:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ifPresent(Lj$/util/function/IntConsumer;)V
    .locals 1
    .param p1, "consumer"    # Lj$/util/function/IntConsumer;

    .line 141
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 142
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Lj$/util/function/IntConsumer;->accept(I)V

    .line 143
    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    return v0
.end method

.method public orElse(I)I
    .locals 1
    .param p1, "other"    # I

    .line 152
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lj$/util/OptionalInt;->value:I

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public orElseGet(Lj$/util/function/IntSupplier;)I
    .locals 1
    .param p1, "other"    # Lj$/util/function/IntSupplier;

    .line 166
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lj$/util/OptionalInt;->value:I

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lj$/util/function/IntSupplier;->getAsInt()I

    move-result v0

    :goto_0
    return v0
.end method

.method public orElseThrow(Lj$/util/function/Supplier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lj$/util/function/Supplier<",
            "TX;>;)I^TX;"
        }
    .end annotation

    .line 186
    .local p1, "exceptionSupplier":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<TX;>;"
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 187
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    return v0

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
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 249
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "OptionalInt[%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_0
    const-string v0, "OptionalInt.empty"

    .line 248
    :goto_0
    return-object v0
.end method

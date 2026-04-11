.class public final Lj$/util/Optional;
.super Ljava/lang/Object;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lj$/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/Optional<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lj$/util/Optional;

    invoke-direct {v0}, Lj$/util/Optional;-><init>()V

    sput-object v0, Lj$/util/Optional;->EMPTY:Lj$/util/Optional;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public static empty()Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 85
    sget-object v0, Lj$/util/Optional;->EMPTY:Lj$/util/Optional;

    .line 86
    .local v0, "t":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lj$/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 108
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lj$/util/Optional;

    invoke-direct {v0, p0}, Lj$/util/Optional;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lj$/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 121
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 309
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    if-ne p0, p1, :cond_0

    .line 310
    const/4 v0, 0x1

    return v0

    .line 313
    :cond_0
    instance-of v0, p1, Lj$/util/Optional;

    if-nez v0, :cond_1

    .line 314
    const/4 v0, 0x0

    return v0

    .line 317
    :cond_1
    move-object v0, p1

    check-cast v0, Lj$/util/Optional;

    .line 318
    .local v0, "other":Lj$/util/Optional;, "Ljava/util/Optional<*>;"
    iget-object v1, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    iget-object v2, v0, Lj$/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public filter(Lj$/util/function/Predicate;)Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/Predicate<",
            "-TT;>;)",
            "Lj$/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "predicate":Lj$/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    return-object p0

    .line 178
    :cond_0
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lj$/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public flatMap(Lj$/util/function/Function;)Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/Function<",
            "-TT;",
            "Lj$/util/Optional<",
            "TU;>;>;)",
            "Lj$/util/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "mapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;Ljava/util/Optional<TU;>;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    return-object v0

    .line 135
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 329
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ifPresent(Lj$/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 158
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "consumer":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 160
    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    .line 146
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public map(Lj$/util/function/Function;)Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/Function<",
            "-TT;+TU;>;)",
            "Lj$/util/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "mapper":Lj$/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    return-object v0

    .line 215
    :cond_0
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 253
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public orElseGet(Lj$/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 267
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "other":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public orElseThrow(Lj$/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lj$/util/function/Supplier<",
            "+TX;>;)TT;^TX;"
        }
    .end annotation

    .line 287
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "exceptionSupplier":Lj$/util/function/Supplier;, "Ljava/util/function/Supplier<+TX;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    return-object v0

    .line 290
    :cond_0
    invoke-interface {p1}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 345
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Optional[%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_0
    const-string v0, "Optional.empty"

    .line 345
    :goto_0
    return-object v0
.end method

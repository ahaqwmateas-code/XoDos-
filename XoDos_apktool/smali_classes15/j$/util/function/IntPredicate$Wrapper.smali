.class public final synthetic Lj$/util/function/IntPredicate$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic wrappedValue:Lj$/util/function/IntPredicate;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/IntPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/IntPredicate$Wrapper;->wrappedValue:Lj$/util/function/IntPredicate;

    return-void
.end method

.method public static synthetic convert(Lj$/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/IntPredicate$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/IntPredicate$VivifiedWrapper;

    iget-object p0, p0, Lj$/util/function/IntPredicate$VivifiedWrapper;->wrappedValue:Ljava/util/function/IntPredicate;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/IntPredicate$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/function/IntPredicate$Wrapper;-><init>(Lj$/util/function/IntPredicate;)V

    return-object v0
.end method


# virtual methods
.method public synthetic and(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 1

    iget-object v0, p0, Lj$/util/function/IntPredicate$Wrapper;->wrappedValue:Lj$/util/function/IntPredicate;

    invoke-static {p1}, Lj$/util/function/IntPredicate$VivifiedWrapper;->convert(Ljava/util/function/IntPredicate;)Lj$/util/function/IntPredicate;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/IntPredicate;->and(Lj$/util/function/IntPredicate;)Lj$/util/function/IntPredicate;

    move-result-object p1

    invoke-static {p1}, Lj$/util/function/IntPredicate$Wrapper;->convert(Lj$/util/function/IntPredicate;)Ljava/util/function/IntPredicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/IntPredicate$Wrapper;->wrappedValue:Lj$/util/function/IntPredicate;

    instance-of v1, p1, Lj$/util/function/IntPredicate$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/IntPredicate$Wrapper;

    iget-object p1, p1, Lj$/util/function/IntPredicate$Wrapper;->wrappedValue:Lj$/util/function/IntPredicate;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/IntPredicate$Wrapper;->wrappedValue:Lj$/util/function/IntPredicate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic negate()Ljava/util/function/IntPredicate;
    .locals 1

    iget-object v0, p0, Lj$/util/function/IntPredicate$Wrapper;->wrappedValue:Lj$/util/function/IntPredicate;

    invoke-interface {v0}, Lj$/util/function/IntPredicate;->negate()Lj$/util/function/IntPredicate;

    move-result-object v0

    invoke-static {v0}, Lj$/util/function/IntPredicate$Wrapper;->convert(Lj$/util/function/IntPredicate;)Ljava/util/function/IntPredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 1

    iget-object v0, p0, Lj$/util/function/IntPredicate$Wrapper;->wrappedValue:Lj$/util/function/IntPredicate;

    invoke-static {p1}, Lj$/util/function/IntPredicate$VivifiedWrapper;->convert(Ljava/util/function/IntPredicate;)Lj$/util/function/IntPredicate;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/IntPredicate;->or(Lj$/util/function/IntPredicate;)Lj$/util/function/IntPredicate;

    move-result-object p1

    invoke-static {p1}, Lj$/util/function/IntPredicate$Wrapper;->convert(Lj$/util/function/IntPredicate;)Ljava/util/function/IntPredicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic test(I)Z
    .locals 1

    iget-object v0, p0, Lj$/util/function/IntPredicate$Wrapper;->wrappedValue:Lj$/util/function/IntPredicate;

    invoke-interface {v0, p1}, Lj$/util/function/IntPredicate;->test(I)Z

    move-result p1

    return p1
.end method

.class public final synthetic Lj$/util/function/BiPredicate$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic wrappedValue:Lj$/util/function/BiPredicate;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/BiPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/BiPredicate$Wrapper;->wrappedValue:Lj$/util/function/BiPredicate;

    return-void
.end method

.method public static synthetic convert(Lj$/util/function/BiPredicate;)Ljava/util/function/BiPredicate;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/BiPredicate$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/BiPredicate$VivifiedWrapper;

    iget-object p0, p0, Lj$/util/function/BiPredicate$VivifiedWrapper;->wrappedValue:Ljava/util/function/BiPredicate;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/BiPredicate$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/function/BiPredicate$Wrapper;-><init>(Lj$/util/function/BiPredicate;)V

    return-object v0
.end method


# virtual methods
.method public synthetic and(Ljava/util/function/BiPredicate;)Ljava/util/function/BiPredicate;
    .locals 1

    iget-object v0, p0, Lj$/util/function/BiPredicate$Wrapper;->wrappedValue:Lj$/util/function/BiPredicate;

    invoke-static {p1}, Lj$/util/function/BiPredicate$VivifiedWrapper;->convert(Ljava/util/function/BiPredicate;)Lj$/util/function/BiPredicate;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/BiPredicate;->and(Lj$/util/function/BiPredicate;)Lj$/util/function/BiPredicate;

    move-result-object p1

    invoke-static {p1}, Lj$/util/function/BiPredicate$Wrapper;->convert(Lj$/util/function/BiPredicate;)Ljava/util/function/BiPredicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/BiPredicate$Wrapper;->wrappedValue:Lj$/util/function/BiPredicate;

    instance-of v1, p1, Lj$/util/function/BiPredicate$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/BiPredicate$Wrapper;

    iget-object p1, p1, Lj$/util/function/BiPredicate$Wrapper;->wrappedValue:Lj$/util/function/BiPredicate;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/BiPredicate$Wrapper;->wrappedValue:Lj$/util/function/BiPredicate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic negate()Ljava/util/function/BiPredicate;
    .locals 1

    iget-object v0, p0, Lj$/util/function/BiPredicate$Wrapper;->wrappedValue:Lj$/util/function/BiPredicate;

    invoke-interface {v0}, Lj$/util/function/BiPredicate;->negate()Lj$/util/function/BiPredicate;

    move-result-object v0

    invoke-static {v0}, Lj$/util/function/BiPredicate$Wrapper;->convert(Lj$/util/function/BiPredicate;)Ljava/util/function/BiPredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Ljava/util/function/BiPredicate;)Ljava/util/function/BiPredicate;
    .locals 1

    iget-object v0, p0, Lj$/util/function/BiPredicate$Wrapper;->wrappedValue:Lj$/util/function/BiPredicate;

    invoke-static {p1}, Lj$/util/function/BiPredicate$VivifiedWrapper;->convert(Ljava/util/function/BiPredicate;)Lj$/util/function/BiPredicate;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/BiPredicate;->or(Lj$/util/function/BiPredicate;)Lj$/util/function/BiPredicate;

    move-result-object p1

    invoke-static {p1}, Lj$/util/function/BiPredicate$Wrapper;->convert(Lj$/util/function/BiPredicate;)Ljava/util/function/BiPredicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/function/BiPredicate$Wrapper;->wrappedValue:Lj$/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Lj$/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

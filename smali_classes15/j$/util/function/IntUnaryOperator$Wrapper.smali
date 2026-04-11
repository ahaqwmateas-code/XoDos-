.class public final synthetic Lj$/util/function/IntUnaryOperator$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic wrappedValue:Lj$/util/function/IntUnaryOperator;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/IntUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/IntUnaryOperator$Wrapper;->wrappedValue:Lj$/util/function/IntUnaryOperator;

    return-void
.end method

.method public static synthetic convert(Lj$/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/IntUnaryOperator$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/IntUnaryOperator$VivifiedWrapper;

    iget-object p0, p0, Lj$/util/function/IntUnaryOperator$VivifiedWrapper;->wrappedValue:Ljava/util/function/IntUnaryOperator;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/IntUnaryOperator$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/function/IntUnaryOperator$Wrapper;-><init>(Lj$/util/function/IntUnaryOperator;)V

    return-object v0
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .locals 1

    iget-object v0, p0, Lj$/util/function/IntUnaryOperator$Wrapper;->wrappedValue:Lj$/util/function/IntUnaryOperator;

    invoke-static {p1}, Lj$/util/function/IntUnaryOperator$VivifiedWrapper;->convert(Ljava/util/function/IntUnaryOperator;)Lj$/util/function/IntUnaryOperator;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/IntUnaryOperator;->andThen(Lj$/util/function/IntUnaryOperator;)Lj$/util/function/IntUnaryOperator;

    move-result-object p1

    invoke-static {p1}, Lj$/util/function/IntUnaryOperator$Wrapper;->convert(Lj$/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic applyAsInt(I)I
    .locals 1

    iget-object v0, p0, Lj$/util/function/IntUnaryOperator$Wrapper;->wrappedValue:Lj$/util/function/IntUnaryOperator;

    invoke-interface {v0, p1}, Lj$/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    return p1
.end method

.method public synthetic compose(Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .locals 1

    iget-object v0, p0, Lj$/util/function/IntUnaryOperator$Wrapper;->wrappedValue:Lj$/util/function/IntUnaryOperator;

    invoke-static {p1}, Lj$/util/function/IntUnaryOperator$VivifiedWrapper;->convert(Ljava/util/function/IntUnaryOperator;)Lj$/util/function/IntUnaryOperator;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/IntUnaryOperator;->compose(Lj$/util/function/IntUnaryOperator;)Lj$/util/function/IntUnaryOperator;

    move-result-object p1

    invoke-static {p1}, Lj$/util/function/IntUnaryOperator$Wrapper;->convert(Lj$/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/IntUnaryOperator$Wrapper;->wrappedValue:Lj$/util/function/IntUnaryOperator;

    instance-of v1, p1, Lj$/util/function/IntUnaryOperator$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/IntUnaryOperator$Wrapper;

    iget-object p1, p1, Lj$/util/function/IntUnaryOperator$Wrapper;->wrappedValue:Lj$/util/function/IntUnaryOperator;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/IntUnaryOperator$Wrapper;->wrappedValue:Lj$/util/function/IntUnaryOperator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

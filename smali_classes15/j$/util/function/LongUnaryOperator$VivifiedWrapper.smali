.class public final synthetic Lj$/util/function/LongUnaryOperator$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/LongUnaryOperator;


# instance fields
.field public final synthetic wrappedValue:Ljava/util/function/LongUnaryOperator;


# direct methods
.method private synthetic constructor <init>(Ljava/util/function/LongUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/LongUnaryOperator$VivifiedWrapper;->wrappedValue:Ljava/util/function/LongUnaryOperator;

    return-void
.end method

.method public static synthetic convert(Ljava/util/function/LongUnaryOperator;)Lj$/util/function/LongUnaryOperator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/LongUnaryOperator$Wrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/LongUnaryOperator$Wrapper;

    iget-object p0, p0, Lj$/util/function/LongUnaryOperator$Wrapper;->wrappedValue:Lj$/util/function/LongUnaryOperator;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/LongUnaryOperator$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/util/function/LongUnaryOperator$VivifiedWrapper;-><init>(Ljava/util/function/LongUnaryOperator;)V

    return-object v0
.end method


# virtual methods
.method public synthetic andThen(Lj$/util/function/LongUnaryOperator;)Lj$/util/function/LongUnaryOperator;
    .locals 1

    iget-object v0, p0, Lj$/util/function/LongUnaryOperator$VivifiedWrapper;->wrappedValue:Ljava/util/function/LongUnaryOperator;

    invoke-static {p1}, Lj$/util/function/LongUnaryOperator$Wrapper;->convert(Lj$/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/LongUnaryOperator;->andThen(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;

    move-result-object p1

    invoke-static {p1}, Lj$/util/function/LongUnaryOperator$VivifiedWrapper;->convert(Ljava/util/function/LongUnaryOperator;)Lj$/util/function/LongUnaryOperator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic applyAsLong(J)J
    .locals 1

    iget-object v0, p0, Lj$/util/function/LongUnaryOperator$VivifiedWrapper;->wrappedValue:Ljava/util/function/LongUnaryOperator;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic compose(Lj$/util/function/LongUnaryOperator;)Lj$/util/function/LongUnaryOperator;
    .locals 1

    iget-object v0, p0, Lj$/util/function/LongUnaryOperator$VivifiedWrapper;->wrappedValue:Ljava/util/function/LongUnaryOperator;

    invoke-static {p1}, Lj$/util/function/LongUnaryOperator$Wrapper;->convert(Lj$/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/LongUnaryOperator;->compose(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;

    move-result-object p1

    invoke-static {p1}, Lj$/util/function/LongUnaryOperator$VivifiedWrapper;->convert(Ljava/util/function/LongUnaryOperator;)Lj$/util/function/LongUnaryOperator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/LongUnaryOperator$VivifiedWrapper;->wrappedValue:Ljava/util/function/LongUnaryOperator;

    instance-of v1, p1, Lj$/util/function/LongUnaryOperator$VivifiedWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/LongUnaryOperator$VivifiedWrapper;

    iget-object p1, p1, Lj$/util/function/LongUnaryOperator$VivifiedWrapper;->wrappedValue:Ljava/util/function/LongUnaryOperator;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/LongUnaryOperator$VivifiedWrapper;->wrappedValue:Ljava/util/function/LongUnaryOperator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

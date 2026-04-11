.class public final synthetic Lj$/util/function/DoubleConsumer$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field public final synthetic wrappedValue:Lj$/util/function/DoubleConsumer;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/DoubleConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/DoubleConsumer$Wrapper;->wrappedValue:Lj$/util/function/DoubleConsumer;

    return-void
.end method

.method public static synthetic convert(Lj$/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/DoubleConsumer$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/DoubleConsumer$VivifiedWrapper;

    iget-object p0, p0, Lj$/util/function/DoubleConsumer$VivifiedWrapper;->wrappedValue:Ljava/util/function/DoubleConsumer;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/DoubleConsumer$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/function/DoubleConsumer$Wrapper;-><init>(Lj$/util/function/DoubleConsumer;)V

    return-object v0
.end method


# virtual methods
.method public synthetic accept(D)V
    .locals 1

    iget-object v0, p0, Lj$/util/function/DoubleConsumer$Wrapper;->wrappedValue:Lj$/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Lj$/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 1

    iget-object v0, p0, Lj$/util/function/DoubleConsumer$Wrapper;->wrappedValue:Lj$/util/function/DoubleConsumer;

    invoke-static {p1}, Lj$/util/function/DoubleConsumer$VivifiedWrapper;->convert(Ljava/util/function/DoubleConsumer;)Lj$/util/function/DoubleConsumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/DoubleConsumer;->andThen(Lj$/util/function/DoubleConsumer;)Lj$/util/function/DoubleConsumer;

    move-result-object p1

    invoke-static {p1}, Lj$/util/function/DoubleConsumer$Wrapper;->convert(Lj$/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/DoubleConsumer$Wrapper;->wrappedValue:Lj$/util/function/DoubleConsumer;

    instance-of v1, p1, Lj$/util/function/DoubleConsumer$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/DoubleConsumer$Wrapper;

    iget-object p1, p1, Lj$/util/function/DoubleConsumer$Wrapper;->wrappedValue:Lj$/util/function/DoubleConsumer;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/DoubleConsumer$Wrapper;->wrappedValue:Lj$/util/function/DoubleConsumer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

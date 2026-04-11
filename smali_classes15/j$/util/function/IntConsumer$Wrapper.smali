.class public final synthetic Lj$/util/function/IntConsumer$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic wrappedValue:Lj$/util/function/IntConsumer;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/IntConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/IntConsumer$Wrapper;->wrappedValue:Lj$/util/function/IntConsumer;

    return-void
.end method

.method public static synthetic convert(Lj$/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/IntConsumer$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/IntConsumer$VivifiedWrapper;

    iget-object p0, p0, Lj$/util/function/IntConsumer$VivifiedWrapper;->wrappedValue:Ljava/util/function/IntConsumer;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/IntConsumer$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/function/IntConsumer$Wrapper;-><init>(Lj$/util/function/IntConsumer;)V

    return-object v0
.end method


# virtual methods
.method public synthetic accept(I)V
    .locals 1

    iget-object v0, p0, Lj$/util/function/IntConsumer$Wrapper;->wrappedValue:Lj$/util/function/IntConsumer;

    invoke-interface {v0, p1}, Lj$/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 1

    iget-object v0, p0, Lj$/util/function/IntConsumer$Wrapper;->wrappedValue:Lj$/util/function/IntConsumer;

    invoke-static {p1}, Lj$/util/function/IntConsumer$VivifiedWrapper;->convert(Ljava/util/function/IntConsumer;)Lj$/util/function/IntConsumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/IntConsumer;->andThen(Lj$/util/function/IntConsumer;)Lj$/util/function/IntConsumer;

    move-result-object p1

    invoke-static {p1}, Lj$/util/function/IntConsumer$Wrapper;->convert(Lj$/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/IntConsumer$Wrapper;->wrappedValue:Lj$/util/function/IntConsumer;

    instance-of v1, p1, Lj$/util/function/IntConsumer$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/IntConsumer$Wrapper;

    iget-object p1, p1, Lj$/util/function/IntConsumer$Wrapper;->wrappedValue:Lj$/util/function/IntConsumer;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/IntConsumer$Wrapper;->wrappedValue:Lj$/util/function/IntConsumer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

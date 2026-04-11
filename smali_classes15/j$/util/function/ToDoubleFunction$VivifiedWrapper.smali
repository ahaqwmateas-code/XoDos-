.class public final synthetic Lj$/util/function/ToDoubleFunction$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic wrappedValue:Ljava/util/function/ToDoubleFunction;


# direct methods
.method private synthetic constructor <init>(Ljava/util/function/ToDoubleFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/ToDoubleFunction$VivifiedWrapper;->wrappedValue:Ljava/util/function/ToDoubleFunction;

    return-void
.end method

.method public static synthetic convert(Ljava/util/function/ToDoubleFunction;)Lj$/util/function/ToDoubleFunction;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/ToDoubleFunction$Wrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/ToDoubleFunction$Wrapper;

    iget-object p0, p0, Lj$/util/function/ToDoubleFunction$Wrapper;->wrappedValue:Lj$/util/function/ToDoubleFunction;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/ToDoubleFunction$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/util/function/ToDoubleFunction$VivifiedWrapper;-><init>(Ljava/util/function/ToDoubleFunction;)V

    return-object v0
.end method


# virtual methods
.method public synthetic applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    iget-object v0, p0, Lj$/util/function/ToDoubleFunction$VivifiedWrapper;->wrappedValue:Ljava/util/function/ToDoubleFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/ToDoubleFunction$VivifiedWrapper;->wrappedValue:Ljava/util/function/ToDoubleFunction;

    instance-of v1, p1, Lj$/util/function/ToDoubleFunction$VivifiedWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/ToDoubleFunction$VivifiedWrapper;

    iget-object p1, p1, Lj$/util/function/ToDoubleFunction$VivifiedWrapper;->wrappedValue:Ljava/util/function/ToDoubleFunction;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/ToDoubleFunction$VivifiedWrapper;->wrappedValue:Ljava/util/function/ToDoubleFunction;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

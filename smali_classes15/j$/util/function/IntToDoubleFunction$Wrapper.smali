.class public final synthetic Lj$/util/function/IntToDoubleFunction$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntToDoubleFunction;


# instance fields
.field public final synthetic wrappedValue:Lj$/util/function/IntToDoubleFunction;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/IntToDoubleFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/IntToDoubleFunction$Wrapper;->wrappedValue:Lj$/util/function/IntToDoubleFunction;

    return-void
.end method

.method public static synthetic convert(Lj$/util/function/IntToDoubleFunction;)Ljava/util/function/IntToDoubleFunction;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/IntToDoubleFunction$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/IntToDoubleFunction$VivifiedWrapper;

    iget-object p0, p0, Lj$/util/function/IntToDoubleFunction$VivifiedWrapper;->wrappedValue:Ljava/util/function/IntToDoubleFunction;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/IntToDoubleFunction$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/function/IntToDoubleFunction$Wrapper;-><init>(Lj$/util/function/IntToDoubleFunction;)V

    return-object v0
.end method


# virtual methods
.method public synthetic applyAsDouble(I)D
    .locals 2

    iget-object v0, p0, Lj$/util/function/IntToDoubleFunction$Wrapper;->wrappedValue:Lj$/util/function/IntToDoubleFunction;

    invoke-interface {v0, p1}, Lj$/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/IntToDoubleFunction$Wrapper;->wrappedValue:Lj$/util/function/IntToDoubleFunction;

    instance-of v1, p1, Lj$/util/function/IntToDoubleFunction$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/IntToDoubleFunction$Wrapper;

    iget-object p1, p1, Lj$/util/function/IntToDoubleFunction$Wrapper;->wrappedValue:Lj$/util/function/IntToDoubleFunction;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/IntToDoubleFunction$Wrapper;->wrappedValue:Lj$/util/function/IntToDoubleFunction;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

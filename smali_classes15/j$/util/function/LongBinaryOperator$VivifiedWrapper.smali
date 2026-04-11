.class public final synthetic Lj$/util/function/LongBinaryOperator$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/LongBinaryOperator;


# instance fields
.field public final synthetic wrappedValue:Ljava/util/function/LongBinaryOperator;


# direct methods
.method private synthetic constructor <init>(Ljava/util/function/LongBinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/LongBinaryOperator$VivifiedWrapper;->wrappedValue:Ljava/util/function/LongBinaryOperator;

    return-void
.end method

.method public static synthetic convert(Ljava/util/function/LongBinaryOperator;)Lj$/util/function/LongBinaryOperator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/LongBinaryOperator$Wrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/LongBinaryOperator$Wrapper;

    iget-object p0, p0, Lj$/util/function/LongBinaryOperator$Wrapper;->wrappedValue:Lj$/util/function/LongBinaryOperator;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/LongBinaryOperator$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/util/function/LongBinaryOperator$VivifiedWrapper;-><init>(Ljava/util/function/LongBinaryOperator;)V

    return-object v0
.end method


# virtual methods
.method public synthetic applyAsLong(JJ)J
    .locals 1

    iget-object v0, p0, Lj$/util/function/LongBinaryOperator$VivifiedWrapper;->wrappedValue:Ljava/util/function/LongBinaryOperator;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/LongBinaryOperator$VivifiedWrapper;->wrappedValue:Ljava/util/function/LongBinaryOperator;

    instance-of v1, p1, Lj$/util/function/LongBinaryOperator$VivifiedWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/LongBinaryOperator$VivifiedWrapper;

    iget-object p1, p1, Lj$/util/function/LongBinaryOperator$VivifiedWrapper;->wrappedValue:Ljava/util/function/LongBinaryOperator;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/LongBinaryOperator$VivifiedWrapper;->wrappedValue:Ljava/util/function/LongBinaryOperator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.class public final synthetic Lj$/util/function/DoublePredicate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/DoublePredicate;


# instance fields
.field public final synthetic f$0:Lj$/util/function/DoublePredicate;


# direct methods
.method public synthetic constructor <init>(Lj$/util/function/DoublePredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/DoublePredicate$$ExternalSyntheticLambda0;->f$0:Lj$/util/function/DoublePredicate;

    return-void
.end method


# virtual methods
.method public synthetic and(Lj$/util/function/DoublePredicate;)Lj$/util/function/DoublePredicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/DoublePredicate$-CC;->$default$and(Lj$/util/function/DoublePredicate;Lj$/util/function/DoublePredicate;)Lj$/util/function/DoublePredicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Lj$/util/function/DoublePredicate;
    .locals 1

    invoke-static {p0}, Lj$/util/function/DoublePredicate$-CC;->$default$negate(Lj$/util/function/DoublePredicate;)Lj$/util/function/DoublePredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Lj$/util/function/DoublePredicate;)Lj$/util/function/DoublePredicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/DoublePredicate$-CC;->$default$or(Lj$/util/function/DoublePredicate;Lj$/util/function/DoublePredicate;)Lj$/util/function/DoublePredicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(D)Z
    .locals 1

    iget-object v0, p0, Lj$/util/function/DoublePredicate$$ExternalSyntheticLambda0;->f$0:Lj$/util/function/DoublePredicate;

    invoke-static {v0, p1, p2}, Lj$/util/function/DoublePredicate$-CC;->$private$lambda$negate$1(Lj$/util/function/DoublePredicate;D)Z

    move-result p1

    return p1
.end method

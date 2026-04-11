.class public final synthetic Lcom/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lj$/util/function/Function;

.field public final synthetic f$1:Lj$/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lj$/util/function/Function;Lj$/util/function/Function;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda5;->f$0:Lj$/util/function/Function;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda5;->f$1:Lj$/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda5;->f$0:Lj$/util/function/Function;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSetMultimap$$ExternalSyntheticLambda5;->f$1:Lj$/util/function/Function;

    check-cast p1, Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap;->lambda$toImmutableSetMultimap$0(Lj$/util/function/Function;Lj$/util/function/Function;Lcom/google/common/collect/ImmutableSetMultimap$Builder;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method

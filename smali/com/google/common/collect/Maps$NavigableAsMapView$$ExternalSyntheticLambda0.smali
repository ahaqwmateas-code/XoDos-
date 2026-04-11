.class public final synthetic Lcom/google/common/collect/Maps$NavigableAsMapView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/common/collect/Maps$NavigableAsMapView;

.field public final synthetic f$1:Lj$/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Maps$NavigableAsMapView;Lj$/util/function/BiConsumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Maps$NavigableAsMapView$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/Maps$NavigableAsMapView;

    iput-object p2, p0, Lcom/google/common/collect/Maps$NavigableAsMapView$$ExternalSyntheticLambda0;->f$1:Lj$/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/common/collect/Maps$NavigableAsMapView$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/Maps$NavigableAsMapView;

    iget-object v1, p0, Lcom/google/common/collect/Maps$NavigableAsMapView$$ExternalSyntheticLambda0;->f$1:Lj$/util/function/BiConsumer;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/Maps$NavigableAsMapView;->lambda$forEach$1$com-google-common-collect-Maps$NavigableAsMapView(Lj$/util/function/BiConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

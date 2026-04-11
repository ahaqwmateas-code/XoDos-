.class public final synthetic Lcom/google/common/collect/Maps$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lj$/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Lj$/util/function/BinaryOperator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Maps$$ExternalSyntheticLambda0;->f$0:Lj$/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/common/collect/Maps$$ExternalSyntheticLambda0;->f$0:Lj$/util/function/BinaryOperator;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->lambda$toImmutableEnumMap$3(Lj$/util/function/BinaryOperator;)Lcom/google/common/collect/Maps$Accumulator;

    move-result-object v0

    return-object v0
.end method

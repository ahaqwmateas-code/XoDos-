.class public final synthetic Lj$/util/stream/Collectors$$ExternalSyntheticLambda70;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lj$/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Lj$/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda70;->f$0:Lj$/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda70;->f$0:Lj$/util/function/BinaryOperator;

    invoke-static {v0}, Lj$/util/stream/Collectors;->lambda$reducing$38(Lj$/util/function/BinaryOperator;)Lj$/util/stream/Collectors$1OptionalBox;

    move-result-object v0

    return-object v0
.end method

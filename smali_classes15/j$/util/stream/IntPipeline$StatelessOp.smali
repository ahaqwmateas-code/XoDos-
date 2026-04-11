.class abstract Lj$/util/stream/IntPipeline$StatelessOp;
.super Lj$/util/stream/IntPipeline;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/IntPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StatelessOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/IntPipeline<",
        "TE_IN;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 581
    const-class v0, Lj$/util/stream/IntPipeline;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V
    .locals 0
    .param p2, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p3, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*TE_IN;*>;",
            "Lj$/util/stream/StreamShape;",
            "I)V"
        }
    .end annotation

    .line 592
    .local p0, "this":Lj$/util/stream/IntPipeline$StatelessOp;, "Ljava/util/stream/IntPipeline$StatelessOp<TE_IN;>;"
    .local p1, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p3}, Lj$/util/stream/IntPipeline;-><init>(Lj$/util/stream/AbstractPipeline;I)V

    .line 593
    nop

    .line 594
    return-void
.end method


# virtual methods
.method final opIsStateful()Z
    .locals 1

    .line 598
    .local p0, "this":Lj$/util/stream/IntPipeline$StatelessOp;, "Ljava/util/stream/IntPipeline$StatelessOp<TE_IN;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic parallel()Lj$/util/stream/IntStream;
    .locals 1

    .line 581
    .local p0, "this":Lj$/util/stream/IntPipeline$StatelessOp;, "Ljava/util/stream/IntPipeline$StatelessOp<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/IntPipeline;->parallel()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/IntStream;

    return-object v0
.end method

.method public bridge synthetic sequential()Lj$/util/stream/IntStream;
    .locals 1

    .line 581
    .local p0, "this":Lj$/util/stream/IntPipeline$StatelessOp;, "Ljava/util/stream/IntPipeline$StatelessOp<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/IntPipeline;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/IntStream;

    return-object v0
.end method

.class Lcom/google/common/collect/TreeTraverser$3$1;
.super Ljava/lang/Object;
.source "TreeTraverser.java"

# interfaces
.implements Lj$/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeTraverser$3;->forEach(Lj$/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/TreeTraverser$3;

.field final synthetic val$action:Lj$/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeTraverser$3;Lj$/util/function/Consumer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/collect/TreeTraverser$3;

    .line 190
    .local p0, "this":Lcom/google/common/collect/TreeTraverser$3$1;, "Lcom/google/common/collect/TreeTraverser$3$1;"
    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$3$1;->this$1:Lcom/google/common/collect/TreeTraverser$3;

    iput-object p2, p0, Lcom/google/common/collect/TreeTraverser$3$1;->val$action:Lj$/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/google/common/collect/TreeTraverser$3$1;, "Lcom/google/common/collect/TreeTraverser$3$1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$3$1;->this$1:Lcom/google/common/collect/TreeTraverser$3;

    iget-object v0, v0, Lcom/google/common/collect/TreeTraverser$3;->this$0:Lcom/google/common/collect/TreeTraverser;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p0}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Lj$/util/function/Consumer;)V

    .line 194
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$3$1;->val$action:Lj$/util/function/Consumer;

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

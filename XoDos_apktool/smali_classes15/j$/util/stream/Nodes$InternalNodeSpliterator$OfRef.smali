.class final Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;
.super Lj$/util/stream/Nodes$InternalNodeSpliterator;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$InternalNodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/Nodes$InternalNodeSpliterator<",
        "TT;",
        "Lj$/util/Spliterator<",
        "TT;>;",
        "Lj$/util/stream/Node<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/stream/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 1062
    .local p0, "this":Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef<TT;>;"
    .local p1, "curNode":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {p0, p1}, Lj$/util/stream/Nodes$InternalNodeSpliterator;-><init>(Lj$/util/stream/Node;)V

    .line 1063
    return-void
.end method


# virtual methods
.method public forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1089
    .local p0, "this":Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef<TT;>;"
    .local p1, "consumer":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Lj$/util/stream/Node;

    if-nez v0, :cond_0

    .line 1090
    return-void

    .line 1092
    :cond_0
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    if-nez v0, :cond_3

    .line 1093
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Lj$/util/Spliterator;

    if-nez v0, :cond_2

    .line 1094
    invoke-virtual {p0}, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->initStack()Ljava/util/Deque;

    move-result-object v0

    .line 1096
    .local v0, "stack":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/util/stream/Node<TT;>;>;"
    :goto_0
    invoke-virtual {p0, v0}, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->findNextLeafNode(Ljava/util/Deque;)Lj$/util/stream/Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "leaf":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    if-eqz v1, :cond_1

    .line 1097
    invoke-interface {v2, p1}, Lj$/util/stream/Node;->forEach(Lj$/util/function/Consumer;)V

    goto :goto_0

    .line 1099
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Lj$/util/stream/Node;

    .line 1100
    .end local v0    # "stack":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/util/stream/Node<TT;>;>;"
    .end local v2    # "leaf":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    goto :goto_2

    .line 1102
    :cond_2
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Lj$/util/function/Consumer;)V

    goto :goto_2

    .line 1105
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvance(Lj$/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1106
    :cond_4
    :goto_2
    return-void
.end method

.method public tryAdvance(Lj$/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1067
    .local p0, "this":Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef<TT;>;"
    .local p1, "consumer":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->initTryAdvance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    const/4 v0, 0x0

    return v0

    .line 1070
    :cond_0
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->tryAdvance(Lj$/util/function/Consumer;)Z

    move-result v0

    .line 1071
    .local v0, "hasNext":Z
    if-nez v0, :cond_2

    .line 1072
    iget-object v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Lj$/util/Spliterator;

    if-nez v1, :cond_1

    .line 1074
    iget-object v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v1}, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->findNextLeafNode(Ljava/util/Deque;)Lj$/util/stream/Node;

    move-result-object v1

    .line 1075
    .local v1, "leaf":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    if-eqz v1, :cond_1

    .line 1076
    invoke-interface {v1}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object v2

    iput-object v2, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    .line 1078
    iget-object v2, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    invoke-interface {v2, p1}, Lj$/util/Spliterator;->tryAdvance(Lj$/util/function/Consumer;)Z

    move-result v2

    return v2

    .line 1082
    .end local v1    # "leaf":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Lj$/util/stream/Node;

    .line 1084
    :cond_2
    return v0
.end method

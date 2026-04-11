.class public final Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;
.super Lio/reactivex/flowables/ConnectableFlowable;
.source "FlowablePublishAlt.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/HasUpstreamPublisher;
.implements Lio/reactivex/internal/disposables/ResettableConnectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;,
        Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/flowables/ConnectableFlowable<",
        "TT;>;",
        "Lio/reactivex/internal/fuseable/HasUpstreamPublisher<",
        "TT;>;",
        "Lio/reactivex/internal/disposables/ResettableConnectable;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final source:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;I)V
    .locals 1
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;I)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt<TT;>;"
    .local p1, "source":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<TT;>;"
    invoke-direct {p0}, Lio/reactivex/flowables/ConnectableFlowable;-><init>()V

    .line 54
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->source:Lorg/reactivestreams/Publisher;

    .line 55
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->bufferSize:I

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    return-void
.end method


# virtual methods
.method public connect(Lio/reactivex/functions/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt<TT;>;"
    .local p1, "connection":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Lio/reactivex/disposables/Disposable;>;"
    const/4 v0, 0x0

    .line 77
    .local v0, "doConnect":Z
    :goto_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;

    .line 79
    .local v1, "conn":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    :cond_0
    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->bufferSize:I

    invoke-direct {v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 81
    .local v2, "fresh":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    goto :goto_0

    .line 84
    :cond_1
    move-object v1, v2

    .line 87
    .end local v2    # "fresh":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    :cond_2
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    move v0, v3

    .line 88
    nop

    .line 92
    :try_start_0
    invoke-interface {p1, v1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    nop

    .line 98
    if-eqz v0, :cond_4

    .line 99
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->source:Lorg/reactivestreams/Publisher;

    invoke-interface {v2, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 101
    :cond_4
    return-void

    .line 93
    :catchall_0
    move-exception v2

    .line 94
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 95
    invoke-static {v2}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public publishBufferSize()I
    .locals 1

    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt<TT;>;"
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->bufferSize:I

    return v0
.end method

.method public resetIf(Lio/reactivex/disposables/Disposable;)V
    .locals 3
    .param p1, "connection"    # Lio/reactivex/disposables/Disposable;

    .line 145
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v1, p1

    check-cast v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public source()Lorg/reactivestreams/Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->source:Lorg/reactivestreams/Publisher;

    return-object v0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    nop

    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;

    .line 111
    .local v0, "conn":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    if-nez v0, :cond_1

    .line 112
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->bufferSize:I

    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 113
    .local v1, "fresh":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    goto :goto_0

    .line 116
    :cond_0
    move-object v0, v1

    .line 117
    .end local v1    # "fresh":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection<TT;>;"
    nop

    .line 122
    :cond_1
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;

    invoke-direct {v1, p1, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;)V

    .line 123
    .local v1, "inner":Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription<TT;>;"
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 125
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->add(Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->remove(Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription;)V

    goto :goto_1

    .line 129
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->drain()V

    .line 131
    :goto_1
    return-void

    .line 134
    :cond_3
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection;->error:Ljava/lang/Throwable;

    .line 135
    .local v2, "ex":Ljava/lang/Throwable;
    if-eqz v2, :cond_4

    .line 136
    invoke-interface {p1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 138
    :cond_4
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 140
    :goto_2
    return-void
.end method

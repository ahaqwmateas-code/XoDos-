.class public final Lio/reactivex/internal/operators/observable/ObservablePublishAlt;
.super Lio/reactivex/observables/ConnectableObservable;
.source "ObservablePublishAlt.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/HasUpstreamObservableSource;
.implements Lio/reactivex/internal/disposables/ResettableConnectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;,
        Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observables/ConnectableObservable<",
        "TT;>;",
        "Lio/reactivex/internal/fuseable/HasUpstreamObservableSource<",
        "TT;>;",
        "Lio/reactivex/internal/disposables/ResettableConnectable;"
    }
.end annotation


# instance fields
.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishAlt;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt<TT;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    invoke-direct {p0}, Lio/reactivex/observables/ConnectableObservable;-><init>()V

    .line 47
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->source:Lio/reactivex/ObservableSource;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 49
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

    .line 53
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishAlt;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt<TT;>;"
    .local p1, "connection":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Lio/reactivex/disposables/Disposable;>;"
    const/4 v0, 0x0

    .line 57
    .local v0, "doConnect":Z
    :goto_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;

    .line 59
    .local v1, "conn":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    :cond_0
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v3}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 61
    .local v2, "fresh":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;"
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    move-object v1, v2

    .line 67
    .end local v2    # "fresh":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;"
    :cond_2
    iget-object v2, v1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, v1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    move v0, v3

    .line 68
    nop

    .line 72
    :try_start_0
    invoke-interface {p1, v1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    nop

    .line 78
    if-eqz v0, :cond_4

    .line 79
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->source:Lio/reactivex/ObservableSource;

    invoke-interface {v2, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 81
    :cond_4
    return-void

    .line 73
    :catchall_0
    move-exception v2

    .line 74
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 75
    invoke-static {v2}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public resetIf(Lio/reactivex/disposables/Disposable;)V
    .locals 3
    .param p1, "connection"    # Lio/reactivex/disposables/Disposable;

    .line 120
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishAlt;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v1, p1

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public source()Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishAlt;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->source:Lio/reactivex/ObservableSource;

    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishAlt;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt<TT;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    nop

    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;

    .line 90
    .local v0, "conn":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;"
    if-nez v0, :cond_1

    .line 91
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 92
    .local v1, "fresh":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    goto :goto_0

    .line 95
    :cond_0
    move-object v0, v1

    .line 96
    .end local v1    # "fresh":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;"
    nop

    .line 100
    :cond_1
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    invoke-direct {v1, p1, v0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;)V

    .line 101
    .local v1, "inner":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 102
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->add(Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->remove(Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;)V

    .line 106
    :cond_2
    return-void

    .line 109
    :cond_3
    iget-object v2, v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->error:Ljava/lang/Throwable;

    .line 110
    .local v2, "error":Ljava/lang/Throwable;
    if-eqz v2, :cond_4

    .line 111
    invoke-interface {p1, v2}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 113
    :cond_4
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    .line 115
    :goto_1
    return-void
.end method

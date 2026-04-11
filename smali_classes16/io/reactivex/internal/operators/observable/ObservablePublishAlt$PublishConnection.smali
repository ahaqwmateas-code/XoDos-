.class final Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservablePublishAlt.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservablePublishAlt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "[",
        "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<",
        "TT;>;>;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

.field static final TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

.field private static final serialVersionUID:J = -0x2d1f6696927d02d4L


# instance fields
.field final connect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 141
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    sput-object v1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    .line 144
    new-array v0, v0, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 149
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;"
    .local p1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 153
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->lazySet(Ljava/lang/Object;)V

    .line 154
    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 202
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    nop

    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    .line 203
    .local v0, "a":[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 204
    return v2

    .line 206
    :cond_0
    array-length v1, v0

    .line 208
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    .line 209
    .local v3, "b":[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    aput-object p1, v3, v1

    .line 211
    invoke-virtual {p0, v0, v3}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    const/4 v2, 0x1

    return v2

    .line 214
    .end local v0    # "a":[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .line 159
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;"
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->current:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 162
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 166
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 5

    .line 194
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 195
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 196
    .local v3, "inner":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    iget-object v4, v3, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;->downstream:Lio/reactivex/Observer;

    invoke-interface {v4}, Lio/reactivex/Observer;->onComplete()V

    .line 195
    .end local v3    # "inner":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 184
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->error:Ljava/lang/Throwable;

    .line 185
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 186
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 187
    .local v3, "inner":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    iget-object v4, v3, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;->downstream:Lio/reactivex/Observer;

    invoke-interface {v4, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 186
    .end local v3    # "inner":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 177
    .local v3, "inner":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    iget-object v4, v3, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;->downstream:Lio/reactivex/Observer;

    invoke-interface {v4, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 176
    .end local v3    # "inner":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 171
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 172
    return-void
.end method

.method public remove(Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 220
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection<TT;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    nop

    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    .line 221
    .local v0, "a":[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    array-length v1, v0

    .line 222
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 223
    return-void

    .line 226
    :cond_0
    const/4 v2, -0x1

    .line 227
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 228
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 229
    move v2, v3

    .line 230
    goto :goto_2

    .line 227
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 234
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 235
    return-void

    .line 237
    :cond_3
    sget-object v3, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    .line 238
    .local v3, "b":[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    .line 239
    add-int/lit8 v5, v1, -0x1

    new-array v3, v5, [Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;

    .line 240
    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v4

    invoke-static {v0, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    :cond_4
    invoke-virtual {p0, v0, v3}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 244
    return-void

    .line 246
    .end local v0    # "a":[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable;, "[Lio/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable<TT;>;"
    :cond_5
    goto :goto_0
.end method

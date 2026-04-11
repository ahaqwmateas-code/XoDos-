.class final Lj$/util/stream/Streams$StreamBuilderImpl;
.super Lj$/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Lj$/util/stream/Stream$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/Streams$AbstractStreamBuilderImpl<",
        "TT;",
        "Lj$/util/Spliterator<",
        "TT;>;>;",
        "Lj$/util/stream/Stream$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field buffer:Lj$/util/stream/SpinedBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/SpinedBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 343
    .local p0, "this":Lj$/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Lj$/util/stream/Streams$1;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 350
    .local p0, "this":Lj$/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Lj$/util/stream/Streams$1;)V

    .line 351
    iput-object p1, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    .line 352
    const/4 v0, -0x2

    iput v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->count:I

    .line 353
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 359
    .local p0, "this":Lj$/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 360
    iput-object p1, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    .line 361
    iget v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->count:I

    goto :goto_0

    .line 363
    :cond_0
    iget v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 364
    iget-object v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer;

    if-nez v0, :cond_1

    .line 365
    new-instance v0, Lj$/util/stream/SpinedBuffer;

    invoke-direct {v0}, Lj$/util/stream/SpinedBuffer;-><init>()V

    iput-object v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer;

    .line 366
    iget-object v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer;

    iget-object v1, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lj$/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    .line 367
    iget v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->count:I

    .line 370
    :cond_1
    iget-object v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer;

    invoke-virtual {v0, p1}, Lj$/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Lj$/util/stream/Stream$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lj$/util/stream/Stream$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 378
    .local p0, "this":Lj$/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lj$/util/stream/Streams$StreamBuilderImpl;->accept(Ljava/lang/Object;)V

    .line 379
    return-object p0
.end method

.method public synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public build()Lj$/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 384
    .local p0, "this":Lj$/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    iget v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->count:I

    .line 385
    .local v0, "c":I
    if-ltz v0, :cond_1

    .line 387
    iget v1, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->count:I

    .line 390
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-static {p0, v2}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->buffer:Lj$/util/stream/SpinedBuffer;

    invoke-virtual {v1}, Lj$/util/stream/SpinedBuffer;->spliterator()Lj$/util/Spliterator;

    move-result-object v1

    invoke-static {v1, v2}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v1

    :goto_0
    return-object v1

    .line 393
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 416
    .local p0, "this":Lj$/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "action":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->count:I

    .line 422
    :cond_0
    return-void
.end method

.method public tryAdvance(Lj$/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 402
    .local p0, "this":Lj$/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "action":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 405
    iget-object v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 406
    const/4 v0, -0x1

    iput v0, p0, Lj$/util/stream/Streams$StreamBuilderImpl;->count:I

    .line 407
    const/4 v0, 0x1

    return v0

    .line 410
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

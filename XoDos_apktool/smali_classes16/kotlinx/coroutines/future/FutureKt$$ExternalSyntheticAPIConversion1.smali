.class public final synthetic Lkotlinx/coroutines/future/FutureKt$$ExternalSyntheticAPIConversion1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(Ljava/util/concurrent/CompletableFuture;Lj$/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-static {p1}, Lj$/util/function/BiFunction$Wrapper;->convert(Lj$/util/function/BiFunction;)Ljava/util/function/BiFunction;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lcom/termux/x11/InputConnectionWrapper$$ExternalSyntheticAPIConversion1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(Landroid/view/inputmethod/InputConnection;Landroid/graphics/RectF;Ljava/util/concurrent/Executor;Lj$/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-static {p3}, Lj$/util/function/Consumer$Wrapper;->convert(Lj$/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->requestTextBoundsInfo(Landroid/graphics/RectF;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

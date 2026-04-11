.class public final synthetic Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda5;->f$0:Lcom/termux/x11/MainActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda5;->f$0:Lcom/termux/x11/MainActivity;

    check-cast p1, Landroid/widget/Button;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0, p1, p2}, Lcom/termux/x11/MainActivity;->lambda$initMouseAuxButtons$20$com-termux-x11-MainActivity(Landroid/widget/Button;Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method

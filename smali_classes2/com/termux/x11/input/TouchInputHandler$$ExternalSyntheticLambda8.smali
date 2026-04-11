.class public final synthetic Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/input/TouchInputHandler;

.field public final synthetic f$1:Lcom/termux/x11/Prefs;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/input/TouchInputHandler;Lcom/termux/x11/Prefs;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda8;->f$0:Lcom/termux/x11/input/TouchInputHandler;

    iput-object p2, p0, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda8;->f$1:Lcom/termux/x11/Prefs;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda8;->f$0:Lcom/termux/x11/input/TouchInputHandler;

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda8;->f$1:Lcom/termux/x11/Prefs;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->lambda$extractUserActionFromPreferences$2$com-termux-x11-input-TouchInputHandler(Lcom/termux/x11/Prefs;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method

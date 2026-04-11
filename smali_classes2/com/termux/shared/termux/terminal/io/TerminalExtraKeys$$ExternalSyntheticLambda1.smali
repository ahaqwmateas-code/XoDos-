.class public final synthetic Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys$$ExternalSyntheticLambda1;->f$0:Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;

    iput-boolean p2, p0, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys$$ExternalSyntheticLambda1;->f$1:Z

    iput-boolean p3, p0, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys$$ExternalSyntheticLambda1;->f$0:Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;

    iget-boolean v1, p0, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys$$ExternalSyntheticLambda1;->f$1:Z

    iget-boolean v2, p0, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys$$ExternalSyntheticLambda1;->f$2:Z

    invoke-virtual {v0, v1, v2, p1}, Lcom/termux/shared/termux/terminal/io/TerminalExtraKeys;->lambda$onTerminalExtraKeyButtonClick$0$com-termux-shared-termux-terminal-io-TerminalExtraKeys(ZZI)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/IntConsumer;)Lj$/util/function/IntConsumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Lj$/util/function/IntConsumer;Lj$/util/function/IntConsumer;)Lj$/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

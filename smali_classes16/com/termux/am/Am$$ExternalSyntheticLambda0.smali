.class public final synthetic Lcom/termux/am/Am$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/termux/am/IntentCmd$CommandOptionHandler;


# instance fields
.field public final synthetic f$0:Lcom/termux/am/Am;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/am/Am;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/am/Am$$ExternalSyntheticLambda0;->f$0:Lcom/termux/am/Am;

    return-void
.end method


# virtual methods
.method public final handleOption(Ljava/lang/String;Lcom/termux/am/ShellCommand;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/am/Am$$ExternalSyntheticLambda0;->f$0:Lcom/termux/am/Am;

    invoke-virtual {v0, p1, p2}, Lcom/termux/am/Am;->lambda$makeIntent$0$com-termux-am-Am(Ljava/lang/String;Lcom/termux/am/ShellCommand;)Z

    move-result p1

    return p1
.end method

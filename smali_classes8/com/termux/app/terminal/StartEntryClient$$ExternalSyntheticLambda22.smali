.class public final synthetic Lcom/termux/app/terminal/StartEntryClient$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/terminal/StartEntryClient;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/terminal/StartEntryClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/StartEntryClient$$ExternalSyntheticLambda22;->f$0:Lcom/termux/app/terminal/StartEntryClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/app/terminal/StartEntryClient$$ExternalSyntheticLambda22;->f$0:Lcom/termux/app/terminal/StartEntryClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/StartEntryClient;->lambda$addSystemButtons$40$com-termux-app-terminal-StartEntryClient()V

    return-void
.end method

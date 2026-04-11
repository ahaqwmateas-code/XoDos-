.class public final synthetic Lcom/termux/app/terminal/StartEntryClient$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/terminal/StartEntryClient;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/terminal/StartEntryClient;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/StartEntryClient$$ExternalSyntheticLambda10;->f$0:Lcom/termux/app/terminal/StartEntryClient;

    iput-object p2, p0, Lcom/termux/app/terminal/StartEntryClient$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/app/terminal/StartEntryClient$$ExternalSyntheticLambda10;->f$0:Lcom/termux/app/terminal/StartEntryClient;

    iget-object v1, p0, Lcom/termux/app/terminal/StartEntryClient$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/StartEntryClient;->lambda$cleanKaliEnvironment$67$com-termux-app-terminal-StartEntryClient(Ljava/lang/Exception;)V

    return-void
.end method

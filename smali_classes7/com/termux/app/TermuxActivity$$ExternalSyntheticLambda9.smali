.class public final synthetic Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/terminal/TerminalSession;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/terminal/TerminalSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda9;->f$0:Lcom/termux/terminal/TerminalSession;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda9;->f$0:Lcom/termux/terminal/TerminalSession;

    invoke-static {v0, p1, p2}, Lcom/termux/app/TermuxActivity;->lambda$showKillSessionDialog$16(Lcom/termux/terminal/TerminalSession;Landroid/content/DialogInterface;I)V

    return-void
.end method

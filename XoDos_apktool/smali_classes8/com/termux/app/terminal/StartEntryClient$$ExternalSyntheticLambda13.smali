.class public final synthetic Lcom/termux/app/terminal/StartEntryClient$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/terminal/StartEntryClient;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/terminal/StartEntryClient;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/StartEntryClient$$ExternalSyntheticLambda13;->f$0:Lcom/termux/app/terminal/StartEntryClient;

    iput-object p2, p0, Lcom/termux/app/terminal/StartEntryClient$$ExternalSyntheticLambda13;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/app/terminal/StartEntryClient$$ExternalSyntheticLambda13;->f$0:Lcom/termux/app/terminal/StartEntryClient;

    iget-object v1, p0, Lcom/termux/app/terminal/StartEntryClient$$ExternalSyntheticLambda13;->f$1:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/termux/app/terminal/StartEntryClient;->lambda$showTutorialStep$6$com-termux-app-terminal-StartEntryClient([Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

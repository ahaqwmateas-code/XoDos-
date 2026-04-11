.class public final synthetic Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/terminal/MenuEntryClient;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/terminal/MenuEntryClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda5;->f$0:Lcom/termux/app/terminal/MenuEntryClient;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda5;->f$0:Lcom/termux/app/terminal/MenuEntryClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/MenuEntryClient;->lambda$setToolBoxView$2$com-termux-app-terminal-MenuEntryClient()V

    return-void
.end method

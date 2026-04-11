.class public final synthetic Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/terminal/MenuEntryClient;

.field public final synthetic f$1:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/terminal/MenuEntryClient;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda8;->f$0:Lcom/termux/app/terminal/MenuEntryClient;

    iput-object p2, p0, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda8;->f$1:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda8;->f$0:Lcom/termux/app/terminal/MenuEntryClient;

    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda8;->f$1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, p1}, Lcom/termux/app/terminal/MenuEntryClient;->lambda$setToolboxConfig$11$com-termux-app-terminal-MenuEntryClient(Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

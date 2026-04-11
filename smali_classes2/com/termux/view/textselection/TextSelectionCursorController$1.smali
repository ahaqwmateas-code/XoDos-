.class Lcom/termux/view/textselection/TextSelectionCursorController$1;
.super Ljava/lang/Object;
.source "TextSelectionCursorController.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/textselection/TextSelectionCursorController;->setActionModeCallBacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/view/textselection/TextSelectionCursorController;


# direct methods
.method constructor <init>(Lcom/termux/view/textselection/TextSelectionCursorController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/view/textselection/TextSelectionCursorController;

    .line 111
    iput-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 130
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 132
    return v1

    .line 135
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v2}, Lcom/termux/view/textselection/TextSelectionCursorController;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$102(Lcom/termux/view/textselection/TextSelectionCursorController;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 153
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 143
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->onPasteTextFromClipboard()V

    .line 144
    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "selectedText":Ljava/lang/String;
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v2

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v2, v0}, Lcom/termux/terminal/TerminalSession;->onCopyTextToClipboard(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 140
    nop

    .line 157
    .end local v0    # "selectedText":Ljava/lang/String;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 114
    const/4 v0, 0x5

    .line 116
    .local v0, "show":I
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 117
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    sget v2, Lcom/termux/view/R$string;->copy_text:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {p2, v3, v4, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 118
    const/4 v2, 0x2

    sget v5, Lcom/termux/view/R$string;->paste_text:I

    invoke-interface {p2, v3, v2, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 119
    const/4 v2, 0x3

    sget v5, Lcom/termux/view/R$string;->text_selection_more:I

    invoke-interface {p2, v3, v2, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 120
    return v4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 162
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 125
    const/4 v0, 0x0

    return v0
.end method

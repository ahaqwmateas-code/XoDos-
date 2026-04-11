.class public final Lcom/termux/x11/databinding/DisplayViewTerminalToolbarExtraKeysBinding;
.super Ljava/lang/Object;
.source "DisplayViewTerminalToolbarExtraKeysBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final displayTerminalToolbarExtraKeys:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

.field private final rootView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;


# direct methods
.method private constructor <init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)V
    .locals 0
    .param p1, "rootView"    # Lcom/termux/x11/extrakeys/TermuxExtraKeysView;
    .param p2, "displayTerminalToolbarExtraKeys"    # Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarExtraKeysBinding;->rootView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    .line 25
    iput-object p2, p0, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarExtraKeysBinding;->displayTerminalToolbarExtraKeys:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    .line 26
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/DisplayViewTerminalToolbarExtraKeysBinding;
    .locals 3
    .param p0, "rootView"    # Landroid/view/View;

    .line 52
    if-eqz p0, :cond_0

    .line 56
    move-object v0, p0

    check-cast v0, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    .line 58
    .local v0, "displayTerminalToolbarExtraKeys":Lcom/termux/x11/extrakeys/TermuxExtraKeysView;
    new-instance v1, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarExtraKeysBinding;

    move-object v2, p0

    check-cast v2, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    invoke-direct {v1, v2, v0}, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarExtraKeysBinding;-><init>(Lcom/termux/x11/extrakeys/TermuxExtraKeysView;Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)V

    return-object v1

    .line 53
    .end local v0    # "displayTerminalToolbarExtraKeys":Lcom/termux/x11/extrakeys/TermuxExtraKeysView;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rootView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/DisplayViewTerminalToolbarExtraKeysBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarExtraKeysBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/DisplayViewTerminalToolbarExtraKeysBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/DisplayViewTerminalToolbarExtraKeysBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 43
    sget v0, Lcom/termux/x11/R$layout;->display_view_terminal_toolbar_extra_keys:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarExtraKeysBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/DisplayViewTerminalToolbarExtraKeysBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarExtraKeysBinding;->getRoot()Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/termux/x11/extrakeys/TermuxExtraKeysView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarExtraKeysBinding;->rootView:Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    return-object v0
.end method

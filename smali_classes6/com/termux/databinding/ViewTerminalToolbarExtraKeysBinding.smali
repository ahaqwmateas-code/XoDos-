.class public final Lcom/termux/databinding/ViewTerminalToolbarExtraKeysBinding;
.super Ljava/lang/Object;
.source "ViewTerminalToolbarExtraKeysBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

.field public final terminalToolbarExtraKeys:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;


# direct methods
.method private constructor <init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V
    .locals 0
    .param p1, "rootView"    # Lcom/termux/shared/termux/extrakeys/ExtraKeysView;
    .param p2, "terminalToolbarExtraKeys"    # Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/termux/databinding/ViewTerminalToolbarExtraKeysBinding;->rootView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    .line 25
    iput-object p2, p0, Lcom/termux/databinding/ViewTerminalToolbarExtraKeysBinding;->terminalToolbarExtraKeys:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    .line 26
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/databinding/ViewTerminalToolbarExtraKeysBinding;
    .locals 3
    .param p0, "rootView"    # Landroid/view/View;

    .line 51
    if-eqz p0, :cond_0

    .line 55
    move-object v0, p0

    check-cast v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    .line 57
    .local v0, "terminalToolbarExtraKeys":Lcom/termux/shared/termux/extrakeys/ExtraKeysView;
    new-instance v1, Lcom/termux/databinding/ViewTerminalToolbarExtraKeysBinding;

    move-object v2, p0

    check-cast v2, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    invoke-direct {v1, v2, v0}, Lcom/termux/databinding/ViewTerminalToolbarExtraKeysBinding;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V

    return-object v1

    .line 52
    .end local v0    # "terminalToolbarExtraKeys":Lcom/termux/shared/termux/extrakeys/ExtraKeysView;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rootView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/databinding/ViewTerminalToolbarExtraKeysBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/databinding/ViewTerminalToolbarExtraKeysBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/databinding/ViewTerminalToolbarExtraKeysBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/databinding/ViewTerminalToolbarExtraKeysBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 42
    const v0, 0x7f0c00d4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    :cond_0
    invoke-static {v0}, Lcom/termux/databinding/ViewTerminalToolbarExtraKeysBinding;->bind(Landroid/view/View;)Lcom/termux/databinding/ViewTerminalToolbarExtraKeysBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/termux/databinding/ViewTerminalToolbarExtraKeysBinding;->getRoot()Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/termux/shared/termux/extrakeys/ExtraKeysView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/termux/databinding/ViewTerminalToolbarExtraKeysBinding;->rootView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    return-object v0
.end method

.class public final Lcom/termux/x11/databinding/DisplayViewTerminalToolbarTextInputBinding;
.super Ljava/lang/Object;
.source "DisplayViewTerminalToolbarTextInputBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final displayTerminalToolbarBackButton:Landroid/widget/Button;

.field public final displayTerminalToolbarTextInput:Lcom/termux/x11/EditText;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/termux/x11/EditText;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "displayTerminalToolbarBackButton"    # Landroid/widget/Button;
    .param p3, "displayTerminalToolbarTextInput"    # Lcom/termux/x11/EditText;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarTextInputBinding;->rootView:Landroid/widget/LinearLayout;

    .line 33
    iput-object p2, p0, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarTextInputBinding;->displayTerminalToolbarBackButton:Landroid/widget/Button;

    .line 34
    iput-object p3, p0, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarTextInputBinding;->displayTerminalToolbarTextInput:Lcom/termux/x11/EditText;

    .line 35
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/DisplayViewTerminalToolbarTextInputBinding;
    .locals 5
    .param p0, "rootView"    # Landroid/view/View;

    .line 65
    sget v0, Lcom/termux/x11/R$id;->display_terminal_toolbar_back_button:I

    .line 66
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 67
    .local v1, "displayTerminalToolbarBackButton":Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 71
    sget v0, Lcom/termux/x11/R$id;->display_terminal_toolbar_text_input:I

    .line 72
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/termux/x11/EditText;

    .line 73
    .local v2, "displayTerminalToolbarTextInput":Lcom/termux/x11/EditText;
    if-eqz v2, :cond_0

    .line 77
    new-instance v3, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarTextInputBinding;

    move-object v4, p0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct {v3, v4, v1, v2}, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarTextInputBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/termux/x11/EditText;)V

    return-object v3

    .line 74
    :cond_0
    goto :goto_0

    .line 68
    .end local v2    # "displayTerminalToolbarTextInput":Lcom/termux/x11/EditText;
    :cond_1
    nop

    .line 80
    .end local v1    # "displayTerminalToolbarBackButton":Landroid/widget/Button;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/DisplayViewTerminalToolbarTextInputBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarTextInputBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/DisplayViewTerminalToolbarTextInputBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/DisplayViewTerminalToolbarTextInputBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 52
    sget v0, Lcom/termux/x11/R$layout;->display_view_terminal_toolbar_text_input:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarTextInputBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/DisplayViewTerminalToolbarTextInputBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarTextInputBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/termux/x11/databinding/DisplayViewTerminalToolbarTextInputBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

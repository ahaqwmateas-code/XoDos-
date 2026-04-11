.class public final Lcom/termux/x11/databinding/CheatCodeItmBinding;
.super Ljava/lang/Object;
.source "CheatCodeItmBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final EDCCT:Landroid/widget/EditText;

.field public final IBTNSET:Landroid/widget/ImageButton;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "EDCCT"    # Landroid/widget/EditText;
    .param p3, "IBTNSET"    # Landroid/widget/ImageButton;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/termux/x11/databinding/CheatCodeItmBinding;->rootView:Landroid/widget/LinearLayout;

    .line 32
    iput-object p2, p0, Lcom/termux/x11/databinding/CheatCodeItmBinding;->EDCCT:Landroid/widget/EditText;

    .line 33
    iput-object p3, p0, Lcom/termux/x11/databinding/CheatCodeItmBinding;->IBTNSET:Landroid/widget/ImageButton;

    .line 34
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/CheatCodeItmBinding;
    .locals 5
    .param p0, "rootView"    # Landroid/view/View;

    .line 63
    sget v0, Lcom/termux/x11/R$id;->EDCCT:I

    .line 64
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 65
    .local v1, "EDCCT":Landroid/widget/EditText;
    if-eqz v1, :cond_1

    .line 69
    sget v0, Lcom/termux/x11/R$id;->IBTNSET:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 71
    .local v2, "IBTNSET":Landroid/widget/ImageButton;
    if-eqz v2, :cond_0

    .line 75
    new-instance v3, Lcom/termux/x11/databinding/CheatCodeItmBinding;

    move-object v4, p0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct {v3, v4, v1, v2}, Lcom/termux/x11/databinding/CheatCodeItmBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/ImageButton;)V

    return-object v3

    .line 72
    :cond_0
    goto :goto_0

    .line 66
    .end local v2    # "IBTNSET":Landroid/widget/ImageButton;
    :cond_1
    nop

    .line 77
    .end local v1    # "EDCCT":Landroid/widget/EditText;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/CheatCodeItmBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/CheatCodeItmBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/CheatCodeItmBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/CheatCodeItmBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 50
    sget v0, Lcom/termux/x11/R$layout;->cheat_code_itm:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/CheatCodeItmBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/CheatCodeItmBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/termux/x11/databinding/CheatCodeItmBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/termux/x11/databinding/CheatCodeItmBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

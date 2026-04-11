.class public final Lcom/termux/databinding/ShortcutGridLayoutBinding;
.super Ljava/lang/Object;
.source "ShortcutGridLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/ScrollView;

.field public final scrollContainer:Landroid/widget/ScrollView;

.field public final shortcutGrid:Landroid/widget/GridLayout;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/ScrollView;Landroid/widget/GridLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "scrollContainer"    # Landroid/widget/ScrollView;
    .param p3, "shortcutGrid"    # Landroid/widget/GridLayout;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/termux/databinding/ShortcutGridLayoutBinding;->rootView:Landroid/widget/ScrollView;

    .line 31
    iput-object p2, p0, Lcom/termux/databinding/ShortcutGridLayoutBinding;->scrollContainer:Landroid/widget/ScrollView;

    .line 32
    iput-object p3, p0, Lcom/termux/databinding/ShortcutGridLayoutBinding;->shortcutGrid:Landroid/widget/GridLayout;

    .line 33
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/databinding/ShortcutGridLayoutBinding;
    .locals 5
    .param p0, "rootView"    # Landroid/view/View;

    .line 62
    move-object v0, p0

    check-cast v0, Landroid/widget/ScrollView;

    .line 64
    .local v0, "scrollContainer":Landroid/widget/ScrollView;
    const v1, 0x7f0902b0

    .line 65
    .local v1, "id":I
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridLayout;

    .line 66
    .local v2, "shortcutGrid":Landroid/widget/GridLayout;
    if-eqz v2, :cond_0

    .line 70
    new-instance v3, Lcom/termux/databinding/ShortcutGridLayoutBinding;

    move-object v4, p0

    check-cast v4, Landroid/widget/ScrollView;

    invoke-direct {v3, v4, v0, v2}, Lcom/termux/databinding/ShortcutGridLayoutBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/ScrollView;Landroid/widget/GridLayout;)V

    return-object v3

    .line 67
    :cond_0
    nop

    .line 72
    .end local v0    # "scrollContainer":Landroid/widget/ScrollView;
    .end local v2    # "shortcutGrid":Landroid/widget/GridLayout;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/databinding/ShortcutGridLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/databinding/ShortcutGridLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/databinding/ShortcutGridLayoutBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/databinding/ShortcutGridLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 49
    const v0, 0x7f0c00c9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_0
    invoke-static {v0}, Lcom/termux/databinding/ShortcutGridLayoutBinding;->bind(Landroid/view/View;)Lcom/termux/databinding/ShortcutGridLayoutBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/termux/databinding/ShortcutGridLayoutBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/termux/databinding/ShortcutGridLayoutBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method

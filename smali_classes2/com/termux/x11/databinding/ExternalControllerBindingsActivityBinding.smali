.class public final Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;
.super Ljava/lang/Object;
.source "ExternalControllerBindingsActivityBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final RecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final TVEmptyText:Landroid/widget/TextView;

.field public final Toolbar:Landroidx/appcompat/widget/Toolbar;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "RecyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "TVEmptyText"    # Landroid/widget/TextView;
    .param p4, "Toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;->rootView:Landroid/widget/LinearLayout;

    .line 36
    iput-object p2, p0, Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;->RecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    iput-object p3, p0, Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;->TVEmptyText:Landroid/widget/TextView;

    .line 38
    iput-object p4, p0, Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;->Toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 39
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 69
    sget v0, Lcom/termux/x11/R$id;->RecyclerView:I

    .line 70
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .local v1, "RecyclerView":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v1, :cond_2

    .line 75
    sget v0, Lcom/termux/x11/R$id;->TVEmptyText:I

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 77
    .local v2, "TVEmptyText":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 81
    sget v0, Lcom/termux/x11/R$id;->Toolbar:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    .line 83
    .local v3, "Toolbar":Landroidx/appcompat/widget/Toolbar;
    if-eqz v3, :cond_0

    .line 87
    new-instance v4, Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;)V

    return-object v4

    .line 84
    :cond_0
    goto :goto_0

    .line 78
    .end local v3    # "Toolbar":Landroidx/appcompat/widget/Toolbar;
    :cond_1
    goto :goto_0

    .line 72
    .end local v2    # "TVEmptyText":Landroid/widget/TextView;
    :cond_2
    nop

    .line 90
    .end local v1    # "RecyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 56
    sget v0, Lcom/termux/x11/R$layout;->external_controller_bindings_activity:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/termux/x11/databinding/ExternalControllerBindingsActivityBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

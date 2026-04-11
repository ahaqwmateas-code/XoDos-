.class public final Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;
.super Ljava/lang/Object;
.source "PartialPrimaryToolbarBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;

.field public final toolbarContainer:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/Toolbar;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p3, "toolbarContainer"    # Landroid/widget/LinearLayout;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;->rootView:Landroid/widget/LinearLayout;

    .line 31
    iput-object p2, p0, Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 32
    iput-object p3, p0, Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;->toolbarContainer:Landroid/widget/LinearLayout;

    .line 33
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;
    .locals 5
    .param p0, "rootView"    # Landroid/view/View;

    .line 62
    sget v0, Lcom/termux/shared/R$id;->toolbar:I

    .line 63
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 64
    .local v1, "toolbar":Landroidx/appcompat/widget/Toolbar;
    if-eqz v1, :cond_0

    .line 68
    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    .line 70
    .local v2, "toolbarContainer":Landroid/widget/LinearLayout;
    new-instance v3, Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;

    move-object v4, p0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct {v3, v4, v1, v2}, Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/Toolbar;Landroid/widget/LinearLayout;)V

    return-object v3

    .line 65
    .end local v2    # "toolbarContainer":Landroid/widget/LinearLayout;
    :cond_0
    nop

    .line 72
    .end local v1    # "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 49
    sget v0, Lcom/termux/shared/R$layout;->partial_primary_toolbar:I

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
    invoke-static {v0}, Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;->bind(Landroid/view/View;)Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.class public final Lcom/termux/databinding/ActivitySettingsBinding;
.super Ljava/lang/Object;
.source "ActivitySettingsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final partialPrimaryToolbar:Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final settings:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "partialPrimaryToolbar"    # Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;
    .param p3, "settings"    # Landroid/widget/FrameLayout;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/termux/databinding/ActivitySettingsBinding;->rootView:Landroid/widget/LinearLayout;

    .line 32
    iput-object p2, p0, Lcom/termux/databinding/ActivitySettingsBinding;->partialPrimaryToolbar:Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;

    .line 33
    iput-object p3, p0, Lcom/termux/databinding/ActivitySettingsBinding;->settings:Landroid/widget/FrameLayout;

    .line 34
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/databinding/ActivitySettingsBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 63
    const v0, 0x7f090271

    .line 64
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "partialPrimaryToolbar":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 68
    invoke-static {v1}, Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;->bind(Landroid/view/View;)Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;

    move-result-object v2

    .line 70
    .local v2, "binding_partialPrimaryToolbar":Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;
    const v0, 0x7f0902ab

    .line 71
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 72
    .local v3, "settings":Landroid/widget/FrameLayout;
    if-eqz v3, :cond_0

    .line 76
    new-instance v4, Lcom/termux/databinding/ActivitySettingsBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5, v2, v3}, Lcom/termux/databinding/ActivitySettingsBinding;-><init>(Landroid/widget/LinearLayout;Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;Landroid/widget/FrameLayout;)V

    return-object v4

    .line 73
    :cond_0
    goto :goto_0

    .line 66
    .end local v2    # "binding_partialPrimaryToolbar":Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;
    .end local v3    # "settings":Landroid/widget/FrameLayout;
    :cond_1
    nop

    .line 79
    .end local v1    # "partialPrimaryToolbar":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/databinding/ActivitySettingsBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/databinding/ActivitySettingsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/databinding/ActivitySettingsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/databinding/ActivitySettingsBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 50
    const v0, 0x7f0c001f

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
    invoke-static {v0}, Lcom/termux/databinding/ActivitySettingsBinding;->bind(Landroid/view/View;)Lcom/termux/databinding/ActivitySettingsBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/termux/databinding/ActivitySettingsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/termux/databinding/ActivitySettingsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

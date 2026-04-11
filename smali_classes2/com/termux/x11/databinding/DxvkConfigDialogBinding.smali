.class public final Lcom/termux/x11/databinding/DxvkConfigDialogBinding;
.super Ljava/lang/Object;
.source "DxvkConfigDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final SFramerate:Landroid/widget/Spinner;

.field public final SMaxDeviceMemory:Landroid/widget/Spinner;

.field public final SVersion:Landroid/widget/Spinner;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "SFramerate"    # Landroid/widget/Spinner;
    .param p3, "SMaxDeviceMemory"    # Landroid/widget/Spinner;
    .param p4, "SVersion"    # Landroid/widget/Spinner;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/termux/x11/databinding/DxvkConfigDialogBinding;->rootView:Landroid/widget/ScrollView;

    .line 34
    iput-object p2, p0, Lcom/termux/x11/databinding/DxvkConfigDialogBinding;->SFramerate:Landroid/widget/Spinner;

    .line 35
    iput-object p3, p0, Lcom/termux/x11/databinding/DxvkConfigDialogBinding;->SMaxDeviceMemory:Landroid/widget/Spinner;

    .line 36
    iput-object p4, p0, Lcom/termux/x11/databinding/DxvkConfigDialogBinding;->SVersion:Landroid/widget/Spinner;

    .line 37
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/DxvkConfigDialogBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 66
    sget v0, Lcom/termux/x11/R$id;->SFramerate:I

    .line 67
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 68
    .local v1, "SFramerate":Landroid/widget/Spinner;
    if-eqz v1, :cond_2

    .line 72
    sget v0, Lcom/termux/x11/R$id;->SMaxDeviceMemory:I

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 74
    .local v2, "SMaxDeviceMemory":Landroid/widget/Spinner;
    if-eqz v2, :cond_1

    .line 78
    sget v0, Lcom/termux/x11/R$id;->SVersion:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 80
    .local v3, "SVersion":Landroid/widget/Spinner;
    if-eqz v3, :cond_0

    .line 84
    new-instance v4, Lcom/termux/x11/databinding/DxvkConfigDialogBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/ScrollView;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/termux/x11/databinding/DxvkConfigDialogBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    return-object v4

    .line 81
    :cond_0
    goto :goto_0

    .line 75
    .end local v3    # "SVersion":Landroid/widget/Spinner;
    :cond_1
    goto :goto_0

    .line 69
    .end local v2    # "SMaxDeviceMemory":Landroid/widget/Spinner;
    :cond_2
    nop

    .line 87
    .end local v1    # "SFramerate":Landroid/widget/Spinner;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/DxvkConfigDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/DxvkConfigDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/DxvkConfigDialogBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/DxvkConfigDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 53
    sget v0, Lcom/termux/x11/R$layout;->dxvk_config_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/DxvkConfigDialogBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/DxvkConfigDialogBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/termux/x11/databinding/DxvkConfigDialogBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/termux/x11/databinding/DxvkConfigDialogBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method

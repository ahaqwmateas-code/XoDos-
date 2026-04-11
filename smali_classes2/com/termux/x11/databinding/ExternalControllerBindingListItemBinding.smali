.class public final Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;
.super Ljava/lang/Object;
.source "ExternalControllerBindingListItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final BTRemove:Landroid/widget/ImageButton;

.field public final SBinding:Landroid/widget/Spinner;

.field public final SBindingType:Landroid/widget/Spinner;

.field public final TVTitle:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "BTRemove"    # Landroid/widget/ImageButton;
    .param p3, "SBinding"    # Landroid/widget/Spinner;
    .param p4, "SBindingType"    # Landroid/widget/Spinner;
    .param p5, "TVTitle"    # Landroid/widget/TextView;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;->rootView:Landroid/widget/LinearLayout;

    .line 40
    iput-object p2, p0, Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;->BTRemove:Landroid/widget/ImageButton;

    .line 41
    iput-object p3, p0, Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;->SBinding:Landroid/widget/Spinner;

    .line 42
    iput-object p4, p0, Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;->SBindingType:Landroid/widget/Spinner;

    .line 43
    iput-object p5, p0, Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;->TVTitle:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 73
    sget v0, Lcom/termux/x11/R$id;->BTRemove:I

    .line 74
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 75
    .local v1, "BTRemove":Landroid/widget/ImageButton;
    if-eqz v1, :cond_3

    .line 79
    sget v0, Lcom/termux/x11/R$id;->SBinding:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Spinner;

    .line 81
    .local v8, "SBinding":Landroid/widget/Spinner;
    if-eqz v8, :cond_2

    .line 85
    sget v0, Lcom/termux/x11/R$id;->SBindingType:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Spinner;

    .line 87
    .local v9, "SBindingType":Landroid/widget/Spinner;
    if-eqz v9, :cond_1

    .line 91
    sget v0, Lcom/termux/x11/R$id;->TVTitle:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 93
    .local v10, "TVTitle":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 97
    new-instance v11, Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/TextView;)V

    return-object v11

    .line 94
    :cond_0
    goto :goto_0

    .line 88
    .end local v10    # "TVTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 82
    .end local v9    # "SBindingType":Landroid/widget/Spinner;
    :cond_2
    goto :goto_0

    .line 76
    .end local v8    # "SBinding":Landroid/widget/Spinner;
    :cond_3
    nop

    .line 100
    .end local v1    # "BTRemove":Landroid/widget/ImageButton;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 60
    sget v0, Lcom/termux/x11/R$layout;->external_controller_binding_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/termux/x11/databinding/ExternalControllerBindingListItemBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

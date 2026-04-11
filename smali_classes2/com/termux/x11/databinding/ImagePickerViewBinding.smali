.class public final Lcom/termux/x11/databinding/ImagePickerViewBinding;
.super Ljava/lang/Object;
.source "ImagePickerViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final BTBrowse:Landroid/widget/Button;

.field public final BTRemove:Landroid/widget/ImageView;

.field public final ImageView:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "BTBrowse"    # Landroid/widget/Button;
    .param p3, "BTRemove"    # Landroid/widget/ImageView;
    .param p4, "ImageView"    # Landroid/widget/ImageView;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/termux/x11/databinding/ImagePickerViewBinding;->rootView:Landroid/widget/LinearLayout;

    .line 35
    iput-object p2, p0, Lcom/termux/x11/databinding/ImagePickerViewBinding;->BTBrowse:Landroid/widget/Button;

    .line 36
    iput-object p3, p0, Lcom/termux/x11/databinding/ImagePickerViewBinding;->BTRemove:Landroid/widget/ImageView;

    .line 37
    iput-object p4, p0, Lcom/termux/x11/databinding/ImagePickerViewBinding;->ImageView:Landroid/widget/ImageView;

    .line 38
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/ImagePickerViewBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 67
    sget v0, Lcom/termux/x11/R$id;->BTBrowse:I

    .line 68
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 69
    .local v1, "BTBrowse":Landroid/widget/Button;
    if-eqz v1, :cond_2

    .line 73
    sget v0, Lcom/termux/x11/R$id;->BTRemove:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 75
    .local v2, "BTRemove":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 79
    sget v0, Lcom/termux/x11/R$id;->ImageView:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 81
    .local v3, "ImageView":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    .line 85
    new-instance v4, Lcom/termux/x11/databinding/ImagePickerViewBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/termux/x11/databinding/ImagePickerViewBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v4

    .line 82
    :cond_0
    goto :goto_0

    .line 76
    .end local v3    # "ImageView":Landroid/widget/ImageView;
    :cond_1
    goto :goto_0

    .line 70
    .end local v2    # "BTRemove":Landroid/widget/ImageView;
    :cond_2
    nop

    .line 87
    .end local v1    # "BTBrowse":Landroid/widget/Button;
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/ImagePickerViewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/ImagePickerViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ImagePickerViewBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ImagePickerViewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 54
    sget v0, Lcom/termux/x11/R$layout;->image_picker_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/ImagePickerViewBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/ImagePickerViewBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/termux/x11/databinding/ImagePickerViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/termux/x11/databinding/ImagePickerViewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

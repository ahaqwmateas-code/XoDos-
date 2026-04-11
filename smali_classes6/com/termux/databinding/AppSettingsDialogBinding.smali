.class public final Lcom/termux/databinding/AppSettingsDialogBinding;
.super Ljava/lang/Object;
.source "AppSettingsDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final coresSpinner:Landroid/widget/Spinner;

.field public final driverSpinner:Landroid/widget/Spinner;

.field public final dxvkSpinner:Landroid/widget/Spinner;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "coresSpinner"    # Landroid/widget/Spinner;
    .param p3, "driverSpinner"    # Landroid/widget/Spinner;
    .param p4, "dxvkSpinner"    # Landroid/widget/Spinner;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/termux/databinding/AppSettingsDialogBinding;->rootView:Landroid/widget/LinearLayout;

    .line 34
    iput-object p2, p0, Lcom/termux/databinding/AppSettingsDialogBinding;->coresSpinner:Landroid/widget/Spinner;

    .line 35
    iput-object p3, p0, Lcom/termux/databinding/AppSettingsDialogBinding;->driverSpinner:Landroid/widget/Spinner;

    .line 36
    iput-object p4, p0, Lcom/termux/databinding/AppSettingsDialogBinding;->dxvkSpinner:Landroid/widget/Spinner;

    .line 37
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/databinding/AppSettingsDialogBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 66
    const v0, 0x7f090154

    .line 67
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 68
    .local v1, "coresSpinner":Landroid/widget/Spinner;
    if-eqz v1, :cond_2

    .line 72
    const v0, 0x7f090182

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 74
    .local v2, "driverSpinner":Landroid/widget/Spinner;
    if-eqz v2, :cond_1

    .line 78
    const v0, 0x7f090184

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 80
    .local v3, "dxvkSpinner":Landroid/widget/Spinner;
    if-eqz v3, :cond_0

    .line 84
    new-instance v4, Lcom/termux/databinding/AppSettingsDialogBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/termux/databinding/AppSettingsDialogBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    return-object v4

    .line 81
    :cond_0
    goto :goto_0

    .line 75
    .end local v3    # "dxvkSpinner":Landroid/widget/Spinner;
    :cond_1
    goto :goto_0

    .line 69
    .end local v2    # "driverSpinner":Landroid/widget/Spinner;
    :cond_2
    nop

    .line 87
    .end local v1    # "coresSpinner":Landroid/widget/Spinner;
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/databinding/AppSettingsDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/databinding/AppSettingsDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/databinding/AppSettingsDialogBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/databinding/AppSettingsDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 53
    const v0, 0x7f0c0026

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
    invoke-static {v0}, Lcom/termux/databinding/AppSettingsDialogBinding;->bind(Landroid/view/View;)Lcom/termux/databinding/AppSettingsDialogBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/termux/databinding/AppSettingsDialogBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/termux/databinding/AppSettingsDialogBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

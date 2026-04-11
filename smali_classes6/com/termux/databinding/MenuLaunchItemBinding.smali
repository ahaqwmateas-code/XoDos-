.class public final Lcom/termux/databinding/MenuLaunchItemBinding;
.super Ljava/lang/Object;
.source "MenuLaunchItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final BConfigItem:Landroid/widget/ImageButton;

.field public final BTOK:Landroid/widget/Button;

.field public final ETCommand:Landroid/widget/EditText;

.field public final ETTitle:Landroid/widget/EditText;

.field public final LConfigStartItems:Landroid/widget/LinearLayout;

.field public final idBindingLaunchItem:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "BConfigItem"    # Landroid/widget/ImageButton;
    .param p3, "BTOK"    # Landroid/widget/Button;
    .param p4, "ETCommand"    # Landroid/widget/EditText;
    .param p5, "ETTitle"    # Landroid/widget/EditText;
    .param p6, "LConfigStartItems"    # Landroid/widget/LinearLayout;
    .param p7, "idBindingLaunchItem"    # Landroid/widget/LinearLayout;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/termux/databinding/MenuLaunchItemBinding;->rootView:Landroid/widget/LinearLayout;

    .line 46
    iput-object p2, p0, Lcom/termux/databinding/MenuLaunchItemBinding;->BConfigItem:Landroid/widget/ImageButton;

    .line 47
    iput-object p3, p0, Lcom/termux/databinding/MenuLaunchItemBinding;->BTOK:Landroid/widget/Button;

    .line 48
    iput-object p4, p0, Lcom/termux/databinding/MenuLaunchItemBinding;->ETCommand:Landroid/widget/EditText;

    .line 49
    iput-object p5, p0, Lcom/termux/databinding/MenuLaunchItemBinding;->ETTitle:Landroid/widget/EditText;

    .line 50
    iput-object p6, p0, Lcom/termux/databinding/MenuLaunchItemBinding;->LConfigStartItems:Landroid/widget/LinearLayout;

    .line 51
    iput-object p7, p0, Lcom/termux/databinding/MenuLaunchItemBinding;->idBindingLaunchItem:Landroid/widget/LinearLayout;

    .line 52
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/databinding/MenuLaunchItemBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 81
    move-object/from16 v0, p0

    const v1, 0x7f090002

    .line 82
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 83
    .local v2, "BConfigItem":Landroid/widget/ImageButton;
    if-eqz v2, :cond_4

    .line 87
    const v1, 0x7f090024

    .line 88
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/Button;

    .line 89
    .local v11, "BTOK":Landroid/widget/Button;
    if-eqz v11, :cond_3

    .line 93
    const v1, 0x7f090040

    .line 94
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/EditText;

    .line 95
    .local v12, "ETCommand":Landroid/widget/EditText;
    if-eqz v12, :cond_2

    .line 99
    const v1, 0x7f090046

    .line 100
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/EditText;

    .line 101
    .local v13, "ETTitle":Landroid/widget/EditText;
    if-eqz v13, :cond_1

    .line 105
    const v1, 0x7f090055

    .line 106
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/LinearLayout;

    .line 107
    .local v14, "LConfigStartItems":Landroid/widget/LinearLayout;
    if-eqz v14, :cond_0

    .line 111
    move-object v15, v0

    check-cast v15, Landroid/widget/LinearLayout;

    .line 113
    .local v15, "idBindingLaunchItem":Landroid/widget/LinearLayout;
    new-instance v16, Lcom/termux/databinding/MenuLaunchItemBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lcom/termux/databinding/MenuLaunchItemBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object v16

    .line 108
    .end local v15    # "idBindingLaunchItem":Landroid/widget/LinearLayout;
    :cond_0
    goto :goto_0

    .line 102
    .end local v14    # "LConfigStartItems":Landroid/widget/LinearLayout;
    :cond_1
    goto :goto_0

    .line 96
    .end local v13    # "ETTitle":Landroid/widget/EditText;
    :cond_2
    goto :goto_0

    .line 90
    .end local v12    # "ETCommand":Landroid/widget/EditText;
    :cond_3
    goto :goto_0

    .line 84
    .end local v11    # "BTOK":Landroid/widget/Button;
    :cond_4
    nop

    .line 116
    .end local v2    # "BConfigItem":Landroid/widget/ImageButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/databinding/MenuLaunchItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/databinding/MenuLaunchItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/databinding/MenuLaunchItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/databinding/MenuLaunchItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 68
    const v0, 0x7f0c007f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {v0}, Lcom/termux/databinding/MenuLaunchItemBinding;->bind(Landroid/view/View;)Lcom/termux/databinding/MenuLaunchItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/termux/databinding/MenuLaunchItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/termux/databinding/MenuLaunchItemBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

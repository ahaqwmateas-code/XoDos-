.class public final Lcom/termux/x11/databinding/BindingLaunchItemBinding;
.super Ljava/lang/Object;
.source "BindingLaunchItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final BAddItem:Landroid/widget/ImageButton;

.field public final BConfigItem:Landroid/widget/ImageButton;

.field public final BLaunchItem:Landroid/widget/Button;

.field public final BRemoveItem:Landroid/widget/ImageButton;

.field public final LConfigStartItems:Landroid/widget/LinearLayout;

.field public final SLaunchItemList:Landroid/widget/Spinner;

.field public final idBindingLaunchItem:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final toggleToolBox2:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/LinearLayout;Landroid/widget/Button;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "BAddItem"    # Landroid/widget/ImageButton;
    .param p3, "BConfigItem"    # Landroid/widget/ImageButton;
    .param p4, "BLaunchItem"    # Landroid/widget/Button;
    .param p5, "BRemoveItem"    # Landroid/widget/ImageButton;
    .param p6, "LConfigStartItems"    # Landroid/widget/LinearLayout;
    .param p7, "SLaunchItemList"    # Landroid/widget/Spinner;
    .param p8, "idBindingLaunchItem"    # Landroid/widget/LinearLayout;
    .param p9, "toggleToolBox2"    # Landroid/widget/Button;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/termux/x11/databinding/BindingLaunchItemBinding;->rootView:Landroid/widget/LinearLayout;

    .line 54
    iput-object p2, p0, Lcom/termux/x11/databinding/BindingLaunchItemBinding;->BAddItem:Landroid/widget/ImageButton;

    .line 55
    iput-object p3, p0, Lcom/termux/x11/databinding/BindingLaunchItemBinding;->BConfigItem:Landroid/widget/ImageButton;

    .line 56
    iput-object p4, p0, Lcom/termux/x11/databinding/BindingLaunchItemBinding;->BLaunchItem:Landroid/widget/Button;

    .line 57
    iput-object p5, p0, Lcom/termux/x11/databinding/BindingLaunchItemBinding;->BRemoveItem:Landroid/widget/ImageButton;

    .line 58
    iput-object p6, p0, Lcom/termux/x11/databinding/BindingLaunchItemBinding;->LConfigStartItems:Landroid/widget/LinearLayout;

    .line 59
    iput-object p7, p0, Lcom/termux/x11/databinding/BindingLaunchItemBinding;->SLaunchItemList:Landroid/widget/Spinner;

    .line 60
    iput-object p8, p0, Lcom/termux/x11/databinding/BindingLaunchItemBinding;->idBindingLaunchItem:Landroid/widget/LinearLayout;

    .line 61
    iput-object p9, p0, Lcom/termux/x11/databinding/BindingLaunchItemBinding;->toggleToolBox2:Landroid/widget/Button;

    .line 62
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/BindingLaunchItemBinding;
    .locals 21
    .param p0, "rootView"    # Landroid/view/View;

    .line 91
    move-object/from16 v0, p0

    sget v1, Lcom/termux/x11/R$id;->BAdd_item:I

    .line 92
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 93
    .local v2, "BAddItem":Landroid/widget/ImageButton;
    if-eqz v2, :cond_6

    .line 97
    sget v1, Lcom/termux/x11/R$id;->BConfig_item:I

    .line 98
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/ImageButton;

    .line 99
    .local v13, "BConfigItem":Landroid/widget/ImageButton;
    if-eqz v13, :cond_5

    .line 103
    sget v1, Lcom/termux/x11/R$id;->BLaunch_item:I

    .line 104
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/Button;

    .line 105
    .local v14, "BLaunchItem":Landroid/widget/Button;
    if-eqz v14, :cond_4

    .line 109
    sget v1, Lcom/termux/x11/R$id;->BRemove_item:I

    .line 110
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/ImageButton;

    .line 111
    .local v15, "BRemoveItem":Landroid/widget/ImageButton;
    if-eqz v15, :cond_3

    .line 115
    sget v1, Lcom/termux/x11/R$id;->LConfigStartItems:I

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/LinearLayout;

    .line 117
    .local v16, "LConfigStartItems":Landroid/widget/LinearLayout;
    if-eqz v16, :cond_2

    .line 121
    sget v1, Lcom/termux/x11/R$id;->SLaunchItemList:I

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/Spinner;

    .line 123
    .local v17, "SLaunchItemList":Landroid/widget/Spinner;
    if-eqz v17, :cond_1

    .line 127
    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/LinearLayout;

    .line 129
    .local v18, "idBindingLaunchItem":Landroid/widget/LinearLayout;
    sget v1, Lcom/termux/x11/R$id;->toggle_tool_box2:I

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/Button;

    .line 131
    .local v19, "toggleToolBox2":Landroid/widget/Button;
    if-eqz v19, :cond_0

    .line 135
    new-instance v20, Lcom/termux/x11/databinding/BindingLaunchItemBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v20

    move-object v5, v2

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    invoke-direct/range {v3 .. v12}, Lcom/termux/x11/databinding/BindingLaunchItemBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    return-object v20

    .line 132
    :cond_0
    goto :goto_0

    .line 124
    .end local v18    # "idBindingLaunchItem":Landroid/widget/LinearLayout;
    .end local v19    # "toggleToolBox2":Landroid/widget/Button;
    :cond_1
    goto :goto_0

    .line 118
    .end local v17    # "SLaunchItemList":Landroid/widget/Spinner;
    :cond_2
    goto :goto_0

    .line 112
    .end local v16    # "LConfigStartItems":Landroid/widget/LinearLayout;
    :cond_3
    goto :goto_0

    .line 106
    .end local v15    # "BRemoveItem":Landroid/widget/ImageButton;
    :cond_4
    goto :goto_0

    .line 100
    .end local v14    # "BLaunchItem":Landroid/widget/Button;
    :cond_5
    goto :goto_0

    .line 94
    .end local v13    # "BConfigItem":Landroid/widget/ImageButton;
    :cond_6
    nop

    .line 139
    .end local v2    # "BAddItem":Landroid/widget/ImageButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/BindingLaunchItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/BindingLaunchItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/BindingLaunchItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/BindingLaunchItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 78
    sget v0, Lcom/termux/x11/R$layout;->binding_launch_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/BindingLaunchItemBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/BindingLaunchItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/termux/x11/databinding/BindingLaunchItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/termux/x11/databinding/BindingLaunchItemBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

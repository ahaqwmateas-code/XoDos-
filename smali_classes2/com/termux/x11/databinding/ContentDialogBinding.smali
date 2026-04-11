.class public final Lcom/termux/x11/databinding/ContentDialogBinding;
.super Ljava/lang/Object;
.source "ContentDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final BTCancel:Landroid/widget/Button;

.field public final BTConfirm:Landroid/widget/Button;

.field public final EditText:Landroid/widget/EditText;

.field public final FrameLayout:Landroid/widget/FrameLayout;

.field public final IVIcon:Landroid/widget/ImageView;

.field public final LLBottomBar:Landroid/widget/LinearLayout;

.field public final LLTitleBar:Landroid/widget/LinearLayout;

.field public final ListView:Landroid/widget/ListView;

.field public final TVBottomBarText:Landroid/widget/TextView;

.field public final TVMessage:Landroid/widget/TextView;

.field public final TVTitle:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ListView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "BTCancel"    # Landroid/widget/Button;
    .param p3, "BTConfirm"    # Landroid/widget/Button;
    .param p4, "EditText"    # Landroid/widget/EditText;
    .param p5, "FrameLayout"    # Landroid/widget/FrameLayout;
    .param p6, "IVIcon"    # Landroid/widget/ImageView;
    .param p7, "LLBottomBar"    # Landroid/widget/LinearLayout;
    .param p8, "LLTitleBar"    # Landroid/widget/LinearLayout;
    .param p9, "ListView"    # Landroid/widget/ListView;
    .param p10, "TVBottomBarText"    # Landroid/widget/TextView;
    .param p11, "TVMessage"    # Landroid/widget/TextView;
    .param p12, "TVTitle"    # Landroid/widget/TextView;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/termux/x11/databinding/ContentDialogBinding;->rootView:Landroid/widget/LinearLayout;

    .line 66
    iput-object p2, p0, Lcom/termux/x11/databinding/ContentDialogBinding;->BTCancel:Landroid/widget/Button;

    .line 67
    iput-object p3, p0, Lcom/termux/x11/databinding/ContentDialogBinding;->BTConfirm:Landroid/widget/Button;

    .line 68
    iput-object p4, p0, Lcom/termux/x11/databinding/ContentDialogBinding;->EditText:Landroid/widget/EditText;

    .line 69
    iput-object p5, p0, Lcom/termux/x11/databinding/ContentDialogBinding;->FrameLayout:Landroid/widget/FrameLayout;

    .line 70
    iput-object p6, p0, Lcom/termux/x11/databinding/ContentDialogBinding;->IVIcon:Landroid/widget/ImageView;

    .line 71
    iput-object p7, p0, Lcom/termux/x11/databinding/ContentDialogBinding;->LLBottomBar:Landroid/widget/LinearLayout;

    .line 72
    iput-object p8, p0, Lcom/termux/x11/databinding/ContentDialogBinding;->LLTitleBar:Landroid/widget/LinearLayout;

    .line 73
    iput-object p9, p0, Lcom/termux/x11/databinding/ContentDialogBinding;->ListView:Landroid/widget/ListView;

    .line 74
    iput-object p10, p0, Lcom/termux/x11/databinding/ContentDialogBinding;->TVBottomBarText:Landroid/widget/TextView;

    .line 75
    iput-object p11, p0, Lcom/termux/x11/databinding/ContentDialogBinding;->TVMessage:Landroid/widget/TextView;

    .line 76
    iput-object p12, p0, Lcom/termux/x11/databinding/ContentDialogBinding;->TVTitle:Landroid/widget/TextView;

    .line 77
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/ContentDialogBinding;
    .locals 27
    .param p0, "rootView"    # Landroid/view/View;

    .line 106
    move-object/from16 v0, p0

    sget v1, Lcom/termux/x11/R$id;->BTCancel:I

    .line 107
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 108
    .local v2, "BTCancel":Landroid/widget/Button;
    if-eqz v2, :cond_a

    .line 112
    sget v1, Lcom/termux/x11/R$id;->BTConfirm:I

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/Button;

    .line 114
    .local v16, "BTConfirm":Landroid/widget/Button;
    if-eqz v16, :cond_9

    .line 118
    sget v1, Lcom/termux/x11/R$id;->EditText:I

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/EditText;

    .line 120
    .local v17, "EditText":Landroid/widget/EditText;
    if-eqz v17, :cond_8

    .line 124
    sget v1, Lcom/termux/x11/R$id;->FrameLayout:I

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/FrameLayout;

    .line 126
    .local v18, "FrameLayout":Landroid/widget/FrameLayout;
    if-eqz v18, :cond_7

    .line 130
    sget v1, Lcom/termux/x11/R$id;->IVIcon:I

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/ImageView;

    .line 132
    .local v19, "IVIcon":Landroid/widget/ImageView;
    if-eqz v19, :cond_6

    .line 136
    sget v1, Lcom/termux/x11/R$id;->LLBottomBar:I

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/LinearLayout;

    .line 138
    .local v20, "LLBottomBar":Landroid/widget/LinearLayout;
    if-eqz v20, :cond_5

    .line 142
    sget v1, Lcom/termux/x11/R$id;->LLTitleBar:I

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/LinearLayout;

    .line 144
    .local v21, "LLTitleBar":Landroid/widget/LinearLayout;
    if-eqz v21, :cond_4

    .line 148
    sget v1, Lcom/termux/x11/R$id;->ListView:I

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/ListView;

    .line 150
    .local v22, "ListView":Landroid/widget/ListView;
    if-eqz v22, :cond_3

    .line 154
    sget v1, Lcom/termux/x11/R$id;->TVBottomBarText:I

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/TextView;

    .line 156
    .local v23, "TVBottomBarText":Landroid/widget/TextView;
    if-eqz v23, :cond_2

    .line 160
    sget v1, Lcom/termux/x11/R$id;->TVMessage:I

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/TextView;

    .line 162
    .local v24, "TVMessage":Landroid/widget/TextView;
    if-eqz v24, :cond_1

    .line 166
    sget v1, Lcom/termux/x11/R$id;->TVTitle:I

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/TextView;

    .line 168
    .local v25, "TVTitle":Landroid/widget/TextView;
    if-eqz v25, :cond_0

    .line 172
    new-instance v26, Lcom/termux/x11/databinding/ContentDialogBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v26

    move-object v5, v2

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v15, v25

    invoke-direct/range {v3 .. v15}, Lcom/termux/x11/databinding/ContentDialogBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ListView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v26

    .line 169
    :cond_0
    goto :goto_0

    .line 163
    .end local v25    # "TVTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 157
    .end local v24    # "TVMessage":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 151
    .end local v23    # "TVBottomBarText":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 145
    .end local v22    # "ListView":Landroid/widget/ListView;
    :cond_4
    goto :goto_0

    .line 139
    .end local v21    # "LLTitleBar":Landroid/widget/LinearLayout;
    :cond_5
    goto :goto_0

    .line 133
    .end local v20    # "LLBottomBar":Landroid/widget/LinearLayout;
    :cond_6
    goto :goto_0

    .line 127
    .end local v19    # "IVIcon":Landroid/widget/ImageView;
    :cond_7
    goto :goto_0

    .line 121
    .end local v18    # "FrameLayout":Landroid/widget/FrameLayout;
    :cond_8
    goto :goto_0

    .line 115
    .end local v17    # "EditText":Landroid/widget/EditText;
    :cond_9
    goto :goto_0

    .line 109
    .end local v16    # "BTConfirm":Landroid/widget/Button;
    :cond_a
    nop

    .line 176
    .end local v2    # "BTCancel":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/ContentDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/ContentDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ContentDialogBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ContentDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 93
    sget v0, Lcom/termux/x11/R$layout;->content_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/ContentDialogBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/ContentDialogBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/termux/x11/databinding/ContentDialogBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/termux/x11/databinding/ContentDialogBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

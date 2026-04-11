.class public final Lcom/termux/shared/databinding/ActivityTextIoBinding;
.super Ljava/lang/Object;
.source "ActivityTextIoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final partialPrimaryToolbar:Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textIoHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field public final textIoLabel:Landroid/widget/TextView;

.field public final textIoLabelSeparator:Landroid/view/View;

.field public final textIoNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field public final textIoText:Landroid/widget/EditText;

.field public final textIoTextCharacterUsage:Landroid/widget/TextView;

.field public final textIoTextLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;Landroid/widget/HorizontalScrollView;Landroid/widget/TextView;Landroid/view/View;Landroidx/core/widget/NestedScrollView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "partialPrimaryToolbar"    # Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;
    .param p3, "textIoHorizontalScrollView"    # Landroid/widget/HorizontalScrollView;
    .param p4, "textIoLabel"    # Landroid/widget/TextView;
    .param p5, "textIoLabelSeparator"    # Landroid/view/View;
    .param p6, "textIoNestedScrollView"    # Landroidx/core/widget/NestedScrollView;
    .param p7, "textIoText"    # Landroid/widget/EditText;
    .param p8, "textIoTextCharacterUsage"    # Landroid/widget/TextView;
    .param p9, "textIoTextLinearLayout"    # Landroid/widget/LinearLayout;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/termux/shared/databinding/ActivityTextIoBinding;->rootView:Landroid/widget/LinearLayout;

    .line 56
    iput-object p2, p0, Lcom/termux/shared/databinding/ActivityTextIoBinding;->partialPrimaryToolbar:Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;

    .line 57
    iput-object p3, p0, Lcom/termux/shared/databinding/ActivityTextIoBinding;->textIoHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 58
    iput-object p4, p0, Lcom/termux/shared/databinding/ActivityTextIoBinding;->textIoLabel:Landroid/widget/TextView;

    .line 59
    iput-object p5, p0, Lcom/termux/shared/databinding/ActivityTextIoBinding;->textIoLabelSeparator:Landroid/view/View;

    .line 60
    iput-object p6, p0, Lcom/termux/shared/databinding/ActivityTextIoBinding;->textIoNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 61
    iput-object p7, p0, Lcom/termux/shared/databinding/ActivityTextIoBinding;->textIoText:Landroid/widget/EditText;

    .line 62
    iput-object p8, p0, Lcom/termux/shared/databinding/ActivityTextIoBinding;->textIoTextCharacterUsage:Landroid/widget/TextView;

    .line 63
    iput-object p9, p0, Lcom/termux/shared/databinding/ActivityTextIoBinding;->textIoTextLinearLayout:Landroid/widget/LinearLayout;

    .line 64
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/shared/databinding/ActivityTextIoBinding;
    .locals 22
    .param p0, "rootView"    # Landroid/view/View;

    .line 93
    move-object/from16 v0, p0

    sget v1, Lcom/termux/shared/R$id;->partial_primary_toolbar:I

    .line 94
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 95
    .local v2, "partialPrimaryToolbar":Landroid/view/View;
    if-eqz v2, :cond_7

    .line 98
    invoke-static {v2}, Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;->bind(Landroid/view/View;)Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;

    move-result-object v13

    .line 100
    .local v13, "binding_partialPrimaryToolbar":Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;
    sget v1, Lcom/termux/shared/R$id;->text_io_horizontal_scroll_view:I

    .line 101
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/HorizontalScrollView;

    .line 102
    .local v14, "textIoHorizontalScrollView":Landroid/widget/HorizontalScrollView;
    if-eqz v14, :cond_6

    .line 106
    sget v1, Lcom/termux/shared/R$id;->text_io_label:I

    .line 107
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 108
    .local v15, "textIoLabel":Landroid/widget/TextView;
    if-eqz v15, :cond_5

    .line 112
    sget v1, Lcom/termux/shared/R$id;->text_io_label_separator:I

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 114
    .local v16, "textIoLabelSeparator":Landroid/view/View;
    if-eqz v16, :cond_4

    .line 118
    sget v1, Lcom/termux/shared/R$id;->text_io_nested_scroll_view:I

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroidx/core/widget/NestedScrollView;

    .line 120
    .local v17, "textIoNestedScrollView":Landroidx/core/widget/NestedScrollView;
    if-eqz v17, :cond_3

    .line 124
    sget v1, Lcom/termux/shared/R$id;->text_io_text:I

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/EditText;

    .line 126
    .local v18, "textIoText":Landroid/widget/EditText;
    if-eqz v18, :cond_2

    .line 130
    sget v1, Lcom/termux/shared/R$id;->text_io_text_character_usage:I

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 132
    .local v19, "textIoTextCharacterUsage":Landroid/widget/TextView;
    if-eqz v19, :cond_1

    .line 136
    sget v1, Lcom/termux/shared/R$id;->text_io_text_linear_layout:I

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/LinearLayout;

    .line 138
    .local v20, "textIoTextLinearLayout":Landroid/widget/LinearLayout;
    if-eqz v20, :cond_0

    .line 142
    new-instance v21, Lcom/termux/shared/databinding/ActivityTextIoBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v21

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    invoke-direct/range {v3 .. v12}, Lcom/termux/shared/databinding/ActivityTextIoBinding;-><init>(Landroid/widget/LinearLayout;Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;Landroid/widget/HorizontalScrollView;Landroid/widget/TextView;Landroid/view/View;Landroidx/core/widget/NestedScrollView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    return-object v21

    .line 139
    :cond_0
    goto :goto_0

    .line 133
    .end local v20    # "textIoTextLinearLayout":Landroid/widget/LinearLayout;
    :cond_1
    goto :goto_0

    .line 127
    .end local v19    # "textIoTextCharacterUsage":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 121
    .end local v18    # "textIoText":Landroid/widget/EditText;
    :cond_3
    goto :goto_0

    .line 115
    .end local v17    # "textIoNestedScrollView":Landroidx/core/widget/NestedScrollView;
    :cond_4
    goto :goto_0

    .line 109
    .end local v16    # "textIoLabelSeparator":Landroid/view/View;
    :cond_5
    goto :goto_0

    .line 103
    .end local v15    # "textIoLabel":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 96
    .end local v13    # "binding_partialPrimaryToolbar":Lcom/termux/shared/databinding/PartialPrimaryToolbarBinding;
    .end local v14    # "textIoHorizontalScrollView":Landroid/widget/HorizontalScrollView;
    :cond_7
    nop

    .line 146
    .end local v2    # "partialPrimaryToolbar":Landroid/view/View;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/shared/databinding/ActivityTextIoBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/shared/databinding/ActivityTextIoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/shared/databinding/ActivityTextIoBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/shared/databinding/ActivityTextIoBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 80
    sget v0, Lcom/termux/shared/R$layout;->activity_text_io:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    :cond_0
    invoke-static {v0}, Lcom/termux/shared/databinding/ActivityTextIoBinding;->bind(Landroid/view/View;)Lcom/termux/shared/databinding/ActivityTextIoBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/termux/shared/databinding/ActivityTextIoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/termux/shared/databinding/ActivityTextIoBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

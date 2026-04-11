.class public final Lcom/termux/x11/databinding/InputControlsFragmentBinding;
.super Ljava/lang/Object;
.source "InputControlsFragmentBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final BTAddProfile:Landroid/widget/ImageButton;

.field public final BTControlsEditor:Landroid/widget/Button;

.field public final BTDuplicateProfile:Landroid/widget/ImageButton;

.field public final BTEditProfile:Landroid/widget/ImageButton;

.field public final BTExportProfile:Landroid/widget/Button;

.field public final BTImportProfile:Landroid/widget/Button;

.field public final BTRemoveProfile:Landroid/widget/ImageButton;

.field public final LLExternalControllers:Landroid/widget/LinearLayout;

.field public final SBCursorSpeed:Landroid/widget/SeekBar;

.field public final SBOverlayOpacity:Landroid/widget/SeekBar;

.field public final SProfile:Landroid/widget/Spinner;

.field public final TVCursorSpeed:Landroid/widget/TextView;

.field public final TVEmptyText:Landroid/widget/TextView;

.field public final TVUiOpacity:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "BTAddProfile"    # Landroid/widget/ImageButton;
    .param p3, "BTControlsEditor"    # Landroid/widget/Button;
    .param p4, "BTDuplicateProfile"    # Landroid/widget/ImageButton;
    .param p5, "BTEditProfile"    # Landroid/widget/ImageButton;
    .param p6, "BTExportProfile"    # Landroid/widget/Button;
    .param p7, "BTImportProfile"    # Landroid/widget/Button;
    .param p8, "BTRemoveProfile"    # Landroid/widget/ImageButton;
    .param p9, "LLExternalControllers"    # Landroid/widget/LinearLayout;
    .param p10, "SBCursorSpeed"    # Landroid/widget/SeekBar;
    .param p11, "SBOverlayOpacity"    # Landroid/widget/SeekBar;
    .param p12, "SProfile"    # Landroid/widget/Spinner;
    .param p13, "TVCursorSpeed"    # Landroid/widget/TextView;
    .param p14, "TVEmptyText"    # Landroid/widget/TextView;
    .param p15, "TVUiOpacity"    # Landroid/widget/TextView;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->rootView:Landroid/widget/ScrollView;

    .line 78
    iput-object p2, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->BTAddProfile:Landroid/widget/ImageButton;

    .line 79
    iput-object p3, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->BTControlsEditor:Landroid/widget/Button;

    .line 80
    iput-object p4, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->BTDuplicateProfile:Landroid/widget/ImageButton;

    .line 81
    iput-object p5, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->BTEditProfile:Landroid/widget/ImageButton;

    .line 82
    iput-object p6, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->BTExportProfile:Landroid/widget/Button;

    .line 83
    iput-object p7, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->BTImportProfile:Landroid/widget/Button;

    .line 84
    iput-object p8, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->BTRemoveProfile:Landroid/widget/ImageButton;

    .line 85
    iput-object p9, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->LLExternalControllers:Landroid/widget/LinearLayout;

    .line 86
    iput-object p10, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->SBCursorSpeed:Landroid/widget/SeekBar;

    .line 87
    iput-object p11, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->SBOverlayOpacity:Landroid/widget/SeekBar;

    .line 88
    iput-object p12, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->SProfile:Landroid/widget/Spinner;

    .line 89
    iput-object p13, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->TVCursorSpeed:Landroid/widget/TextView;

    .line 90
    iput-object p14, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->TVEmptyText:Landroid/widget/TextView;

    .line 91
    iput-object p15, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->TVUiOpacity:Landroid/widget/TextView;

    .line 92
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/InputControlsFragmentBinding;
    .locals 33
    .param p0, "rootView"    # Landroid/view/View;

    .line 121
    move-object/from16 v0, p0

    sget v1, Lcom/termux/x11/R$id;->BTAddProfile:I

    .line 122
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 123
    .local v2, "BTAddProfile":Landroid/widget/ImageButton;
    if-eqz v2, :cond_d

    .line 127
    sget v1, Lcom/termux/x11/R$id;->BTControlsEditor:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/Button;

    .line 129
    .local v19, "BTControlsEditor":Landroid/widget/Button;
    if-eqz v19, :cond_c

    .line 133
    sget v1, Lcom/termux/x11/R$id;->BTDuplicateProfile:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/ImageButton;

    .line 135
    .local v20, "BTDuplicateProfile":Landroid/widget/ImageButton;
    if-eqz v20, :cond_b

    .line 139
    sget v1, Lcom/termux/x11/R$id;->BTEditProfile:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/ImageButton;

    .line 141
    .local v21, "BTEditProfile":Landroid/widget/ImageButton;
    if-eqz v21, :cond_a

    .line 145
    sget v1, Lcom/termux/x11/R$id;->BTExportProfile:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/Button;

    .line 147
    .local v22, "BTExportProfile":Landroid/widget/Button;
    if-eqz v22, :cond_9

    .line 151
    sget v1, Lcom/termux/x11/R$id;->BTImportProfile:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/Button;

    .line 153
    .local v23, "BTImportProfile":Landroid/widget/Button;
    if-eqz v23, :cond_8

    .line 157
    sget v1, Lcom/termux/x11/R$id;->BTRemoveProfile:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/ImageButton;

    .line 159
    .local v24, "BTRemoveProfile":Landroid/widget/ImageButton;
    if-eqz v24, :cond_7

    .line 163
    sget v1, Lcom/termux/x11/R$id;->LLExternalControllers:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/LinearLayout;

    .line 165
    .local v25, "LLExternalControllers":Landroid/widget/LinearLayout;
    if-eqz v25, :cond_6

    .line 169
    sget v1, Lcom/termux/x11/R$id;->SBCursorSpeed:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/SeekBar;

    .line 171
    .local v26, "SBCursorSpeed":Landroid/widget/SeekBar;
    if-eqz v26, :cond_5

    .line 175
    sget v1, Lcom/termux/x11/R$id;->SBOverlayOpacity:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/SeekBar;

    .line 177
    .local v27, "SBOverlayOpacity":Landroid/widget/SeekBar;
    if-eqz v27, :cond_4

    .line 181
    sget v1, Lcom/termux/x11/R$id;->SProfile:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Landroid/widget/Spinner;

    .line 183
    .local v28, "SProfile":Landroid/widget/Spinner;
    if-eqz v28, :cond_3

    .line 187
    sget v1, Lcom/termux/x11/R$id;->TVCursorSpeed:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Landroid/widget/TextView;

    .line 189
    .local v29, "TVCursorSpeed":Landroid/widget/TextView;
    if-eqz v29, :cond_2

    .line 193
    sget v1, Lcom/termux/x11/R$id;->TVEmptyText:I

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Landroid/widget/TextView;

    .line 195
    .local v30, "TVEmptyText":Landroid/widget/TextView;
    if-eqz v30, :cond_1

    .line 199
    sget v1, Lcom/termux/x11/R$id;->TVUiOpacity:I

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/widget/TextView;

    .line 201
    .local v31, "TVUiOpacity":Landroid/widget/TextView;
    if-eqz v31, :cond_0

    .line 205
    new-instance v32, Lcom/termux/x11/databinding/InputControlsFragmentBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object/from16 v3, v32

    move-object v5, v2

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    move-object/from16 v15, v28

    move-object/from16 v16, v29

    move-object/from16 v17, v30

    move-object/from16 v18, v31

    invoke-direct/range {v3 .. v18}, Lcom/termux/x11/databinding/InputControlsFragmentBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v32

    .line 202
    :cond_0
    goto :goto_0

    .line 196
    .end local v31    # "TVUiOpacity":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 190
    .end local v30    # "TVEmptyText":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 184
    .end local v29    # "TVCursorSpeed":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 178
    .end local v28    # "SProfile":Landroid/widget/Spinner;
    :cond_4
    goto :goto_0

    .line 172
    .end local v27    # "SBOverlayOpacity":Landroid/widget/SeekBar;
    :cond_5
    goto :goto_0

    .line 166
    .end local v26    # "SBCursorSpeed":Landroid/widget/SeekBar;
    :cond_6
    goto :goto_0

    .line 160
    .end local v25    # "LLExternalControllers":Landroid/widget/LinearLayout;
    :cond_7
    goto :goto_0

    .line 154
    .end local v24    # "BTRemoveProfile":Landroid/widget/ImageButton;
    :cond_8
    goto :goto_0

    .line 148
    .end local v23    # "BTImportProfile":Landroid/widget/Button;
    :cond_9
    goto :goto_0

    .line 142
    .end local v22    # "BTExportProfile":Landroid/widget/Button;
    :cond_a
    goto :goto_0

    .line 136
    .end local v21    # "BTEditProfile":Landroid/widget/ImageButton;
    :cond_b
    goto :goto_0

    .line 130
    .end local v20    # "BTDuplicateProfile":Landroid/widget/ImageButton;
    :cond_c
    goto :goto_0

    .line 124
    .end local v19    # "BTControlsEditor":Landroid/widget/Button;
    :cond_d
    nop

    .line 210
    .end local v2    # "BTAddProfile":Landroid/widget/ImageButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/InputControlsFragmentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 102
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/InputControlsFragmentBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/InputControlsFragmentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 108
    sget v0, Lcom/termux/x11/R$layout;->input_controls_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/InputControlsFragmentBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/termux/x11/databinding/InputControlsFragmentBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method

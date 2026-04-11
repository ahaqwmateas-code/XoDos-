.class public final Lcom/termux/x11/databinding/SettingsFragmentBinding;
.super Ljava/lang/Object;
.source "SettingsFragmentBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final BTAddBox64Preset:Landroid/widget/ImageButton;

.field public final BTAddBox86Preset:Landroid/widget/ImageButton;

.field public final BTConfirm:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final BTDuplicateBox64Preset:Landroid/widget/ImageButton;

.field public final BTDuplicateBox86Preset:Landroid/widget/ImageButton;

.field public final BTEditBox64Preset:Landroid/widget/ImageButton;

.field public final BTEditBox86Preset:Landroid/widget/ImageButton;

.field public final BTRemoveBox64Preset:Landroid/widget/ImageButton;

.field public final BTRemoveBox86Preset:Landroid/widget/ImageButton;

.field public final BTSelectWineFile:Landroid/widget/Button;

.field public final CBUseDRI3:Landroid/widget/CheckBox;

.field public final LLInstalledWineList:Landroid/widget/LinearLayout;

.field public final SBCursorSpeed:Landroid/widget/SeekBar;

.field public final SBox64Preset:Landroid/widget/Spinner;

.field public final SBox64Version:Landroid/widget/Spinner;

.field public final SBox86Preset:Landroid/widget/Spinner;

.field public final SBox86Version:Landroid/widget/Spinner;

.field public final TVCursorSpeed:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "BTAddBox64Preset"    # Landroid/widget/ImageButton;
    .param p3, "BTAddBox86Preset"    # Landroid/widget/ImageButton;
    .param p4, "BTConfirm"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p5, "BTDuplicateBox64Preset"    # Landroid/widget/ImageButton;
    .param p6, "BTDuplicateBox86Preset"    # Landroid/widget/ImageButton;
    .param p7, "BTEditBox64Preset"    # Landroid/widget/ImageButton;
    .param p8, "BTEditBox86Preset"    # Landroid/widget/ImageButton;
    .param p9, "BTRemoveBox64Preset"    # Landroid/widget/ImageButton;
    .param p10, "BTRemoveBox86Preset"    # Landroid/widget/ImageButton;
    .param p11, "BTSelectWineFile"    # Landroid/widget/Button;
    .param p12, "CBUseDRI3"    # Landroid/widget/CheckBox;
    .param p13, "LLInstalledWineList"    # Landroid/widget/LinearLayout;
    .param p14, "SBCursorSpeed"    # Landroid/widget/SeekBar;
    .param p15, "SBox64Preset"    # Landroid/widget/Spinner;
    .param p16, "SBox64Version"    # Landroid/widget/Spinner;
    .param p17, "SBox86Preset"    # Landroid/widget/Spinner;
    .param p18, "SBox86Version"    # Landroid/widget/Spinner;
    .param p19, "TVCursorSpeed"    # Landroid/widget/TextView;

    .line 92
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->rootView:Landroid/widget/FrameLayout;

    .line 94
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->BTAddBox64Preset:Landroid/widget/ImageButton;

    .line 95
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->BTAddBox86Preset:Landroid/widget/ImageButton;

    .line 96
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->BTConfirm:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 97
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->BTDuplicateBox64Preset:Landroid/widget/ImageButton;

    .line 98
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->BTDuplicateBox86Preset:Landroid/widget/ImageButton;

    .line 99
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->BTEditBox64Preset:Landroid/widget/ImageButton;

    .line 100
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->BTEditBox86Preset:Landroid/widget/ImageButton;

    .line 101
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->BTRemoveBox64Preset:Landroid/widget/ImageButton;

    .line 102
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->BTRemoveBox86Preset:Landroid/widget/ImageButton;

    .line 103
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->BTSelectWineFile:Landroid/widget/Button;

    .line 104
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->CBUseDRI3:Landroid/widget/CheckBox;

    .line 105
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->LLInstalledWineList:Landroid/widget/LinearLayout;

    .line 106
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->SBCursorSpeed:Landroid/widget/SeekBar;

    .line 107
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->SBox64Preset:Landroid/widget/Spinner;

    .line 108
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->SBox64Version:Landroid/widget/Spinner;

    .line 109
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->SBox86Preset:Landroid/widget/Spinner;

    .line 110
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->SBox86Version:Landroid/widget/Spinner;

    .line 111
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->TVCursorSpeed:Landroid/widget/TextView;

    .line 112
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/SettingsFragmentBinding;
    .locals 41
    .param p0, "rootView"    # Landroid/view/View;

    .line 141
    move-object/from16 v0, p0

    sget v1, Lcom/termux/x11/R$id;->BTAddBox64Preset:I

    .line 142
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 143
    .local v2, "BTAddBox64Preset":Landroid/widget/ImageButton;
    if-eqz v2, :cond_11

    .line 147
    sget v1, Lcom/termux/x11/R$id;->BTAddBox86Preset:I

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/ImageButton;

    .line 149
    .local v23, "BTAddBox86Preset":Landroid/widget/ImageButton;
    if-eqz v23, :cond_10

    .line 153
    sget v1, Lcom/termux/x11/R$id;->BTConfirm:I

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 155
    .local v24, "BTConfirm":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    if-eqz v24, :cond_f

    .line 159
    sget v1, Lcom/termux/x11/R$id;->BTDuplicateBox64Preset:I

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/ImageButton;

    .line 161
    .local v25, "BTDuplicateBox64Preset":Landroid/widget/ImageButton;
    if-eqz v25, :cond_e

    .line 165
    sget v1, Lcom/termux/x11/R$id;->BTDuplicateBox86Preset:I

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/ImageButton;

    .line 167
    .local v26, "BTDuplicateBox86Preset":Landroid/widget/ImageButton;
    if-eqz v26, :cond_d

    .line 171
    sget v1, Lcom/termux/x11/R$id;->BTEditBox64Preset:I

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/ImageButton;

    .line 173
    .local v27, "BTEditBox64Preset":Landroid/widget/ImageButton;
    if-eqz v27, :cond_c

    .line 177
    sget v1, Lcom/termux/x11/R$id;->BTEditBox86Preset:I

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Landroid/widget/ImageButton;

    .line 179
    .local v28, "BTEditBox86Preset":Landroid/widget/ImageButton;
    if-eqz v28, :cond_b

    .line 183
    sget v1, Lcom/termux/x11/R$id;->BTRemoveBox64Preset:I

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Landroid/widget/ImageButton;

    .line 185
    .local v29, "BTRemoveBox64Preset":Landroid/widget/ImageButton;
    if-eqz v29, :cond_a

    .line 189
    sget v1, Lcom/termux/x11/R$id;->BTRemoveBox86Preset:I

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Landroid/widget/ImageButton;

    .line 191
    .local v30, "BTRemoveBox86Preset":Landroid/widget/ImageButton;
    if-eqz v30, :cond_9

    .line 195
    sget v1, Lcom/termux/x11/R$id;->BTSelectWineFile:I

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/widget/Button;

    .line 197
    .local v31, "BTSelectWineFile":Landroid/widget/Button;
    if-eqz v31, :cond_8

    .line 201
    sget v1, Lcom/termux/x11/R$id;->CBUseDRI3:I

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Landroid/widget/CheckBox;

    .line 203
    .local v32, "CBUseDRI3":Landroid/widget/CheckBox;
    if-eqz v32, :cond_7

    .line 207
    sget v1, Lcom/termux/x11/R$id;->LLInstalledWineList:I

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v33, v3

    check-cast v33, Landroid/widget/LinearLayout;

    .line 209
    .local v33, "LLInstalledWineList":Landroid/widget/LinearLayout;
    if-eqz v33, :cond_6

    .line 213
    sget v1, Lcom/termux/x11/R$id;->SBCursorSpeed:I

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v34, v3

    check-cast v34, Landroid/widget/SeekBar;

    .line 215
    .local v34, "SBCursorSpeed":Landroid/widget/SeekBar;
    if-eqz v34, :cond_5

    .line 219
    sget v1, Lcom/termux/x11/R$id;->SBox64Preset:I

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v35, v3

    check-cast v35, Landroid/widget/Spinner;

    .line 221
    .local v35, "SBox64Preset":Landroid/widget/Spinner;
    if-eqz v35, :cond_4

    .line 225
    sget v1, Lcom/termux/x11/R$id;->SBox64Version:I

    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v36, v3

    check-cast v36, Landroid/widget/Spinner;

    .line 227
    .local v36, "SBox64Version":Landroid/widget/Spinner;
    if-eqz v36, :cond_3

    .line 231
    sget v1, Lcom/termux/x11/R$id;->SBox86Preset:I

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v37, v3

    check-cast v37, Landroid/widget/Spinner;

    .line 233
    .local v37, "SBox86Preset":Landroid/widget/Spinner;
    if-eqz v37, :cond_2

    .line 237
    sget v1, Lcom/termux/x11/R$id;->SBox86Version:I

    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v38, v3

    check-cast v38, Landroid/widget/Spinner;

    .line 239
    .local v38, "SBox86Version":Landroid/widget/Spinner;
    if-eqz v38, :cond_1

    .line 243
    sget v1, Lcom/termux/x11/R$id;->TVCursorSpeed:I

    .line 244
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v39, v3

    check-cast v39, Landroid/widget/TextView;

    .line 245
    .local v39, "TVCursorSpeed":Landroid/widget/TextView;
    if-eqz v39, :cond_0

    .line 249
    new-instance v40, Lcom/termux/x11/databinding/SettingsFragmentBinding;

    move-object/from16 v3, v40

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    move-object v5, v2

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v10, v27

    move-object/from16 v11, v28

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move-object/from16 v14, v31

    move-object/from16 v15, v32

    move-object/from16 v16, v33

    move-object/from16 v17, v34

    move-object/from16 v18, v35

    move-object/from16 v19, v36

    move-object/from16 v20, v37

    move-object/from16 v21, v38

    move-object/from16 v22, v39

    invoke-direct/range {v3 .. v22}, Lcom/termux/x11/databinding/SettingsFragmentBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/TextView;)V

    return-object v40

    .line 246
    :cond_0
    goto :goto_0

    .line 240
    .end local v39    # "TVCursorSpeed":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 234
    .end local v38    # "SBox86Version":Landroid/widget/Spinner;
    :cond_2
    goto :goto_0

    .line 228
    .end local v37    # "SBox86Preset":Landroid/widget/Spinner;
    :cond_3
    goto :goto_0

    .line 222
    .end local v36    # "SBox64Version":Landroid/widget/Spinner;
    :cond_4
    goto :goto_0

    .line 216
    .end local v35    # "SBox64Preset":Landroid/widget/Spinner;
    :cond_5
    goto :goto_0

    .line 210
    .end local v34    # "SBCursorSpeed":Landroid/widget/SeekBar;
    :cond_6
    goto :goto_0

    .line 204
    .end local v33    # "LLInstalledWineList":Landroid/widget/LinearLayout;
    :cond_7
    goto :goto_0

    .line 198
    .end local v32    # "CBUseDRI3":Landroid/widget/CheckBox;
    :cond_8
    goto :goto_0

    .line 192
    .end local v31    # "BTSelectWineFile":Landroid/widget/Button;
    :cond_9
    goto :goto_0

    .line 186
    .end local v30    # "BTRemoveBox86Preset":Landroid/widget/ImageButton;
    :cond_a
    goto :goto_0

    .line 180
    .end local v29    # "BTRemoveBox64Preset":Landroid/widget/ImageButton;
    :cond_b
    goto :goto_0

    .line 174
    .end local v28    # "BTEditBox86Preset":Landroid/widget/ImageButton;
    :cond_c
    goto :goto_0

    .line 168
    .end local v27    # "BTEditBox64Preset":Landroid/widget/ImageButton;
    :cond_d
    goto :goto_0

    .line 162
    .end local v26    # "BTDuplicateBox86Preset":Landroid/widget/ImageButton;
    :cond_e
    goto :goto_0

    .line 156
    .end local v25    # "BTDuplicateBox64Preset":Landroid/widget/ImageButton;
    :cond_f
    goto :goto_0

    .line 150
    .end local v24    # "BTConfirm":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :cond_10
    goto :goto_0

    .line 144
    .end local v23    # "BTAddBox86Preset":Landroid/widget/ImageButton;
    :cond_11
    nop

    .line 255
    .end local v2    # "BTAddBox64Preset":Landroid/widget/ImageButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/SettingsFragmentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/SettingsFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/SettingsFragmentBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/SettingsFragmentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 128
    sget v0, Lcom/termux/x11/R$layout;->settings_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/SettingsFragmentBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/SettingsFragmentBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/termux/x11/databinding/SettingsFragmentBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/termux/x11/databinding/SettingsFragmentBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.class public final Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;
.super Ljava/lang/Object;
.source "ShortcutSettingsDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final BTAddEnvVar:Landroid/widget/Button;

.field public final BTDXWrapperConfig:Landroid/widget/ImageButton;

.field public final BTExtraArgsMenu:Landroid/widget/ImageButton;

.field public final BTGraphicsDriverConfig:Landroid/widget/ImageButton;

.field public final BTHelpDXWrapper:Landroid/widget/ImageView;

.field public final CBForceFullscreen:Landroid/widget/CheckBox;

.field public final ETExecArgs:Landroid/widget/EditText;

.field public final ETName:Landroid/widget/EditText;

.field public final ETScreenHeight:Landroid/widget/EditText;

.field public final ETScreenWidth:Landroid/widget/EditText;

.field public final LLContent:Landroid/widget/LinearLayout;

.field public final LLCustomScreenSize:Landroid/widget/LinearLayout;

.field public final LLEnvVars:Landroid/widget/LinearLayout;

.field public final LLTabAdvanced:Landroid/widget/LinearLayout;

.field public final LLTabEnvVars:Landroid/widget/LinearLayout;

.field public final LLTabWinComponents:Landroid/widget/LinearLayout;

.field public final SAudioDriver:Landroid/widget/Spinner;

.field public final SBox64Preset:Landroid/widget/Spinner;

.field public final SBox86Preset:Landroid/widget/Spinner;

.field public final SControlsProfile:Landroid/widget/Spinner;

.field public final SDInputMapperType:Landroid/widget/Spinner;

.field public final SDXWrapper:Landroid/widget/Spinner;

.field public final SGraphicsDriver:Landroid/widget/Spinner;

.field public final SScreenSize:Landroid/widget/Spinner;

.field public final TVEnvVarsEmptyText:Landroid/widget/TextView;

.field public final TabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/TextView;Lcom/google/android/material/tabs/TabLayout;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "BTAddEnvVar"    # Landroid/widget/Button;
    .param p3, "BTDXWrapperConfig"    # Landroid/widget/ImageButton;
    .param p4, "BTExtraArgsMenu"    # Landroid/widget/ImageButton;
    .param p5, "BTGraphicsDriverConfig"    # Landroid/widget/ImageButton;
    .param p6, "BTHelpDXWrapper"    # Landroid/widget/ImageView;
    .param p7, "CBForceFullscreen"    # Landroid/widget/CheckBox;
    .param p8, "ETExecArgs"    # Landroid/widget/EditText;
    .param p9, "ETName"    # Landroid/widget/EditText;
    .param p10, "ETScreenHeight"    # Landroid/widget/EditText;
    .param p11, "ETScreenWidth"    # Landroid/widget/EditText;
    .param p12, "LLContent"    # Landroid/widget/LinearLayout;
    .param p13, "LLCustomScreenSize"    # Landroid/widget/LinearLayout;
    .param p14, "LLEnvVars"    # Landroid/widget/LinearLayout;
    .param p15, "LLTabAdvanced"    # Landroid/widget/LinearLayout;
    .param p16, "LLTabEnvVars"    # Landroid/widget/LinearLayout;
    .param p17, "LLTabWinComponents"    # Landroid/widget/LinearLayout;
    .param p18, "SAudioDriver"    # Landroid/widget/Spinner;
    .param p19, "SBox64Preset"    # Landroid/widget/Spinner;
    .param p20, "SBox86Preset"    # Landroid/widget/Spinner;
    .param p21, "SControlsProfile"    # Landroid/widget/Spinner;
    .param p22, "SDInputMapperType"    # Landroid/widget/Spinner;
    .param p23, "SDXWrapper"    # Landroid/widget/Spinner;
    .param p24, "SGraphicsDriver"    # Landroid/widget/Spinner;
    .param p25, "SScreenSize"    # Landroid/widget/Spinner;
    .param p26, "TVEnvVarsEmptyText"    # Landroid/widget/TextView;
    .param p27, "TabLayout"    # Lcom/google/android/material/tabs/TabLayout;

    .line 119
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 120
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->rootView:Landroid/widget/ScrollView;

    .line 121
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->BTAddEnvVar:Landroid/widget/Button;

    .line 122
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->BTDXWrapperConfig:Landroid/widget/ImageButton;

    .line 123
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->BTExtraArgsMenu:Landroid/widget/ImageButton;

    .line 124
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->BTGraphicsDriverConfig:Landroid/widget/ImageButton;

    .line 125
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->BTHelpDXWrapper:Landroid/widget/ImageView;

    .line 126
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->CBForceFullscreen:Landroid/widget/CheckBox;

    .line 127
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->ETExecArgs:Landroid/widget/EditText;

    .line 128
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->ETName:Landroid/widget/EditText;

    .line 129
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->ETScreenHeight:Landroid/widget/EditText;

    .line 130
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->ETScreenWidth:Landroid/widget/EditText;

    .line 131
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->LLContent:Landroid/widget/LinearLayout;

    .line 132
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->LLCustomScreenSize:Landroid/widget/LinearLayout;

    .line 133
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->LLEnvVars:Landroid/widget/LinearLayout;

    .line 134
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->LLTabAdvanced:Landroid/widget/LinearLayout;

    .line 135
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->LLTabEnvVars:Landroid/widget/LinearLayout;

    .line 136
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->LLTabWinComponents:Landroid/widget/LinearLayout;

    .line 137
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->SAudioDriver:Landroid/widget/Spinner;

    .line 138
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->SBox64Preset:Landroid/widget/Spinner;

    .line 139
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->SBox86Preset:Landroid/widget/Spinner;

    .line 140
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->SControlsProfile:Landroid/widget/Spinner;

    .line 141
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->SDInputMapperType:Landroid/widget/Spinner;

    .line 142
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->SDXWrapper:Landroid/widget/Spinner;

    .line 143
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->SGraphicsDriver:Landroid/widget/Spinner;

    .line 144
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->SScreenSize:Landroid/widget/Spinner;

    .line 145
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->TVEnvVarsEmptyText:Landroid/widget/TextView;

    .line 146
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 147
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;
    .locals 57
    .param p0, "rootView"    # Landroid/view/View;

    .line 176
    move-object/from16 v0, p0

    sget v1, Lcom/termux/x11/R$id;->BTAddEnvVar:I

    .line 177
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 178
    .local v2, "BTAddEnvVar":Landroid/widget/Button;
    if-eqz v2, :cond_19

    .line 182
    sget v1, Lcom/termux/x11/R$id;->BTDXWrapperConfig:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/widget/ImageButton;

    .line 184
    .local v31, "BTDXWrapperConfig":Landroid/widget/ImageButton;
    if-eqz v31, :cond_18

    .line 188
    sget v1, Lcom/termux/x11/R$id;->BTExtraArgsMenu:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Landroid/widget/ImageButton;

    .line 190
    .local v32, "BTExtraArgsMenu":Landroid/widget/ImageButton;
    if-eqz v32, :cond_17

    .line 194
    sget v1, Lcom/termux/x11/R$id;->BTGraphicsDriverConfig:I

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v33, v3

    check-cast v33, Landroid/widget/ImageButton;

    .line 196
    .local v33, "BTGraphicsDriverConfig":Landroid/widget/ImageButton;
    if-eqz v33, :cond_16

    .line 200
    sget v1, Lcom/termux/x11/R$id;->BTHelpDXWrapper:I

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v34, v3

    check-cast v34, Landroid/widget/ImageView;

    .line 202
    .local v34, "BTHelpDXWrapper":Landroid/widget/ImageView;
    if-eqz v34, :cond_15

    .line 206
    sget v1, Lcom/termux/x11/R$id;->CBForceFullscreen:I

    .line 207
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v35, v3

    check-cast v35, Landroid/widget/CheckBox;

    .line 208
    .local v35, "CBForceFullscreen":Landroid/widget/CheckBox;
    if-eqz v35, :cond_14

    .line 212
    sget v1, Lcom/termux/x11/R$id;->ETExecArgs:I

    .line 213
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v36, v3

    check-cast v36, Landroid/widget/EditText;

    .line 214
    .local v36, "ETExecArgs":Landroid/widget/EditText;
    if-eqz v36, :cond_13

    .line 218
    sget v1, Lcom/termux/x11/R$id;->ETName:I

    .line 219
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v37, v3

    check-cast v37, Landroid/widget/EditText;

    .line 220
    .local v37, "ETName":Landroid/widget/EditText;
    if-eqz v37, :cond_12

    .line 224
    sget v1, Lcom/termux/x11/R$id;->ETScreenHeight:I

    .line 225
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v38, v3

    check-cast v38, Landroid/widget/EditText;

    .line 226
    .local v38, "ETScreenHeight":Landroid/widget/EditText;
    if-eqz v38, :cond_11

    .line 230
    sget v1, Lcom/termux/x11/R$id;->ETScreenWidth:I

    .line 231
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v39, v3

    check-cast v39, Landroid/widget/EditText;

    .line 232
    .local v39, "ETScreenWidth":Landroid/widget/EditText;
    if-eqz v39, :cond_10

    .line 236
    sget v1, Lcom/termux/x11/R$id;->LLContent:I

    .line 237
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v40, v3

    check-cast v40, Landroid/widget/LinearLayout;

    .line 238
    .local v40, "LLContent":Landroid/widget/LinearLayout;
    if-eqz v40, :cond_f

    .line 242
    sget v1, Lcom/termux/x11/R$id;->LLCustomScreenSize:I

    .line 243
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v41, v3

    check-cast v41, Landroid/widget/LinearLayout;

    .line 244
    .local v41, "LLCustomScreenSize":Landroid/widget/LinearLayout;
    if-eqz v41, :cond_e

    .line 248
    sget v1, Lcom/termux/x11/R$id;->LLEnvVars:I

    .line 249
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v42, v3

    check-cast v42, Landroid/widget/LinearLayout;

    .line 250
    .local v42, "LLEnvVars":Landroid/widget/LinearLayout;
    if-eqz v42, :cond_d

    .line 254
    sget v1, Lcom/termux/x11/R$id;->LLTabAdvanced:I

    .line 255
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v43, v3

    check-cast v43, Landroid/widget/LinearLayout;

    .line 256
    .local v43, "LLTabAdvanced":Landroid/widget/LinearLayout;
    if-eqz v43, :cond_c

    .line 260
    sget v1, Lcom/termux/x11/R$id;->LLTabEnvVars:I

    .line 261
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v44, v3

    check-cast v44, Landroid/widget/LinearLayout;

    .line 262
    .local v44, "LLTabEnvVars":Landroid/widget/LinearLayout;
    if-eqz v44, :cond_b

    .line 266
    sget v1, Lcom/termux/x11/R$id;->LLTabWinComponents:I

    .line 267
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v45, v3

    check-cast v45, Landroid/widget/LinearLayout;

    .line 268
    .local v45, "LLTabWinComponents":Landroid/widget/LinearLayout;
    if-eqz v45, :cond_a

    .line 272
    sget v1, Lcom/termux/x11/R$id;->SAudioDriver:I

    .line 273
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v46, v3

    check-cast v46, Landroid/widget/Spinner;

    .line 274
    .local v46, "SAudioDriver":Landroid/widget/Spinner;
    if-eqz v46, :cond_9

    .line 278
    sget v1, Lcom/termux/x11/R$id;->SBox64Preset:I

    .line 279
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v47, v3

    check-cast v47, Landroid/widget/Spinner;

    .line 280
    .local v47, "SBox64Preset":Landroid/widget/Spinner;
    if-eqz v47, :cond_8

    .line 284
    sget v1, Lcom/termux/x11/R$id;->SBox86Preset:I

    .line 285
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v48, v3

    check-cast v48, Landroid/widget/Spinner;

    .line 286
    .local v48, "SBox86Preset":Landroid/widget/Spinner;
    if-eqz v48, :cond_7

    .line 290
    sget v1, Lcom/termux/x11/R$id;->SControlsProfile:I

    .line 291
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v49, v3

    check-cast v49, Landroid/widget/Spinner;

    .line 292
    .local v49, "SControlsProfile":Landroid/widget/Spinner;
    if-eqz v49, :cond_6

    .line 296
    sget v1, Lcom/termux/x11/R$id;->SDInputMapperType:I

    .line 297
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v50, v3

    check-cast v50, Landroid/widget/Spinner;

    .line 298
    .local v50, "SDInputMapperType":Landroid/widget/Spinner;
    if-eqz v50, :cond_5

    .line 302
    sget v1, Lcom/termux/x11/R$id;->SDXWrapper:I

    .line 303
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v51, v3

    check-cast v51, Landroid/widget/Spinner;

    .line 304
    .local v51, "SDXWrapper":Landroid/widget/Spinner;
    if-eqz v51, :cond_4

    .line 308
    sget v1, Lcom/termux/x11/R$id;->SGraphicsDriver:I

    .line 309
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v52, v3

    check-cast v52, Landroid/widget/Spinner;

    .line 310
    .local v52, "SGraphicsDriver":Landroid/widget/Spinner;
    if-eqz v52, :cond_3

    .line 314
    sget v1, Lcom/termux/x11/R$id;->SScreenSize:I

    .line 315
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v53, v3

    check-cast v53, Landroid/widget/Spinner;

    .line 316
    .local v53, "SScreenSize":Landroid/widget/Spinner;
    if-eqz v53, :cond_2

    .line 320
    sget v1, Lcom/termux/x11/R$id;->TVEnvVarsEmptyText:I

    .line 321
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v54, v3

    check-cast v54, Landroid/widget/TextView;

    .line 322
    .local v54, "TVEnvVarsEmptyText":Landroid/widget/TextView;
    if-eqz v54, :cond_1

    .line 326
    sget v1, Lcom/termux/x11/R$id;->TabLayout:I

    .line 327
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v55, v3

    check-cast v55, Lcom/google/android/material/tabs/TabLayout;

    .line 328
    .local v55, "TabLayout":Lcom/google/android/material/tabs/TabLayout;
    if-eqz v55, :cond_0

    .line 332
    new-instance v56, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;

    move-object/from16 v3, v56

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object v5, v2

    move-object/from16 v6, v31

    move-object/from16 v7, v32

    move-object/from16 v8, v33

    move-object/from16 v9, v34

    move-object/from16 v10, v35

    move-object/from16 v11, v36

    move-object/from16 v12, v37

    move-object/from16 v13, v38

    move-object/from16 v14, v39

    move-object/from16 v15, v40

    move-object/from16 v16, v41

    move-object/from16 v17, v42

    move-object/from16 v18, v43

    move-object/from16 v19, v44

    move-object/from16 v20, v45

    move-object/from16 v21, v46

    move-object/from16 v22, v47

    move-object/from16 v23, v48

    move-object/from16 v24, v49

    move-object/from16 v25, v50

    move-object/from16 v26, v51

    move-object/from16 v27, v52

    move-object/from16 v28, v53

    move-object/from16 v29, v54

    move-object/from16 v30, v55

    invoke-direct/range {v3 .. v30}, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/TextView;Lcom/google/android/material/tabs/TabLayout;)V

    return-object v56

    .line 329
    :cond_0
    goto :goto_0

    .line 323
    .end local v55    # "TabLayout":Lcom/google/android/material/tabs/TabLayout;
    :cond_1
    goto :goto_0

    .line 317
    .end local v54    # "TVEnvVarsEmptyText":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 311
    .end local v53    # "SScreenSize":Landroid/widget/Spinner;
    :cond_3
    goto :goto_0

    .line 305
    .end local v52    # "SGraphicsDriver":Landroid/widget/Spinner;
    :cond_4
    goto :goto_0

    .line 299
    .end local v51    # "SDXWrapper":Landroid/widget/Spinner;
    :cond_5
    goto :goto_0

    .line 293
    .end local v50    # "SDInputMapperType":Landroid/widget/Spinner;
    :cond_6
    goto :goto_0

    .line 287
    .end local v49    # "SControlsProfile":Landroid/widget/Spinner;
    :cond_7
    goto :goto_0

    .line 281
    .end local v48    # "SBox86Preset":Landroid/widget/Spinner;
    :cond_8
    goto :goto_0

    .line 275
    .end local v47    # "SBox64Preset":Landroid/widget/Spinner;
    :cond_9
    goto :goto_0

    .line 269
    .end local v46    # "SAudioDriver":Landroid/widget/Spinner;
    :cond_a
    goto :goto_0

    .line 263
    .end local v45    # "LLTabWinComponents":Landroid/widget/LinearLayout;
    :cond_b
    goto :goto_0

    .line 257
    .end local v44    # "LLTabEnvVars":Landroid/widget/LinearLayout;
    :cond_c
    goto :goto_0

    .line 251
    .end local v43    # "LLTabAdvanced":Landroid/widget/LinearLayout;
    :cond_d
    goto :goto_0

    .line 245
    .end local v42    # "LLEnvVars":Landroid/widget/LinearLayout;
    :cond_e
    goto :goto_0

    .line 239
    .end local v41    # "LLCustomScreenSize":Landroid/widget/LinearLayout;
    :cond_f
    goto :goto_0

    .line 233
    .end local v40    # "LLContent":Landroid/widget/LinearLayout;
    :cond_10
    goto :goto_0

    .line 227
    .end local v39    # "ETScreenWidth":Landroid/widget/EditText;
    :cond_11
    goto :goto_0

    .line 221
    .end local v38    # "ETScreenHeight":Landroid/widget/EditText;
    :cond_12
    goto :goto_0

    .line 215
    .end local v37    # "ETName":Landroid/widget/EditText;
    :cond_13
    goto :goto_0

    .line 209
    .end local v36    # "ETExecArgs":Landroid/widget/EditText;
    :cond_14
    goto :goto_0

    .line 203
    .end local v35    # "CBForceFullscreen":Landroid/widget/CheckBox;
    :cond_15
    goto :goto_0

    .line 197
    .end local v34    # "BTHelpDXWrapper":Landroid/widget/ImageView;
    :cond_16
    goto :goto_0

    .line 191
    .end local v33    # "BTGraphicsDriverConfig":Landroid/widget/ImageButton;
    :cond_17
    goto :goto_0

    .line 185
    .end local v32    # "BTExtraArgsMenu":Landroid/widget/ImageButton;
    :cond_18
    goto :goto_0

    .line 179
    .end local v31    # "BTDXWrapperConfig":Landroid/widget/ImageButton;
    :cond_19
    nop

    .line 339
    .end local v2    # "BTAddEnvVar":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 157
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 163
    sget v0, Lcom/termux/x11/R$layout;->shortcut_settings_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 167
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/termux/x11/databinding/ShortcutSettingsDialogBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method

.class public final Lcom/termux/x11/databinding/ControlElementSettingsBinding;
.super Ljava/lang/Object;
.source "ControlElementSettingsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final CBToggleSwitch:Landroid/widget/CheckBox;

.field public final ETCustomText:Landroid/widget/EditText;

.field public final IPKSelectIcon:Lcom/termux/x11/databinding/BindingIconFieldBinding;

.field public final LLBindings:Landroid/widget/LinearLayout;

.field public final LLCustomTextIcon:Landroid/widget/LinearLayout;

.field public final LLDPadBindings:Landroid/widget/LinearLayout;

.field public final LLIconList:Landroid/widget/LinearLayout;

.field public final LLRangeOptions:Landroid/widget/LinearLayout;

.field public final LLShape:Landroid/widget/LinearLayout;

.field public final NPColumns:Lcom/termux/x11/controller/widget/NumberPicker;

.field public final RBHorizontal:Landroid/widget/RadioButton;

.field public final RBVertical:Landroid/widget/RadioButton;

.field public final RGOrientation:Landroid/widget/RadioGroup;

.field public final SBScale:Landroid/widget/SeekBar;

.field public final SBindingDown:Landroid/widget/Spinner;

.field public final SBindingLeft:Landroid/widget/Spinner;

.field public final SBindingRight:Landroid/widget/Spinner;

.field public final SBindingUp:Landroid/widget/Spinner;

.field public final SRange:Landroid/widget/Spinner;

.field public final SShape:Landroid/widget/Spinner;

.field public final SType:Landroid/widget/Spinner;

.field public final TVScale:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/CheckBox;Landroid/widget/EditText;Lcom/termux/x11/databinding/BindingIconFieldBinding;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/termux/x11/controller/widget/NumberPicker;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/SeekBar;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "CBToggleSwitch"    # Landroid/widget/CheckBox;
    .param p3, "ETCustomText"    # Landroid/widget/EditText;
    .param p4, "IPKSelectIcon"    # Lcom/termux/x11/databinding/BindingIconFieldBinding;
    .param p5, "LLBindings"    # Landroid/widget/LinearLayout;
    .param p6, "LLCustomTextIcon"    # Landroid/widget/LinearLayout;
    .param p7, "LLDPadBindings"    # Landroid/widget/LinearLayout;
    .param p8, "LLIconList"    # Landroid/widget/LinearLayout;
    .param p9, "LLRangeOptions"    # Landroid/widget/LinearLayout;
    .param p10, "LLShape"    # Landroid/widget/LinearLayout;
    .param p11, "NPColumns"    # Lcom/termux/x11/controller/widget/NumberPicker;
    .param p12, "RBHorizontal"    # Landroid/widget/RadioButton;
    .param p13, "RBVertical"    # Landroid/widget/RadioButton;
    .param p14, "RGOrientation"    # Landroid/widget/RadioGroup;
    .param p15, "SBScale"    # Landroid/widget/SeekBar;
    .param p16, "SBindingDown"    # Landroid/widget/Spinner;
    .param p17, "SBindingLeft"    # Landroid/widget/Spinner;
    .param p18, "SBindingRight"    # Landroid/widget/Spinner;
    .param p19, "SBindingUp"    # Landroid/widget/Spinner;
    .param p20, "SRange"    # Landroid/widget/Spinner;
    .param p21, "SShape"    # Landroid/widget/Spinner;
    .param p22, "SType"    # Landroid/widget/Spinner;
    .param p23, "TVScale"    # Landroid/widget/TextView;

    .line 106
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->rootView:Landroid/widget/ScrollView;

    .line 108
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->CBToggleSwitch:Landroid/widget/CheckBox;

    .line 109
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->ETCustomText:Landroid/widget/EditText;

    .line 110
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->IPKSelectIcon:Lcom/termux/x11/databinding/BindingIconFieldBinding;

    .line 111
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->LLBindings:Landroid/widget/LinearLayout;

    .line 112
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->LLCustomTextIcon:Landroid/widget/LinearLayout;

    .line 113
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->LLDPadBindings:Landroid/widget/LinearLayout;

    .line 114
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->LLIconList:Landroid/widget/LinearLayout;

    .line 115
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->LLRangeOptions:Landroid/widget/LinearLayout;

    .line 116
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->LLShape:Landroid/widget/LinearLayout;

    .line 117
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->NPColumns:Lcom/termux/x11/controller/widget/NumberPicker;

    .line 118
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->RBHorizontal:Landroid/widget/RadioButton;

    .line 119
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->RBVertical:Landroid/widget/RadioButton;

    .line 120
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->RGOrientation:Landroid/widget/RadioGroup;

    .line 121
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->SBScale:Landroid/widget/SeekBar;

    .line 122
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->SBindingDown:Landroid/widget/Spinner;

    .line 123
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->SBindingLeft:Landroid/widget/Spinner;

    .line 124
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->SBindingRight:Landroid/widget/Spinner;

    .line 125
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->SBindingUp:Landroid/widget/Spinner;

    .line 126
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->SRange:Landroid/widget/Spinner;

    .line 127
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->SShape:Landroid/widget/Spinner;

    .line 128
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->SType:Landroid/widget/Spinner;

    .line 129
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->TVScale:Landroid/widget/TextView;

    .line 130
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/ControlElementSettingsBinding;
    .locals 50
    .param p0, "rootView"    # Landroid/view/View;

    .line 159
    move-object/from16 v0, p0

    sget v1, Lcom/termux/x11/R$id;->CBToggleSwitch:I

    .line 160
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 161
    .local v2, "CBToggleSwitch":Landroid/widget/CheckBox;
    if-eqz v2, :cond_15

    .line 165
    sget v1, Lcom/termux/x11/R$id;->ETCustomText:I

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/EditText;

    .line 167
    .local v27, "ETCustomText":Landroid/widget/EditText;
    if-eqz v27, :cond_14

    .line 171
    sget v1, Lcom/termux/x11/R$id;->IPKSelectIcon:I

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v28

    .line 173
    .local v28, "IPKSelectIcon":Landroid/view/View;
    if-eqz v28, :cond_13

    .line 176
    invoke-static/range {v28 .. v28}, Lcom/termux/x11/databinding/BindingIconFieldBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/BindingIconFieldBinding;

    move-result-object v29

    .line 178
    .local v29, "binding_IPKSelectIcon":Lcom/termux/x11/databinding/BindingIconFieldBinding;
    sget v1, Lcom/termux/x11/R$id;->LLBindings:I

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Landroid/widget/LinearLayout;

    .line 180
    .local v30, "LLBindings":Landroid/widget/LinearLayout;
    if-eqz v30, :cond_12

    .line 184
    sget v1, Lcom/termux/x11/R$id;->LLCustomTextIcon:I

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/widget/LinearLayout;

    .line 186
    .local v31, "LLCustomTextIcon":Landroid/widget/LinearLayout;
    if-eqz v31, :cond_11

    .line 190
    sget v1, Lcom/termux/x11/R$id;->LLDPadBindings:I

    .line 191
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Landroid/widget/LinearLayout;

    .line 192
    .local v32, "LLDPadBindings":Landroid/widget/LinearLayout;
    if-eqz v32, :cond_10

    .line 196
    sget v1, Lcom/termux/x11/R$id;->LLIconList:I

    .line 197
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v33, v3

    check-cast v33, Landroid/widget/LinearLayout;

    .line 198
    .local v33, "LLIconList":Landroid/widget/LinearLayout;
    if-eqz v33, :cond_f

    .line 202
    sget v1, Lcom/termux/x11/R$id;->LLRangeOptions:I

    .line 203
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v34, v3

    check-cast v34, Landroid/widget/LinearLayout;

    .line 204
    .local v34, "LLRangeOptions":Landroid/widget/LinearLayout;
    if-eqz v34, :cond_e

    .line 208
    sget v1, Lcom/termux/x11/R$id;->LLShape:I

    .line 209
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v35, v3

    check-cast v35, Landroid/widget/LinearLayout;

    .line 210
    .local v35, "LLShape":Landroid/widget/LinearLayout;
    if-eqz v35, :cond_d

    .line 214
    sget v1, Lcom/termux/x11/R$id;->NPColumns:I

    .line 215
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v36, v3

    check-cast v36, Lcom/termux/x11/controller/widget/NumberPicker;

    .line 216
    .local v36, "NPColumns":Lcom/termux/x11/controller/widget/NumberPicker;
    if-eqz v36, :cond_c

    .line 220
    sget v1, Lcom/termux/x11/R$id;->RBHorizontal:I

    .line 221
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v37, v3

    check-cast v37, Landroid/widget/RadioButton;

    .line 222
    .local v37, "RBHorizontal":Landroid/widget/RadioButton;
    if-eqz v37, :cond_b

    .line 226
    sget v1, Lcom/termux/x11/R$id;->RBVertical:I

    .line 227
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v38, v3

    check-cast v38, Landroid/widget/RadioButton;

    .line 228
    .local v38, "RBVertical":Landroid/widget/RadioButton;
    if-eqz v38, :cond_a

    .line 232
    sget v1, Lcom/termux/x11/R$id;->RGOrientation:I

    .line 233
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v39, v3

    check-cast v39, Landroid/widget/RadioGroup;

    .line 234
    .local v39, "RGOrientation":Landroid/widget/RadioGroup;
    if-eqz v39, :cond_9

    .line 238
    sget v1, Lcom/termux/x11/R$id;->SBScale:I

    .line 239
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v40, v3

    check-cast v40, Landroid/widget/SeekBar;

    .line 240
    .local v40, "SBScale":Landroid/widget/SeekBar;
    if-eqz v40, :cond_8

    .line 244
    sget v1, Lcom/termux/x11/R$id;->SBindingDown:I

    .line 245
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v41, v3

    check-cast v41, Landroid/widget/Spinner;

    .line 246
    .local v41, "SBindingDown":Landroid/widget/Spinner;
    if-eqz v41, :cond_7

    .line 250
    sget v1, Lcom/termux/x11/R$id;->SBindingLeft:I

    .line 251
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v42, v3

    check-cast v42, Landroid/widget/Spinner;

    .line 252
    .local v42, "SBindingLeft":Landroid/widget/Spinner;
    if-eqz v42, :cond_6

    .line 256
    sget v1, Lcom/termux/x11/R$id;->SBindingRight:I

    .line 257
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v43, v3

    check-cast v43, Landroid/widget/Spinner;

    .line 258
    .local v43, "SBindingRight":Landroid/widget/Spinner;
    if-eqz v43, :cond_5

    .line 262
    sget v1, Lcom/termux/x11/R$id;->SBindingUp:I

    .line 263
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v44, v3

    check-cast v44, Landroid/widget/Spinner;

    .line 264
    .local v44, "SBindingUp":Landroid/widget/Spinner;
    if-eqz v44, :cond_4

    .line 268
    sget v1, Lcom/termux/x11/R$id;->SRange:I

    .line 269
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v45, v3

    check-cast v45, Landroid/widget/Spinner;

    .line 270
    .local v45, "SRange":Landroid/widget/Spinner;
    if-eqz v45, :cond_3

    .line 274
    sget v1, Lcom/termux/x11/R$id;->SShape:I

    .line 275
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v46, v3

    check-cast v46, Landroid/widget/Spinner;

    .line 276
    .local v46, "SShape":Landroid/widget/Spinner;
    if-eqz v46, :cond_2

    .line 280
    sget v1, Lcom/termux/x11/R$id;->SType:I

    .line 281
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v47, v3

    check-cast v47, Landroid/widget/Spinner;

    .line 282
    .local v47, "SType":Landroid/widget/Spinner;
    if-eqz v47, :cond_1

    .line 286
    sget v1, Lcom/termux/x11/R$id;->TVScale:I

    .line 287
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v48, v3

    check-cast v48, Landroid/widget/TextView;

    .line 288
    .local v48, "TVScale":Landroid/widget/TextView;
    if-eqz v48, :cond_0

    .line 292
    new-instance v49, Lcom/termux/x11/databinding/ControlElementSettingsBinding;

    move-object/from16 v3, v49

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object v5, v2

    move-object/from16 v6, v27

    move-object/from16 v7, v29

    move-object/from16 v8, v30

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    move-object/from16 v12, v34

    move-object/from16 v13, v35

    move-object/from16 v14, v36

    move-object/from16 v15, v37

    move-object/from16 v16, v38

    move-object/from16 v17, v39

    move-object/from16 v18, v40

    move-object/from16 v19, v41

    move-object/from16 v20, v42

    move-object/from16 v21, v43

    move-object/from16 v22, v44

    move-object/from16 v23, v45

    move-object/from16 v24, v46

    move-object/from16 v25, v47

    move-object/from16 v26, v48

    invoke-direct/range {v3 .. v26}, Lcom/termux/x11/databinding/ControlElementSettingsBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/CheckBox;Landroid/widget/EditText;Lcom/termux/x11/databinding/BindingIconFieldBinding;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/termux/x11/controller/widget/NumberPicker;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/SeekBar;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/TextView;)V

    return-object v49

    .line 289
    :cond_0
    goto :goto_0

    .line 283
    .end local v48    # "TVScale":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 277
    .end local v47    # "SType":Landroid/widget/Spinner;
    :cond_2
    goto :goto_0

    .line 271
    .end local v46    # "SShape":Landroid/widget/Spinner;
    :cond_3
    goto :goto_0

    .line 265
    .end local v45    # "SRange":Landroid/widget/Spinner;
    :cond_4
    goto :goto_0

    .line 259
    .end local v44    # "SBindingUp":Landroid/widget/Spinner;
    :cond_5
    goto :goto_0

    .line 253
    .end local v43    # "SBindingRight":Landroid/widget/Spinner;
    :cond_6
    goto :goto_0

    .line 247
    .end local v42    # "SBindingLeft":Landroid/widget/Spinner;
    :cond_7
    goto :goto_0

    .line 241
    .end local v41    # "SBindingDown":Landroid/widget/Spinner;
    :cond_8
    goto :goto_0

    .line 235
    .end local v40    # "SBScale":Landroid/widget/SeekBar;
    :cond_9
    goto :goto_0

    .line 229
    .end local v39    # "RGOrientation":Landroid/widget/RadioGroup;
    :cond_a
    goto :goto_0

    .line 223
    .end local v38    # "RBVertical":Landroid/widget/RadioButton;
    :cond_b
    goto :goto_0

    .line 217
    .end local v37    # "RBHorizontal":Landroid/widget/RadioButton;
    :cond_c
    goto :goto_0

    .line 211
    .end local v36    # "NPColumns":Lcom/termux/x11/controller/widget/NumberPicker;
    :cond_d
    goto :goto_0

    .line 205
    .end local v35    # "LLShape":Landroid/widget/LinearLayout;
    :cond_e
    goto :goto_0

    .line 199
    .end local v34    # "LLRangeOptions":Landroid/widget/LinearLayout;
    :cond_f
    goto :goto_0

    .line 193
    .end local v33    # "LLIconList":Landroid/widget/LinearLayout;
    :cond_10
    goto :goto_0

    .line 187
    .end local v32    # "LLDPadBindings":Landroid/widget/LinearLayout;
    :cond_11
    goto :goto_0

    .line 181
    .end local v31    # "LLCustomTextIcon":Landroid/widget/LinearLayout;
    :cond_12
    goto :goto_0

    .line 174
    .end local v29    # "binding_IPKSelectIcon":Lcom/termux/x11/databinding/BindingIconFieldBinding;
    .end local v30    # "LLBindings":Landroid/widget/LinearLayout;
    :cond_13
    goto :goto_0

    .line 168
    .end local v28    # "IPKSelectIcon":Landroid/view/View;
    :cond_14
    goto :goto_0

    .line 162
    .end local v27    # "ETCustomText":Landroid/widget/EditText;
    :cond_15
    nop

    .line 297
    .end local v2    # "CBToggleSwitch":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/ControlElementSettingsBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 140
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ControlElementSettingsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ControlElementSettingsBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 146
    sget v0, Lcom/termux/x11/R$layout;->control_element_settings:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/ControlElementSettingsBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/termux/x11/databinding/ControlElementSettingsBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method

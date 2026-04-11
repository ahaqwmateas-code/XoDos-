.class public final Lcom/termux/x11/databinding/MainActivityBinding;
.super Ljava/lang/Object;
.source "MainActivityBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final activityTermuxBottomSpaceView:Landroid/view/View;

.field public final buttonLeftClick:Landroid/widget/Button;

.field public final buttonMiddleClick:Landroid/widget/Button;

.field public final buttonRightClick:Landroid/widget/Button;

.field public final buttonVisibility:Landroid/widget/Button;

.field public final displayTerminalToolbarViewPager:Landroidx/viewpager/widget/ViewPager;

.field public final exitButton:Landroid/widget/Button;

.field public final frame:Landroid/widget/FrameLayout;

.field public final idDisplayWindow:Landroid/widget/FrameLayout;

.field public final lorieView:Lcom/termux/x11/LorieView;

.field public final mouseButtonLeftClick:Landroid/widget/Button;

.field public final mouseButtonMiddleClick:Landroid/widget/Button;

.field public final mouseButtonRightClick:Landroid/widget/Button;

.field public final mouseButtons:Landroid/widget/LinearLayout;

.field public final mouseButtonsPosition:Landroid/widget/ImageButton;

.field public final mouseButtonsSecondaryLayer:Landroid/widget/LinearLayout;

.field public final mouseHelperSecondaryLayer:Landroid/widget/LinearLayout;

.field public final mouseHelperVisibility:Landroid/widget/LinearLayout;

.field public final preferencesButton:Landroid/widget/Button;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final stub:Landroid/widget/LinearLayout;

.field public final textView:Landroid/widget/TextView;

.field public final x11Image:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/Button;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/termux/x11/LorieView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "activityTermuxBottomSpaceView"    # Landroid/view/View;
    .param p3, "buttonLeftClick"    # Landroid/widget/Button;
    .param p4, "buttonMiddleClick"    # Landroid/widget/Button;
    .param p5, "buttonRightClick"    # Landroid/widget/Button;
    .param p6, "buttonVisibility"    # Landroid/widget/Button;
    .param p7, "displayTerminalToolbarViewPager"    # Landroidx/viewpager/widget/ViewPager;
    .param p8, "exitButton"    # Landroid/widget/Button;
    .param p9, "frame"    # Landroid/widget/FrameLayout;
    .param p10, "idDisplayWindow"    # Landroid/widget/FrameLayout;
    .param p11, "lorieView"    # Lcom/termux/x11/LorieView;
    .param p12, "mouseButtonLeftClick"    # Landroid/widget/Button;
    .param p13, "mouseButtonMiddleClick"    # Landroid/widget/Button;
    .param p14, "mouseButtonRightClick"    # Landroid/widget/Button;
    .param p15, "mouseButtons"    # Landroid/widget/LinearLayout;
    .param p16, "mouseButtonsPosition"    # Landroid/widget/ImageButton;
    .param p17, "mouseButtonsSecondaryLayer"    # Landroid/widget/LinearLayout;
    .param p18, "mouseHelperSecondaryLayer"    # Landroid/widget/LinearLayout;
    .param p19, "mouseHelperVisibility"    # Landroid/widget/LinearLayout;
    .param p20, "preferencesButton"    # Landroid/widget/Button;
    .param p21, "stub"    # Landroid/widget/LinearLayout;
    .param p22, "textView"    # Landroid/widget/TextView;
    .param p23, "x11Image"    # Landroid/widget/ImageView;

    .line 105
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/termux/x11/databinding/MainActivityBinding;->rootView:Landroid/widget/FrameLayout;

    .line 107
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/termux/x11/databinding/MainActivityBinding;->activityTermuxBottomSpaceView:Landroid/view/View;

    .line 108
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/termux/x11/databinding/MainActivityBinding;->buttonLeftClick:Landroid/widget/Button;

    .line 109
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/termux/x11/databinding/MainActivityBinding;->buttonMiddleClick:Landroid/widget/Button;

    .line 110
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/termux/x11/databinding/MainActivityBinding;->buttonRightClick:Landroid/widget/Button;

    .line 111
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/termux/x11/databinding/MainActivityBinding;->buttonVisibility:Landroid/widget/Button;

    .line 112
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/termux/x11/databinding/MainActivityBinding;->displayTerminalToolbarViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 113
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/termux/x11/databinding/MainActivityBinding;->exitButton:Landroid/widget/Button;

    .line 114
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/termux/x11/databinding/MainActivityBinding;->frame:Landroid/widget/FrameLayout;

    .line 115
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/termux/x11/databinding/MainActivityBinding;->idDisplayWindow:Landroid/widget/FrameLayout;

    .line 116
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/termux/x11/databinding/MainActivityBinding;->lorieView:Lcom/termux/x11/LorieView;

    .line 117
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/termux/x11/databinding/MainActivityBinding;->mouseButtonLeftClick:Landroid/widget/Button;

    .line 118
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/termux/x11/databinding/MainActivityBinding;->mouseButtonMiddleClick:Landroid/widget/Button;

    .line 119
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/termux/x11/databinding/MainActivityBinding;->mouseButtonRightClick:Landroid/widget/Button;

    .line 120
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/termux/x11/databinding/MainActivityBinding;->mouseButtons:Landroid/widget/LinearLayout;

    .line 121
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/termux/x11/databinding/MainActivityBinding;->mouseButtonsPosition:Landroid/widget/ImageButton;

    .line 122
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/termux/x11/databinding/MainActivityBinding;->mouseButtonsSecondaryLayer:Landroid/widget/LinearLayout;

    .line 123
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/termux/x11/databinding/MainActivityBinding;->mouseHelperSecondaryLayer:Landroid/widget/LinearLayout;

    .line 124
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/termux/x11/databinding/MainActivityBinding;->mouseHelperVisibility:Landroid/widget/LinearLayout;

    .line 125
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/termux/x11/databinding/MainActivityBinding;->preferencesButton:Landroid/widget/Button;

    .line 126
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/termux/x11/databinding/MainActivityBinding;->stub:Landroid/widget/LinearLayout;

    .line 127
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/termux/x11/databinding/MainActivityBinding;->textView:Landroid/widget/TextView;

    .line 128
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/termux/x11/databinding/MainActivityBinding;->x11Image:Landroid/widget/ImageView;

    .line 129
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/MainActivityBinding;
    .locals 49
    .param p0, "rootView"    # Landroid/view/View;

    .line 158
    move-object/from16 v0, p0

    sget v1, Lcom/termux/x11/R$id;->activity_termux_bottom_space_view:I

    .line 159
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v26

    .line 160
    .local v26, "activityTermuxBottomSpaceView":Landroid/view/View;
    if-eqz v26, :cond_14

    .line 164
    sget v1, Lcom/termux/x11/R$id;->button_left_click:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/Button;

    .line 166
    .local v27, "buttonLeftClick":Landroid/widget/Button;
    if-eqz v27, :cond_13

    .line 170
    sget v1, Lcom/termux/x11/R$id;->button_middle_click:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/Button;

    .line 172
    .local v28, "buttonMiddleClick":Landroid/widget/Button;
    if-eqz v28, :cond_12

    .line 176
    sget v1, Lcom/termux/x11/R$id;->button_right_click:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/widget/Button;

    .line 178
    .local v29, "buttonRightClick":Landroid/widget/Button;
    if-eqz v29, :cond_11

    .line 182
    sget v1, Lcom/termux/x11/R$id;->button_visibility:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Landroid/widget/Button;

    .line 184
    .local v30, "buttonVisibility":Landroid/widget/Button;
    if-eqz v30, :cond_10

    .line 188
    sget v1, Lcom/termux/x11/R$id;->display_terminal_toolbar_view_pager:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Landroidx/viewpager/widget/ViewPager;

    .line 190
    .local v31, "displayTerminalToolbarViewPager":Landroidx/viewpager/widget/ViewPager;
    if-eqz v31, :cond_f

    .line 194
    sget v1, Lcom/termux/x11/R$id;->exit_button:I

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Landroid/widget/Button;

    .line 196
    .local v32, "exitButton":Landroid/widget/Button;
    if-eqz v32, :cond_e

    .line 200
    sget v1, Lcom/termux/x11/R$id;->frame:I

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Landroid/widget/FrameLayout;

    .line 202
    .local v33, "frame":Landroid/widget/FrameLayout;
    if-eqz v33, :cond_d

    .line 206
    move-object/from16 v34, v0

    check-cast v34, Landroid/widget/FrameLayout;

    .line 208
    .local v34, "idDisplayWindow":Landroid/widget/FrameLayout;
    sget v1, Lcom/termux/x11/R$id;->lorieView:I

    .line 209
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Lcom/termux/x11/LorieView;

    .line 210
    .local v35, "lorieView":Lcom/termux/x11/LorieView;
    if-eqz v35, :cond_c

    .line 214
    sget v1, Lcom/termux/x11/R$id;->mouse_button_left_click:I

    .line 215
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v36, v2

    check-cast v36, Landroid/widget/Button;

    .line 216
    .local v36, "mouseButtonLeftClick":Landroid/widget/Button;
    if-eqz v36, :cond_b

    .line 220
    sget v1, Lcom/termux/x11/R$id;->mouse_button_middle_click:I

    .line 221
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Landroid/widget/Button;

    .line 222
    .local v37, "mouseButtonMiddleClick":Landroid/widget/Button;
    if-eqz v37, :cond_a

    .line 226
    sget v1, Lcom/termux/x11/R$id;->mouse_button_right_click:I

    .line 227
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, Landroid/widget/Button;

    .line 228
    .local v38, "mouseButtonRightClick":Landroid/widget/Button;
    if-eqz v38, :cond_9

    .line 232
    sget v1, Lcom/termux/x11/R$id;->mouse_buttons:I

    .line 233
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Landroid/widget/LinearLayout;

    .line 234
    .local v39, "mouseButtons":Landroid/widget/LinearLayout;
    if-eqz v39, :cond_8

    .line 238
    sget v1, Lcom/termux/x11/R$id;->mouse_buttons_position:I

    .line 239
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v40, v2

    check-cast v40, Landroid/widget/ImageButton;

    .line 240
    .local v40, "mouseButtonsPosition":Landroid/widget/ImageButton;
    if-eqz v40, :cond_7

    .line 244
    sget v1, Lcom/termux/x11/R$id;->mouse_buttons_secondary_layer:I

    .line 245
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v41, v2

    check-cast v41, Landroid/widget/LinearLayout;

    .line 246
    .local v41, "mouseButtonsSecondaryLayer":Landroid/widget/LinearLayout;
    if-eqz v41, :cond_6

    .line 250
    sget v1, Lcom/termux/x11/R$id;->mouse_helper_secondary_layer:I

    .line 251
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v42, v2

    check-cast v42, Landroid/widget/LinearLayout;

    .line 252
    .local v42, "mouseHelperSecondaryLayer":Landroid/widget/LinearLayout;
    if-eqz v42, :cond_5

    .line 256
    sget v1, Lcom/termux/x11/R$id;->mouse_helper_visibility:I

    .line 257
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v43, v2

    check-cast v43, Landroid/widget/LinearLayout;

    .line 258
    .local v43, "mouseHelperVisibility":Landroid/widget/LinearLayout;
    if-eqz v43, :cond_4

    .line 262
    sget v1, Lcom/termux/x11/R$id;->preferences_button:I

    .line 263
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v44, v2

    check-cast v44, Landroid/widget/Button;

    .line 264
    .local v44, "preferencesButton":Landroid/widget/Button;
    if-eqz v44, :cond_3

    .line 268
    sget v1, Lcom/termux/x11/R$id;->stub:I

    .line 269
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v45, v2

    check-cast v45, Landroid/widget/LinearLayout;

    .line 270
    .local v45, "stub":Landroid/widget/LinearLayout;
    if-eqz v45, :cond_2

    .line 274
    sget v1, Lcom/termux/x11/R$id;->textView:I

    .line 275
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v46, v2

    check-cast v46, Landroid/widget/TextView;

    .line 276
    .local v46, "textView":Landroid/widget/TextView;
    if-eqz v46, :cond_1

    .line 280
    sget v1, Lcom/termux/x11/R$id;->x11_image:I

    .line 281
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v47, v2

    check-cast v47, Landroid/widget/ImageView;

    .line 282
    .local v47, "x11Image":Landroid/widget/ImageView;
    if-eqz v47, :cond_0

    .line 286
    new-instance v48, Lcom/termux/x11/databinding/MainActivityBinding;

    move-object/from16 v2, v48

    move-object v3, v0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    move-object/from16 v6, v28

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

    invoke-direct/range {v2 .. v25}, Lcom/termux/x11/databinding/MainActivityBinding;-><init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/Button;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/termux/x11/LorieView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-object v48

    .line 283
    :cond_0
    goto :goto_0

    .line 277
    .end local v47    # "x11Image":Landroid/widget/ImageView;
    :cond_1
    goto :goto_0

    .line 271
    .end local v46    # "textView":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 265
    .end local v45    # "stub":Landroid/widget/LinearLayout;
    :cond_3
    goto :goto_0

    .line 259
    .end local v44    # "preferencesButton":Landroid/widget/Button;
    :cond_4
    goto :goto_0

    .line 253
    .end local v43    # "mouseHelperVisibility":Landroid/widget/LinearLayout;
    :cond_5
    goto :goto_0

    .line 247
    .end local v42    # "mouseHelperSecondaryLayer":Landroid/widget/LinearLayout;
    :cond_6
    goto :goto_0

    .line 241
    .end local v41    # "mouseButtonsSecondaryLayer":Landroid/widget/LinearLayout;
    :cond_7
    goto :goto_0

    .line 235
    .end local v40    # "mouseButtonsPosition":Landroid/widget/ImageButton;
    :cond_8
    goto :goto_0

    .line 229
    .end local v39    # "mouseButtons":Landroid/widget/LinearLayout;
    :cond_9
    goto :goto_0

    .line 223
    .end local v38    # "mouseButtonRightClick":Landroid/widget/Button;
    :cond_a
    goto :goto_0

    .line 217
    .end local v37    # "mouseButtonMiddleClick":Landroid/widget/Button;
    :cond_b
    goto :goto_0

    .line 211
    .end local v36    # "mouseButtonLeftClick":Landroid/widget/Button;
    :cond_c
    goto :goto_0

    .line 203
    .end local v34    # "idDisplayWindow":Landroid/widget/FrameLayout;
    .end local v35    # "lorieView":Lcom/termux/x11/LorieView;
    :cond_d
    goto :goto_0

    .line 197
    .end local v33    # "frame":Landroid/widget/FrameLayout;
    :cond_e
    goto :goto_0

    .line 191
    .end local v32    # "exitButton":Landroid/widget/Button;
    :cond_f
    goto :goto_0

    .line 185
    .end local v31    # "displayTerminalToolbarViewPager":Landroidx/viewpager/widget/ViewPager;
    :cond_10
    goto :goto_0

    .line 179
    .end local v30    # "buttonVisibility":Landroid/widget/Button;
    :cond_11
    goto :goto_0

    .line 173
    .end local v29    # "buttonRightClick":Landroid/widget/Button;
    :cond_12
    goto :goto_0

    .line 167
    .end local v28    # "buttonMiddleClick":Landroid/widget/Button;
    :cond_13
    goto :goto_0

    .line 161
    .end local v27    # "buttonLeftClick":Landroid/widget/Button;
    :cond_14
    nop

    .line 293
    .end local v26    # "activityTermuxBottomSpaceView":Landroid/view/View;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/MainActivityBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/MainActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/MainActivityBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/MainActivityBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 145
    sget v0, Lcom/termux/x11/R$layout;->main_activity:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/MainActivityBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/MainActivityBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/termux/x11/databinding/MainActivityBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/termux/x11/databinding/MainActivityBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

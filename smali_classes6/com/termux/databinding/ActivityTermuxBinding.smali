.class public final Lcom/termux/databinding/ActivityTermuxBinding;
.super Ljava/lang/Object;
.source "ActivityTermuxBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final activityTermuxBottomSpaceView:Landroid/view/View;

.field public final activityTermuxRootRelativeLayout:Landroid/widget/RelativeLayout;

.field public final activityTermuxRootView:Lcom/termux/app/terminal/TermuxActivityRootView;

.field public final backupButton:Landroid/widget/ImageButton;

.field public final drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field public final leftDrawer:Landroid/widget/LinearLayout;

.field public final newSessionButton:Lcom/google/android/material/button/MaterialButton;

.field public final recoverButton:Landroid/widget/ImageButton;

.field private final rootView:Lcom/termux/app/terminal/TermuxActivityRootView;

.field public final settingsButton:Landroid/widget/ImageButton;

.field public final terminalSessionsList:Landroid/widget/ListView;

.field public final terminalToolbarViewPager:Landroidx/viewpager/widget/ViewPager;

.field public final terminalView:Lcom/termux/view/TerminalView;

.field public final toggleKeyboardButton:Lcom/google/android/material/button/MaterialButton;

.field public final toggleToolBox:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method private constructor <init>(Lcom/termux/app/terminal/TermuxActivityRootView;Landroid/view/View;Landroid/widget/RelativeLayout;Lcom/termux/app/terminal/TermuxActivityRootView;Landroid/widget/ImageButton;Landroidx/drawerlayout/widget/DrawerLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ListView;Landroidx/viewpager/widget/ViewPager;Lcom/termux/view/TerminalView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0
    .param p1, "rootView"    # Lcom/termux/app/terminal/TermuxActivityRootView;
    .param p2, "activityTermuxBottomSpaceView"    # Landroid/view/View;
    .param p3, "activityTermuxRootRelativeLayout"    # Landroid/widget/RelativeLayout;
    .param p4, "activityTermuxRootView"    # Lcom/termux/app/terminal/TermuxActivityRootView;
    .param p5, "backupButton"    # Landroid/widget/ImageButton;
    .param p6, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p7, "leftDrawer"    # Landroid/widget/LinearLayout;
    .param p8, "newSessionButton"    # Lcom/google/android/material/button/MaterialButton;
    .param p9, "recoverButton"    # Landroid/widget/ImageButton;
    .param p10, "settingsButton"    # Landroid/widget/ImageButton;
    .param p11, "terminalSessionsList"    # Landroid/widget/ListView;
    .param p12, "terminalToolbarViewPager"    # Landroidx/viewpager/widget/ViewPager;
    .param p13, "terminalView"    # Lcom/termux/view/TerminalView;
    .param p14, "toggleKeyboardButton"    # Lcom/google/android/material/button/MaterialButton;
    .param p15, "toggleToolBox"    # Lcom/google/android/material/button/MaterialButton;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/termux/databinding/ActivityTermuxBinding;->rootView:Lcom/termux/app/terminal/TermuxActivityRootView;

    .line 81
    iput-object p2, p0, Lcom/termux/databinding/ActivityTermuxBinding;->activityTermuxBottomSpaceView:Landroid/view/View;

    .line 82
    iput-object p3, p0, Lcom/termux/databinding/ActivityTermuxBinding;->activityTermuxRootRelativeLayout:Landroid/widget/RelativeLayout;

    .line 83
    iput-object p4, p0, Lcom/termux/databinding/ActivityTermuxBinding;->activityTermuxRootView:Lcom/termux/app/terminal/TermuxActivityRootView;

    .line 84
    iput-object p5, p0, Lcom/termux/databinding/ActivityTermuxBinding;->backupButton:Landroid/widget/ImageButton;

    .line 85
    iput-object p6, p0, Lcom/termux/databinding/ActivityTermuxBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 86
    iput-object p7, p0, Lcom/termux/databinding/ActivityTermuxBinding;->leftDrawer:Landroid/widget/LinearLayout;

    .line 87
    iput-object p8, p0, Lcom/termux/databinding/ActivityTermuxBinding;->newSessionButton:Lcom/google/android/material/button/MaterialButton;

    .line 88
    iput-object p9, p0, Lcom/termux/databinding/ActivityTermuxBinding;->recoverButton:Landroid/widget/ImageButton;

    .line 89
    iput-object p10, p0, Lcom/termux/databinding/ActivityTermuxBinding;->settingsButton:Landroid/widget/ImageButton;

    .line 90
    iput-object p11, p0, Lcom/termux/databinding/ActivityTermuxBinding;->terminalSessionsList:Landroid/widget/ListView;

    .line 91
    iput-object p12, p0, Lcom/termux/databinding/ActivityTermuxBinding;->terminalToolbarViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 92
    iput-object p13, p0, Lcom/termux/databinding/ActivityTermuxBinding;->terminalView:Lcom/termux/view/TerminalView;

    .line 93
    iput-object p14, p0, Lcom/termux/databinding/ActivityTermuxBinding;->toggleKeyboardButton:Lcom/google/android/material/button/MaterialButton;

    .line 94
    iput-object p15, p0, Lcom/termux/databinding/ActivityTermuxBinding;->toggleToolBox:Lcom/google/android/material/button/MaterialButton;

    .line 95
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/databinding/ActivityTermuxBinding;
    .locals 33
    .param p0, "rootView"    # Landroid/view/View;

    .line 124
    move-object/from16 v0, p0

    const v1, 0x7f0900ff

    .line 125
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    .line 126
    .local v18, "activityTermuxBottomSpaceView":Landroid/view/View;
    if-eqz v18, :cond_c

    .line 130
    const v1, 0x7f090100

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 132
    .local v19, "activityTermuxRootRelativeLayout":Landroid/widget/RelativeLayout;
    if-eqz v19, :cond_b

    .line 136
    move-object/from16 v20, v0

    check-cast v20, Lcom/termux/app/terminal/TermuxActivityRootView;

    .line 138
    .local v20, "activityTermuxRootView":Lcom/termux/app/terminal/TermuxActivityRootView;
    const v1, 0x7f090115

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/ImageButton;

    .line 140
    .local v21, "backupButton":Landroid/widget/ImageButton;
    if-eqz v21, :cond_a

    .line 144
    const v1, 0x7f090181

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 146
    .local v22, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    if-eqz v22, :cond_9

    .line 150
    const v1, 0x7f0901e0

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/LinearLayout;

    .line 152
    .local v23, "leftDrawer":Landroid/widget/LinearLayout;
    if-eqz v23, :cond_8

    .line 156
    const v1, 0x7f09024d

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Lcom/google/android/material/button/MaterialButton;

    .line 158
    .local v24, "newSessionButton":Lcom/google/android/material/button/MaterialButton;
    if-eqz v24, :cond_7

    .line 162
    const v1, 0x7f090283

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/ImageButton;

    .line 164
    .local v25, "recoverButton":Landroid/widget/ImageButton;
    if-eqz v25, :cond_6

    .line 168
    const v1, 0x7f0902ac

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/ImageButton;

    .line 170
    .local v26, "settingsButton":Landroid/widget/ImageButton;
    if-eqz v26, :cond_5

    .line 174
    const v1, 0x7f0902e9

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/ListView;

    .line 176
    .local v27, "terminalSessionsList":Landroid/widget/ListView;
    if-eqz v27, :cond_4

    .line 180
    const v1, 0x7f0902ec

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroidx/viewpager/widget/ViewPager;

    .line 182
    .local v28, "terminalToolbarViewPager":Landroidx/viewpager/widget/ViewPager;
    if-eqz v28, :cond_3

    .line 186
    const v1, 0x7f0902ed

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Lcom/termux/view/TerminalView;

    .line 188
    .local v29, "terminalView":Lcom/termux/view/TerminalView;
    if-eqz v29, :cond_2

    .line 192
    const v1, 0x7f090311

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Lcom/google/android/material/button/MaterialButton;

    .line 194
    .local v30, "toggleKeyboardButton":Lcom/google/android/material/button/MaterialButton;
    if-eqz v30, :cond_1

    .line 198
    const v1, 0x7f090312

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Lcom/google/android/material/button/MaterialButton;

    .line 200
    .local v31, "toggleToolBox":Lcom/google/android/material/button/MaterialButton;
    if-eqz v31, :cond_0

    .line 204
    new-instance v32, Lcom/termux/databinding/ActivityTermuxBinding;

    move-object v3, v0

    check-cast v3, Lcom/termux/app/terminal/TermuxActivityRootView;

    move-object/from16 v2, v32

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    move-object/from16 v15, v29

    move-object/from16 v16, v30

    move-object/from16 v17, v31

    invoke-direct/range {v2 .. v17}, Lcom/termux/databinding/ActivityTermuxBinding;-><init>(Lcom/termux/app/terminal/TermuxActivityRootView;Landroid/view/View;Landroid/widget/RelativeLayout;Lcom/termux/app/terminal/TermuxActivityRootView;Landroid/widget/ImageButton;Landroidx/drawerlayout/widget/DrawerLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ListView;Landroidx/viewpager/widget/ViewPager;Lcom/termux/view/TerminalView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;)V

    return-object v32

    .line 201
    :cond_0
    goto :goto_0

    .line 195
    .end local v31    # "toggleToolBox":Lcom/google/android/material/button/MaterialButton;
    :cond_1
    goto :goto_0

    .line 189
    .end local v30    # "toggleKeyboardButton":Lcom/google/android/material/button/MaterialButton;
    :cond_2
    goto :goto_0

    .line 183
    .end local v29    # "terminalView":Lcom/termux/view/TerminalView;
    :cond_3
    goto :goto_0

    .line 177
    .end local v28    # "terminalToolbarViewPager":Landroidx/viewpager/widget/ViewPager;
    :cond_4
    goto :goto_0

    .line 171
    .end local v27    # "terminalSessionsList":Landroid/widget/ListView;
    :cond_5
    goto :goto_0

    .line 165
    .end local v26    # "settingsButton":Landroid/widget/ImageButton;
    :cond_6
    goto :goto_0

    .line 159
    .end local v25    # "recoverButton":Landroid/widget/ImageButton;
    :cond_7
    goto :goto_0

    .line 153
    .end local v24    # "newSessionButton":Lcom/google/android/material/button/MaterialButton;
    :cond_8
    goto :goto_0

    .line 147
    .end local v23    # "leftDrawer":Landroid/widget/LinearLayout;
    :cond_9
    goto :goto_0

    .line 141
    .end local v22    # "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    :cond_a
    goto :goto_0

    .line 133
    .end local v20    # "activityTermuxRootView":Lcom/termux/app/terminal/TermuxActivityRootView;
    .end local v21    # "backupButton":Landroid/widget/ImageButton;
    :cond_b
    goto :goto_0

    .line 127
    .end local v19    # "activityTermuxRootRelativeLayout":Landroid/widget/RelativeLayout;
    :cond_c
    nop

    .line 210
    .end local v18    # "activityTermuxBottomSpaceView":Landroid/view/View;
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/databinding/ActivityTermuxBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/databinding/ActivityTermuxBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/databinding/ActivityTermuxBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/databinding/ActivityTermuxBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 111
    const v0, 0x7f0c0020

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    :cond_0
    invoke-static {v0}, Lcom/termux/databinding/ActivityTermuxBinding;->bind(Landroid/view/View;)Lcom/termux/databinding/ActivityTermuxBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/termux/databinding/ActivityTermuxBinding;->getRoot()Lcom/termux/app/terminal/TermuxActivityRootView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/termux/app/terminal/TermuxActivityRootView;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/termux/databinding/ActivityTermuxBinding;->rootView:Lcom/termux/app/terminal/TermuxActivityRootView;

    return-object v0
.end method

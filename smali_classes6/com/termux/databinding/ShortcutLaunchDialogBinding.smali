.class public final Lcom/termux/databinding/ShortcutLaunchDialogBinding;
.super Ljava/lang/Object;
.source "ShortcutLaunchDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonLaunch:Landroid/widget/Button;

.field public final editExeName:Landroid/widget/EditText;

.field public final editExePath:Landroid/widget/EditText;

.field public final layoutRoot:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final shortcutList:Landroid/widget/ListView;

.field public final wineSpinner:Landroid/widget/Spinner;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/ListView;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "buttonLaunch"    # Landroid/widget/Button;
    .param p3, "editExeName"    # Landroid/widget/EditText;
    .param p4, "editExePath"    # Landroid/widget/EditText;
    .param p5, "layoutRoot"    # Landroid/widget/LinearLayout;
    .param p6, "shortcutList"    # Landroid/widget/ListView;
    .param p7, "wineSpinner"    # Landroid/widget/Spinner;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/termux/databinding/ShortcutLaunchDialogBinding;->rootView:Landroid/widget/LinearLayout;

    .line 48
    iput-object p2, p0, Lcom/termux/databinding/ShortcutLaunchDialogBinding;->buttonLaunch:Landroid/widget/Button;

    .line 49
    iput-object p3, p0, Lcom/termux/databinding/ShortcutLaunchDialogBinding;->editExeName:Landroid/widget/EditText;

    .line 50
    iput-object p4, p0, Lcom/termux/databinding/ShortcutLaunchDialogBinding;->editExePath:Landroid/widget/EditText;

    .line 51
    iput-object p5, p0, Lcom/termux/databinding/ShortcutLaunchDialogBinding;->layoutRoot:Landroid/widget/LinearLayout;

    .line 52
    iput-object p6, p0, Lcom/termux/databinding/ShortcutLaunchDialogBinding;->shortcutList:Landroid/widget/ListView;

    .line 53
    iput-object p7, p0, Lcom/termux/databinding/ShortcutLaunchDialogBinding;->wineSpinner:Landroid/widget/Spinner;

    .line 54
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/databinding/ShortcutLaunchDialogBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 83
    move-object/from16 v0, p0

    const v1, 0x7f090123

    .line 84
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 85
    .local v2, "buttonLaunch":Landroid/widget/Button;
    if-eqz v2, :cond_4

    .line 89
    const v1, 0x7f09018a

    .line 90
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/EditText;

    .line 91
    .local v11, "editExeName":Landroid/widget/EditText;
    if-eqz v11, :cond_3

    .line 95
    const v1, 0x7f09018b

    .line 96
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/EditText;

    .line 97
    .local v12, "editExePath":Landroid/widget/EditText;
    if-eqz v12, :cond_2

    .line 101
    move-object v13, v0

    check-cast v13, Landroid/widget/LinearLayout;

    .line 103
    .local v13, "layoutRoot":Landroid/widget/LinearLayout;
    const v1, 0x7f0902b1

    .line 104
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/ListView;

    .line 105
    .local v14, "shortcutList":Landroid/widget/ListView;
    if-eqz v14, :cond_1

    .line 109
    const v1, 0x7f090339

    .line 110
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/Spinner;

    .line 111
    .local v15, "wineSpinner":Landroid/widget/Spinner;
    if-eqz v15, :cond_0

    .line 115
    new-instance v16, Lcom/termux/databinding/ShortcutLaunchDialogBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lcom/termux/databinding/ShortcutLaunchDialogBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/ListView;Landroid/widget/Spinner;)V

    return-object v16

    .line 112
    :cond_0
    goto :goto_0

    .line 106
    .end local v15    # "wineSpinner":Landroid/widget/Spinner;
    :cond_1
    goto :goto_0

    .line 98
    .end local v13    # "layoutRoot":Landroid/widget/LinearLayout;
    .end local v14    # "shortcutList":Landroid/widget/ListView;
    :cond_2
    goto :goto_0

    .line 92
    .end local v12    # "editExePath":Landroid/widget/EditText;
    :cond_3
    goto :goto_0

    .line 86
    .end local v11    # "editExeName":Landroid/widget/EditText;
    :cond_4
    nop

    .line 118
    .end local v2    # "buttonLaunch":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/databinding/ShortcutLaunchDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/databinding/ShortcutLaunchDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/databinding/ShortcutLaunchDialogBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/databinding/ShortcutLaunchDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 70
    const v0, 0x7f0c00cb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {v0}, Lcom/termux/databinding/ShortcutLaunchDialogBinding;->bind(Landroid/view/View;)Lcom/termux/databinding/ShortcutLaunchDialogBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/termux/databinding/ShortcutLaunchDialogBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/termux/databinding/ShortcutLaunchDialogBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

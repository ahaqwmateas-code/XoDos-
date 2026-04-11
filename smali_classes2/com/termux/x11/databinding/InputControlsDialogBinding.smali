.class public final Lcom/termux/x11/databinding/InputControlsDialogBinding;
.super Ljava/lang/Object;
.source "InputControlsDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final BTSettings:Landroid/widget/ImageView;

.field public final CBLockCursor:Landroid/widget/CheckBox;

.field public final CBShowTouchscreenControls:Landroid/widget/CheckBox;

.field public final CBTouchScreen:Landroid/widget/CheckBox;

.field public final SProfile:Landroid/widget/Spinner;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "BTSettings"    # Landroid/widget/ImageView;
    .param p3, "CBLockCursor"    # Landroid/widget/CheckBox;
    .param p4, "CBShowTouchscreenControls"    # Landroid/widget/CheckBox;
    .param p5, "CBTouchScreen"    # Landroid/widget/CheckBox;
    .param p6, "SProfile"    # Landroid/widget/Spinner;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/termux/x11/databinding/InputControlsDialogBinding;->rootView:Landroid/widget/LinearLayout;

    .line 43
    iput-object p2, p0, Lcom/termux/x11/databinding/InputControlsDialogBinding;->BTSettings:Landroid/widget/ImageView;

    .line 44
    iput-object p3, p0, Lcom/termux/x11/databinding/InputControlsDialogBinding;->CBLockCursor:Landroid/widget/CheckBox;

    .line 45
    iput-object p4, p0, Lcom/termux/x11/databinding/InputControlsDialogBinding;->CBShowTouchscreenControls:Landroid/widget/CheckBox;

    .line 46
    iput-object p5, p0, Lcom/termux/x11/databinding/InputControlsDialogBinding;->CBTouchScreen:Landroid/widget/CheckBox;

    .line 47
    iput-object p6, p0, Lcom/termux/x11/databinding/InputControlsDialogBinding;->SProfile:Landroid/widget/Spinner;

    .line 48
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/InputControlsDialogBinding;
    .locals 14
    .param p0, "rootView"    # Landroid/view/View;

    .line 77
    sget v0, Lcom/termux/x11/R$id;->BTSettings:I

    .line 78
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 79
    .local v1, "BTSettings":Landroid/widget/ImageView;
    if-eqz v1, :cond_4

    .line 83
    sget v0, Lcom/termux/x11/R$id;->CBLockCursor:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/CheckBox;

    .line 85
    .local v9, "CBLockCursor":Landroid/widget/CheckBox;
    if-eqz v9, :cond_3

    .line 89
    sget v0, Lcom/termux/x11/R$id;->CBShowTouchscreenControls:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/CheckBox;

    .line 91
    .local v10, "CBShowTouchscreenControls":Landroid/widget/CheckBox;
    if-eqz v10, :cond_2

    .line 95
    sget v0, Lcom/termux/x11/R$id;->CBTouchScreen:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/CheckBox;

    .line 97
    .local v11, "CBTouchScreen":Landroid/widget/CheckBox;
    if-eqz v11, :cond_1

    .line 101
    sget v0, Lcom/termux/x11/R$id;->SProfile:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/Spinner;

    .line 103
    .local v12, "SProfile":Landroid/widget/Spinner;
    if-eqz v12, :cond_0

    .line 107
    new-instance v13, Lcom/termux/x11/databinding/InputControlsDialogBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v13

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/termux/x11/databinding/InputControlsDialogBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;)V

    return-object v13

    .line 104
    :cond_0
    goto :goto_0

    .line 98
    .end local v12    # "SProfile":Landroid/widget/Spinner;
    :cond_1
    goto :goto_0

    .line 92
    .end local v11    # "CBTouchScreen":Landroid/widget/CheckBox;
    :cond_2
    goto :goto_0

    .line 86
    .end local v10    # "CBShowTouchscreenControls":Landroid/widget/CheckBox;
    :cond_3
    goto :goto_0

    .line 80
    .end local v9    # "CBLockCursor":Landroid/widget/CheckBox;
    :cond_4
    nop

    .line 110
    .end local v1    # "BTSettings":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/InputControlsDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/InputControlsDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/InputControlsDialogBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/InputControlsDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 64
    sget v0, Lcom/termux/x11/R$layout;->input_controls_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/InputControlsDialogBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/InputControlsDialogBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/termux/x11/databinding/InputControlsDialogBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/termux/x11/databinding/InputControlsDialogBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

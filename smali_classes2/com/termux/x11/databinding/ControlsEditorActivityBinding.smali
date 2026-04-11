.class public final Lcom/termux/x11/databinding/ControlsEditorActivityBinding;
.super Ljava/lang/Object;
.source "ControlsEditorActivityBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final BTAddElement:Landroid/widget/ImageButton;

.field public final BTElementSettings:Landroid/widget/ImageButton;

.field public final BTRemoveElement:Landroid/widget/ImageButton;

.field public final FLContainer:Landroid/widget/FrameLayout;

.field public final TVProfileName:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "BTAddElement"    # Landroid/widget/ImageButton;
    .param p3, "BTElementSettings"    # Landroid/widget/ImageButton;
    .param p4, "BTRemoveElement"    # Landroid/widget/ImageButton;
    .param p5, "FLContainer"    # Landroid/widget/FrameLayout;
    .param p6, "TVProfileName"    # Landroid/widget/TextView;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/termux/x11/databinding/ControlsEditorActivityBinding;->rootView:Landroid/widget/FrameLayout;

    .line 43
    iput-object p2, p0, Lcom/termux/x11/databinding/ControlsEditorActivityBinding;->BTAddElement:Landroid/widget/ImageButton;

    .line 44
    iput-object p3, p0, Lcom/termux/x11/databinding/ControlsEditorActivityBinding;->BTElementSettings:Landroid/widget/ImageButton;

    .line 45
    iput-object p4, p0, Lcom/termux/x11/databinding/ControlsEditorActivityBinding;->BTRemoveElement:Landroid/widget/ImageButton;

    .line 46
    iput-object p5, p0, Lcom/termux/x11/databinding/ControlsEditorActivityBinding;->FLContainer:Landroid/widget/FrameLayout;

    .line 47
    iput-object p6, p0, Lcom/termux/x11/databinding/ControlsEditorActivityBinding;->TVProfileName:Landroid/widget/TextView;

    .line 48
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/ControlsEditorActivityBinding;
    .locals 14
    .param p0, "rootView"    # Landroid/view/View;

    .line 77
    sget v0, Lcom/termux/x11/R$id;->BTAddElement:I

    .line 78
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 79
    .local v1, "BTAddElement":Landroid/widget/ImageButton;
    if-eqz v1, :cond_3

    .line 83
    sget v0, Lcom/termux/x11/R$id;->BTElementSettings:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageButton;

    .line 85
    .local v9, "BTElementSettings":Landroid/widget/ImageButton;
    if-eqz v9, :cond_2

    .line 89
    sget v0, Lcom/termux/x11/R$id;->BTRemoveElement:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageButton;

    .line 91
    .local v10, "BTRemoveElement":Landroid/widget/ImageButton;
    if-eqz v10, :cond_1

    .line 95
    move-object v11, p0

    check-cast v11, Landroid/widget/FrameLayout;

    .line 97
    .local v11, "FLContainer":Landroid/widget/FrameLayout;
    sget v0, Lcom/termux/x11/R$id;->TVProfileName:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    .line 99
    .local v12, "TVProfileName":Landroid/widget/TextView;
    if-eqz v12, :cond_0

    .line 103
    new-instance v13, Lcom/termux/x11/databinding/ControlsEditorActivityBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v13

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/termux/x11/databinding/ControlsEditorActivityBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    return-object v13

    .line 100
    :cond_0
    goto :goto_0

    .line 92
    .end local v11    # "FLContainer":Landroid/widget/FrameLayout;
    .end local v12    # "TVProfileName":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 86
    .end local v10    # "BTRemoveElement":Landroid/widget/ImageButton;
    :cond_2
    goto :goto_0

    .line 80
    .end local v9    # "BTElementSettings":Landroid/widget/ImageButton;
    :cond_3
    nop

    .line 106
    .end local v1    # "BTAddElement":Landroid/widget/ImageButton;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/ControlsEditorActivityBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/ControlsEditorActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ControlsEditorActivityBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ControlsEditorActivityBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 64
    sget v0, Lcom/termux/x11/R$layout;->controls_editor_activity:I

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
    invoke-static {v0}, Lcom/termux/x11/databinding/ControlsEditorActivityBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/ControlsEditorActivityBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/termux/x11/databinding/ControlsEditorActivityBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/termux/x11/databinding/ControlsEditorActivityBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

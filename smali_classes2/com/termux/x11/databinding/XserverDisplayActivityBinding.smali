.class public final Lcom/termux/x11/databinding/XserverDisplayActivityBinding;
.super Ljava/lang/Object;
.source "XserverDisplayActivityBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final DrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field public final FLXServerDisplay:Landroid/widget/FrameLayout;

.field public final NavigationView:Lcom/google/android/material/navigation/NavigationView;

.field public final XRTextInput:Landroid/widget/EditText;

.field private final rootView:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method private constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/drawerlayout/widget/DrawerLayout;Landroid/widget/FrameLayout;Lcom/google/android/material/navigation/NavigationView;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p2, "DrawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p3, "FLXServerDisplay"    # Landroid/widget/FrameLayout;
    .param p4, "NavigationView"    # Lcom/google/android/material/navigation/NavigationView;
    .param p5, "XRTextInput"    # Landroid/widget/EditText;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/termux/x11/databinding/XserverDisplayActivityBinding;->rootView:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 40
    iput-object p2, p0, Lcom/termux/x11/databinding/XserverDisplayActivityBinding;->DrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 41
    iput-object p3, p0, Lcom/termux/x11/databinding/XserverDisplayActivityBinding;->FLXServerDisplay:Landroid/widget/FrameLayout;

    .line 42
    iput-object p4, p0, Lcom/termux/x11/databinding/XserverDisplayActivityBinding;->NavigationView:Lcom/google/android/material/navigation/NavigationView;

    .line 43
    iput-object p5, p0, Lcom/termux/x11/databinding/XserverDisplayActivityBinding;->XRTextInput:Landroid/widget/EditText;

    .line 44
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/XserverDisplayActivityBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 73
    move-object v6, p0

    check-cast v6, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 75
    .local v6, "DrawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    sget v0, Lcom/termux/x11/R$id;->FLXServerDisplay:I

    .line 76
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/FrameLayout;

    .line 77
    .local v7, "FLXServerDisplay":Landroid/widget/FrameLayout;
    if-eqz v7, :cond_2

    .line 81
    sget v0, Lcom/termux/x11/R$id;->NavigationView:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/navigation/NavigationView;

    .line 83
    .local v8, "NavigationView":Lcom/google/android/material/navigation/NavigationView;
    if-eqz v8, :cond_1

    .line 87
    sget v9, Lcom/termux/x11/R$id;->XRTextInput:I

    .line 88
    .end local v0    # "id":I
    .local v9, "id":I
    invoke-static {p0, v9}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/EditText;

    .line 89
    .local v10, "XRTextInput":Landroid/widget/EditText;
    if-eqz v10, :cond_0

    .line 93
    new-instance v11, Lcom/termux/x11/databinding/XserverDisplayActivityBinding;

    move-object v1, p0

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v0, v11

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/termux/x11/databinding/XserverDisplayActivityBinding;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/drawerlayout/widget/DrawerLayout;Landroid/widget/FrameLayout;Lcom/google/android/material/navigation/NavigationView;Landroid/widget/EditText;)V

    return-object v11

    .line 90
    :cond_0
    move v0, v9

    goto :goto_0

    .line 84
    .end local v9    # "id":I
    .end local v10    # "XRTextInput":Landroid/widget/EditText;
    .restart local v0    # "id":I
    :cond_1
    goto :goto_0

    .line 78
    .end local v8    # "NavigationView":Lcom/google/android/material/navigation/NavigationView;
    :cond_2
    nop

    .line 96
    .end local v6    # "DrawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    .end local v7    # "FLXServerDisplay":Landroid/widget/FrameLayout;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/XserverDisplayActivityBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/XserverDisplayActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/XserverDisplayActivityBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/XserverDisplayActivityBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 60
    sget v0, Lcom/termux/x11/R$layout;->xserver_display_activity:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/XserverDisplayActivityBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/XserverDisplayActivityBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/termux/x11/databinding/XserverDisplayActivityBinding;->getRoot()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/termux/x11/databinding/XserverDisplayActivityBinding;->rootView:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object v0
.end method

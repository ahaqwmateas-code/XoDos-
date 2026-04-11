.class public Lcom/termux/x11/controller/InputControllerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "InputControllerActivity.java"


# static fields
.field public static final EDIT_INPUT_CONTROLS_REQUEST_CODE:I = 0x67

.field public static final OPEN_DIRECTORY_REQUEST_CODE:B = 0x4t

.field public static final OPEN_FILE_REQUEST_CODE:B = 0x2t

.field public static final PERMISSION_WRITE_EXTERNAL_STORAGE_REQUEST_CODE:B = 0x1t


# instance fields
.field private editInputControls:Z

.field private openFileCallback:Lcom/termux/x11/controller/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/termux/x11/controller/core/Callback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:I

.field public final preloaderDialog:Lcom/termux/x11/controller/core/PreloaderDialog;

.field private selectedProfileId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 22
    new-instance v0, Lcom/termux/x11/controller/core/PreloaderDialog;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/termux/x11/controller/InputControllerActivity;->preloaderDialog:Lcom/termux/x11/controller/core/PreloaderDialog;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/controller/InputControllerActivity;->editInputControls:Z

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/termux/x11/controller/InputControllerActivity;->orientation:I

    return-void
.end method

.method private initFragment()Z
    .locals 4

    .line 45
    invoke-virtual {p0}, Lcom/termux/x11/controller/InputControllerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 46
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 47
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 49
    :cond_0
    new-instance v1, Lcom/termux/x11/controller/InputControlsFragment;

    iget v3, p0, Lcom/termux/x11/controller/InputControllerActivity;->selectedProfileId:I

    invoke-direct {v1, v3}, Lcom/termux/x11/controller/InputControlsFragment;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/termux/x11/controller/InputControllerActivity;->show(Landroidx/fragment/app/Fragment;)V

    .line 50
    return v2
.end method

.method private show(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 53
    invoke-virtual {p0}, Lcom/termux/x11/controller/InputControllerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/termux/x11/R$id;->container:I

    .line 54
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 56
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lcom/termux/x11/R$layout;->activity_input_controller:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/InputControllerActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/termux/x11/controller/InputControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "set_orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/termux/x11/controller/InputControllerActivity;->orientation:I

    .line 33
    const-string v1, "edit_input_controls"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/termux/x11/controller/InputControllerActivity;->editInputControls:Z

    .line 34
    iget-boolean v1, p0, Lcom/termux/x11/controller/InputControllerActivity;->editInputControls:Z

    if-eqz v1, :cond_0

    .line 35
    const-string v1, "selected_profile_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/termux/x11/controller/InputControllerActivity;->selectedProfileId:I

    goto :goto_0

    .line 37
    :cond_0
    const-string v1, "selected_menu_item_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 38
    .local v1, "selectedMenuItemId":I
    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    sget v2, Lcom/termux/x11/R$id;->main_menu_containers:I

    .line 40
    .end local v1    # "selectedMenuItemId":I
    :goto_0
    if-nez p1, :cond_2

    .line 41
    invoke-direct {p0}, Lcom/termux/x11/controller/InputControllerActivity;->initFragment()Z

    .line 43
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 60
    iget v0, p0, Lcom/termux/x11/controller/InputControllerActivity;->orientation:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/InputControllerActivity;->setRequestedOrientation(I)V

    .line 61
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 62
    return-void
.end method

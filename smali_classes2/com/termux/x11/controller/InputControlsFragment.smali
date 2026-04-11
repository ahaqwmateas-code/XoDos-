.class public Lcom/termux/x11/controller/InputControlsFragment;
.super Landroidx/fragment/app/Fragment;
.source "InputControlsFragment.java"


# static fields
.field private static final INPUT_CONTROLS_URL:Ljava/lang/String; = "https://raw.githubusercontent.com/brunodev85/winlator/main/input_controls/%s"


# instance fields
.field private currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

.field private importProfileCallback:Lcom/termux/x11/controller/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/termux/x11/controller/core/Callback<",
            "Lcom/termux/x11/controller/inputcontrols/ControlsProfile;",
            ">;"
        }
    .end annotation
.end field

.field private manager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

.field private final selectedProfileId:I

.field private updateLayout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->selectedProfileId:I

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "selectedProfileId"    # I

    .line 59
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 60
    iput p1, p0, Lcom/termux/x11/controller/InputControlsFragment;->selectedProfileId:I

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/termux/x11/controller/InputControlsFragment;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/InputControlsFragment;

    .line 51
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    return-object v0
.end method

.method static synthetic access$002(Lcom/termux/x11/controller/InputControlsFragment;Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/controller/InputControlsFragment;
    .param p1, "x1"    # Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 51
    iput-object p1, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    return-object p1
.end method

.method static synthetic access$100(Lcom/termux/x11/controller/InputControlsFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/InputControlsFragment;

    .line 51
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    return-object v0
.end method

.method private downloadProfileList(Landroid/widget/Spinner;)V
    .locals 4
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 271
    invoke-virtual {p0}, Lcom/termux/x11/controller/InputControlsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/MainActivity;

    .line 272
    .local v0, "activity":Lcom/termux/x11/MainActivity;
    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getPreloaderDialog()Lcom/termux/x11/controller/core/DownloadProgressDialog;

    move-result-object v1

    sget v2, Lcom/termux/x11/R$string;->loading:I

    invoke-virtual {v1, v2}, Lcom/termux/x11/controller/core/DownloadProgressDialog;->show(I)V

    .line 273
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "index.txt"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "https://raw.githubusercontent.com/brunodev85/winlator/main/input_controls/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, p1}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Lcom/termux/x11/MainActivity;Landroid/widget/Spinner;)V

    invoke-static {v1, v2}, Lcom/termux/x11/controller/core/HttpUtils;->download(Ljava/lang/String;Lcom/termux/x11/controller/core/Callback;)V

    .line 285
    return-void
.end method

.method private downloadSelectedProfiles(Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "items"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 248
    .local p3, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/termux/x11/controller/InputControlsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/MainActivity;

    .line 249
    .local v0, "activity":Lcom/termux/x11/MainActivity;
    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getPreloaderDialog()Lcom/termux/x11/controller/core/DownloadProgressDialog;

    move-result-object v1

    sget v2, Lcom/termux/x11/R$string;->downloading_file:I

    invoke-virtual {v1, v2}, Lcom/termux/x11/controller/core/DownloadProgressDialog;->show(I)V

    .line 250
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 251
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 253
    .local v3, "processedItemCount":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 254
    .local v8, "position":I
    aget-object v1, p2, v8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const-string v1, "https://raw.githubusercontent.com/brunodev85/winlator/main/input_controls/%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda18;

    move-object v1, v10

    move-object v2, p0

    move-object v4, p3

    move-object v5, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda18;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Lcom/termux/x11/MainActivity;Landroid/widget/Spinner;)V

    invoke-static {v9, v10}, Lcom/termux/x11/controller/core/HttpUtils;->download(Ljava/lang/String;Lcom/termux/x11/controller/core/Callback;)V

    .line 267
    .end local v8    # "position":I
    goto :goto_0

    .line 268
    :cond_0
    return-void
.end method

.method private loadExternalControllers(Landroid/view/View;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget v2, Lcom/termux/x11/R$id;->LLExternalControllers:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 321
    .local v2, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/termux/x11/controller/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 323
    .local v3, "context":Landroid/content/Context;
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 324
    .local v4, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getControllers()Ljava/util/ArrayList;

    move-result-object v5

    .line 326
    .local v5, "connectedControllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/termux/x11/controller/inputcontrols/ExternalController;>;"
    iget-object v6, v0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v6}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->loadControllers()Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v6, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/termux/x11/controller/inputcontrols/ExternalController;>;"
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/termux/x11/controller/inputcontrols/ExternalController;

    .line 328
    .local v8, "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v8    # "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    :cond_1
    goto :goto_1

    .line 331
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_6

    .line 332
    sget v7, Lcom/termux/x11/R$id;->TVEmptyText:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 333
    sget v7, Lcom/termux/x11/R$string;->bindings:I

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, "bindingsText":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/termux/x11/controller/inputcontrols/ExternalController;

    .line 335
    .local v10, "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    sget v11, Lcom/termux/x11/R$layout;->external_controller_list_item:I

    invoke-virtual {v4, v11, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 336
    .local v11, "itemView":Landroid/view/View;
    sget v12, Lcom/termux/x11/R$id;->TVTitle:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {v10}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getControllerBindingCount()I

    move-result v12

    .line 339
    .local v12, "controllerBindingCount":I
    sget v13, Lcom/termux/x11/R$id;->TVSubtitle:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    sget v13, Lcom/termux/x11/R$id;->ImageView:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 342
    .local v13, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v10}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_3

    sget v14, Lcom/termux/x11/R$color;->colorAccent:I

    invoke-static {v3, v14}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v14

    goto :goto_3

    :cond_3
    const v14, -0x1a8c8d

    .line 343
    .local v14, "tintColor":I
    :goto_3
    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-static {v13, v15}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 345
    if-lez v12, :cond_4

    .line 346
    sget v15, Lcom/termux/x11/R$id;->BTRemove:I

    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    .line 347
    .local v15, "removeButton":Landroid/widget/ImageButton;
    invoke-virtual {v15, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 348
    new-instance v8, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v8, v0, v10, v1}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda16;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Lcom/termux/x11/controller/inputcontrols/ExternalController;Landroid/view/View;)V

    invoke-virtual {v15, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    .end local v15    # "removeButton":Landroid/widget/ImageButton;
    :cond_4
    new-instance v8, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v8, v0, v10}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda17;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Lcom/termux/x11/controller/inputcontrols/ExternalController;)V

    invoke-virtual {v11, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 366
    .end local v10    # "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .end local v11    # "itemView":Landroid/view/View;
    .end local v12    # "controllerBindingCount":I
    .end local v13    # "imageView":Landroid/widget/ImageView;
    .end local v14    # "tintColor":I
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 367
    .end local v7    # "bindingsText":Ljava/lang/String;
    :cond_5
    goto :goto_4

    .line 368
    :cond_6
    sget v7, Lcom/termux/x11/R$id;->TVEmptyText:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 369
    :goto_4
    return-void
.end method

.method private loadProfileSpinner(Landroid/widget/Spinner;)V
    .locals 6
    .param p1, "spinner"    # Landroid/widget/Spinner;

    .line 294
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->manager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v0

    .line 295
    .local v0, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/termux/x11/controller/inputcontrols/ControlsProfile;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/termux/x11/R$string;->select_profile:I

    invoke-virtual {p0, v3}, Lcom/termux/x11/controller/InputControlsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, "selectedPosition":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 300
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 301
    .local v4, "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    iget-object v5, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v3, 0x1

    .line 302
    :cond_0
    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v4    # "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/termux/x11/controller/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090009

    invoke-direct {v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 306
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 307
    new-instance v3, Lcom/termux/x11/controller/InputControlsFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/termux/x11/controller/InputControlsFragment$3;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 317
    return-void
.end method

.method private openProfileFile(Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 236
    new-instance v0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda13;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/widget/Spinner;)V

    iput-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->importProfileCallback:Lcom/termux/x11/controller/core/Callback;

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0}, Lcom/termux/x11/controller/InputControlsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/termux/x11/MainActivity;->OPEN_FILE_REQUEST_CODE:I

    invoke-virtual {v1, p0, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 245
    return-void
.end method


# virtual methods
.method synthetic lambda$downloadProfileList$16$com-termux-x11-controller-InputControlsFragment(Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "items"    # [Ljava/lang/String;
    .param p3, "positions"    # Ljava/util/ArrayList;

    .line 279
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/x11/controller/InputControlsFragment;->downloadSelectedProfiles(Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method synthetic lambda$downloadProfileList$17$com-termux-x11-controller-InputControlsFragment(Lcom/termux/x11/MainActivity;Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "activity"    # Lcom/termux/x11/MainActivity;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "items"    # [Ljava/lang/String;
    .param p4, "positions"    # Ljava/util/ArrayList;

    .line 278
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    sget v0, Lcom/termux/x11/R$string;->do_you_want_to_download_the_selected_profiles:I

    new-instance v1, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {p1, v0, v1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 281
    :cond_0
    return-void
.end method

.method synthetic lambda$downloadProfileList$18$com-termux-x11-controller-InputControlsFragment(Lcom/termux/x11/MainActivity;Ljava/lang/String;Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "activity"    # Lcom/termux/x11/MainActivity;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "sProfile"    # Landroid/widget/Spinner;

    .line 274
    invoke-virtual {p1}, Lcom/termux/x11/MainActivity;->getPreloaderDialog()Lcom/termux/x11/controller/core/DownloadProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/core/DownloadProgressDialog;->close()V

    .line 275
    if-eqz p2, :cond_0

    .line 276
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "items":[Ljava/lang/String;
    sget v1, Lcom/termux/x11/R$string;->import_profile:I

    new-instance v2, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p1, p3, v0}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda19;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Lcom/termux/x11/MainActivity;Landroid/widget/Spinner;[Ljava/lang/String;)V

    invoke-static {p1, v1, v0, v2}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->showMultipleChoiceList(Landroid/content/Context;I[Ljava/lang/String;Lcom/termux/x11/controller/core/Callback;)V

    .line 282
    .end local v0    # "items":[Ljava/lang/String;
    goto :goto_0

    .line 283
    :cond_0
    sget v0, Lcom/termux/x11/R$string;->unable_to_load_profile_list:I

    invoke-static {p1, v0}, Lcom/termux/x11/controller/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 284
    :goto_0
    return-void
.end method

.method synthetic lambda$downloadProfileList$19$com-termux-x11-controller-InputControlsFragment(Lcom/termux/x11/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Lcom/termux/x11/MainActivity;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "content"    # Ljava/lang/String;

    .line 273
    new-instance v0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Lcom/termux/x11/MainActivity;Ljava/lang/String;Landroid/widget/Spinner;)V

    invoke-virtual {p1, v0}, Lcom/termux/x11/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$downloadSelectedProfiles$14$com-termux-x11-controller-InputControlsFragment(Lcom/termux/x11/MainActivity;Landroid/widget/Spinner;)V
    .locals 1
    .param p1, "activity"    # Lcom/termux/x11/MainActivity;
    .param p2, "sProfile"    # Landroid/widget/Spinner;

    .line 261
    invoke-virtual {p1}, Lcom/termux/x11/MainActivity;->getPreloaderDialog()Lcom/termux/x11/controller/core/DownloadProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/core/DownloadProgressDialog;->close()V

    .line 262
    invoke-direct {p0, p2}, Lcom/termux/x11/controller/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 263
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 264
    return-void
.end method

.method synthetic lambda$downloadSelectedProfiles$15$com-termux-x11-controller-InputControlsFragment(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Lcom/termux/x11/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 2
    .param p1, "processedItemCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "positions"    # Ljava/util/ArrayList;
    .param p3, "activity"    # Lcom/termux/x11/MainActivity;
    .param p4, "sProfile"    # Landroid/widget/Spinner;
    .param p5, "content"    # Ljava/lang/String;

    .line 256
    if-eqz p5, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->manager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->importProfile(Lorg/json/JSONObject;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 259
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 260
    new-instance v0, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p3, p4}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda11;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Lcom/termux/x11/MainActivity;Landroid/widget/Spinner;)V

    invoke-virtual {p3, v0}, Lcom/termux/x11/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 266
    :cond_1
    return-void
.end method

.method synthetic lambda$loadExternalControllers$20$com-termux-x11-controller-InputControlsFragment(Lcom/termux/x11/controller/inputcontrols/ExternalController;Landroid/view/View;)V
    .locals 1
    .param p1, "controller"    # Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .param p2, "view"    # Landroid/view/View;

    .line 349
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0, p1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->removeController(Lcom/termux/x11/controller/inputcontrols/ExternalController;)V

    .line 350
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 351
    invoke-direct {p0, p2}, Lcom/termux/x11/controller/InputControlsFragment;->loadExternalControllers(Landroid/view/View;)V

    .line 352
    return-void
.end method

.method synthetic lambda$loadExternalControllers$21$com-termux-x11-controller-InputControlsFragment(Lcom/termux/x11/controller/inputcontrols/ExternalController;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "controller"    # Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "v"    # Landroid/view/View;

    .line 348
    invoke-virtual {p0}, Lcom/termux/x11/controller/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/termux/x11/R$string;->do_you_want_to_remove_this_controller:I

    new-instance v2, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1, p2}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda14;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Lcom/termux/x11/controller/inputcontrols/ExternalController;Landroid/view/View;)V

    invoke-static {v0, v1, v2}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$loadExternalControllers$22$com-termux-x11-controller-InputControlsFragment(Lcom/termux/x11/controller/inputcontrols/ExternalController;Landroid/view/View;)V
    .locals 3
    .param p1, "controller"    # Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .param p2, "v"    # Landroid/view/View;

    .line 356
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/termux/x11/controller/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    iget v1, v1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    const-string v2, "profile_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    const-string v1, "controller_id"

    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/InputControlsFragment;->startActivity(Landroid/content/Intent;)V

    .line 361
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/controller/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/termux/x11/R$string;->no_profile_selected:I

    invoke-static {v0, v1}, Lcom/termux/x11/controller/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 363
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$0$com-termux-x11-controller-InputControlsFragment(Landroid/widget/SeekBar;Landroid/view/View;)V
    .locals 2
    .param p1, "sbCursorSpeed"    # Landroid/widget/SeekBar;
    .param p2, "view"    # Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getCursorSpeed()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 128
    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 129
    :goto_0
    invoke-direct {p0, p2}, Lcom/termux/x11/controller/InputControlsFragment;->loadExternalControllers(Landroid/view/View;)V

    .line 130
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-termux-x11-controller-InputControlsFragment(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 1
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "name"    # Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->manager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    invoke-virtual {v0, p2}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->createProfile(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 157
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 158
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 159
    return-void
.end method

.method synthetic lambda$onCreateView$10$com-termux-x11-controller-InputControlsFragment(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 196
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p1, p3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 197
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setForceShowIcon(Z)V

    .line 198
    :cond_0
    sget v1, Lcom/termux/x11/R$menu;->open_file_popup_menu:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 199
    new-instance v1, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p2}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda20;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 209
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 210
    return-void
.end method

.method synthetic lambda$onCreateView$11$com-termux-x11-controller-InputControlsFragment(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->manager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    iget-object v1, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->exportProfile(Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)Ljava/io/File;

    move-result-object v0

    .line 215
    .local v0, "exportedFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/termux/x11/R$string;->profile_exported_to:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/termux/x11/controller/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 219
    .end local v0    # "exportedFile":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 220
    :cond_1
    sget v0, Lcom/termux/x11/R$string;->no_profile_selected:I

    invoke-static {p1, v0}, Lcom/termux/x11/controller/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 221
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$12$com-termux-x11-controller-InputControlsFragment(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 224
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/x11/controller/ControlsEditorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    iget v1, v1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    const-string v2, "profile_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/InputControlsFragment;->startActivity(Landroid/content/Intent;)V

    .line 228
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 229
    :cond_0
    sget v0, Lcom/termux/x11/R$string;->no_profile_selected:I

    invoke-static {p1, v0}, Lcom/termux/x11/controller/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 230
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-termux-x11-controller-InputControlsFragment(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 155
    sget v0, Lcom/termux/x11/R$string;->profile_name:I

    new-instance v1, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p2}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda12;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/widget/Spinner;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->prompt(Landroid/content/Context;ILjava/lang/String;Lcom/termux/x11/controller/core/Callback;)V

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-termux-x11-controller-InputControlsFragment(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 1
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "name"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0, p2}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->setName(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 166
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 167
    return-void
.end method

.method synthetic lambda$onCreateView$4$com-termux-x11-controller-InputControlsFragment(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 163
    sget v0, Lcom/termux/x11/R$string;->profile_name:I

    iget-object v1, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p2}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/widget/Spinner;)V

    invoke-static {p1, v0, v1, v2}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->prompt(Landroid/content/Context;ILjava/lang/String;Lcom/termux/x11/controller/core/Callback;)V

    goto :goto_0

    .line 169
    :cond_0
    sget v0, Lcom/termux/x11/R$string;->no_profile_selected:I

    invoke-static {p1, v0}, Lcom/termux/x11/controller/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 170
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$5$com-termux-x11-controller-InputControlsFragment(Landroid/widget/Spinner;)V
    .locals 2
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 175
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->manager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    iget-object v1, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->duplicateProfile(Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 176
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 177
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 178
    return-void
.end method

.method synthetic lambda$onCreateView$6$com-termux-x11-controller-InputControlsFragment(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 174
    sget v0, Lcom/termux/x11/R$string;->do_you_want_to_duplicate_this_profile:I

    new-instance v1, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p2}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda21;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/widget/Spinner;)V

    invoke-static {p1, v0, v1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 180
    :cond_0
    sget v0, Lcom/termux/x11/R$string;->no_profile_selected:I

    invoke-static {p1, v0}, Lcom/termux/x11/controller/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 181
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-termux-x11-controller-InputControlsFragment(Landroid/widget/Spinner;)V
    .locals 2
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 186
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->manager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    iget-object v1, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->removeProfile(Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 188
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 189
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 190
    return-void
.end method

.method synthetic lambda$onCreateView$8$com-termux-x11-controller-InputControlsFragment(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 185
    sget v0, Lcom/termux/x11/R$string;->do_you_want_to_remove_this_profile:I

    new-instance v1, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p2}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda15;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/widget/Spinner;)V

    invoke-static {p1, v0, v1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 192
    :cond_0
    sget v0, Lcom/termux/x11/R$string;->no_profile_selected:I

    invoke-static {p1, v0}, Lcom/termux/x11/controller/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 193
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$9$com-termux-x11-controller-InputControlsFragment(Landroid/widget/Spinner;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 200
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 201
    .local v0, "itemId":I
    sget v1, Lcom/termux/x11/R$id;->open_file:I

    if-ne v0, v1, :cond_0

    .line 202
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/InputControlsFragment;->openProfileFile(Landroid/widget/Spinner;)V

    goto :goto_0

    .line 204
    :cond_0
    sget v1, Lcom/termux/x11/R$id;->download_file:I

    if-ne v0, v1, :cond_1

    .line 205
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/InputControlsFragment;->downloadProfileList(Landroid/widget/Spinner;)V

    .line 207
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$openProfileFile$13$com-termux-x11-controller-InputControlsFragment(Landroid/widget/Spinner;Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)V
    .locals 1
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "importedProfile"    # Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 237
    iput-object p2, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 238
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 239
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 240
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 81
    sget v0, Lcom/termux/x11/MainActivity;->OPEN_FILE_REQUEST_CODE:I

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->manager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/termux/x11/controller/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/x11/controller/core/FileUtils;->readString(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->importProfile(Lorg/json/JSONObject;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    .line 84
    .local v0, "importedProfile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    iget-object v1, p0, Lcom/termux/x11/controller/InputControlsFragment;->importProfileCallback:Lcom/termux/x11/controller/core/Callback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/termux/x11/controller/InputControlsFragment;->importProfileCallback:Lcom/termux/x11/controller/core/Callback;

    invoke-interface {v1, v0}, Lcom/termux/x11/controller/core/Callback;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "importedProfile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    :cond_0
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/termux/x11/controller/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/termux/x11/R$string;->unable_to_import_profile:I

    invoke-static {v1, v2}, Lcom/termux/x11/controller/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->importProfileCallback:Lcom/termux/x11/controller/core/Callback;

    .line 91
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 68
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/InputControlsFragment;->setHasOptionsMenu(Z)V

    .line 70
    new-instance v0, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    invoke-virtual {p0}, Lcom/termux/x11/controller/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->manager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 96
    sget v0, Lcom/termux/x11/R$layout;->input_controls_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/termux/x11/controller/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 98
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 100
    .local v2, "preferences":Landroid/content/SharedPreferences;
    iget v3, p0, Lcom/termux/x11/controller/InputControlsFragment;->selectedProfileId:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/termux/x11/controller/InputControlsFragment;->manager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    iget v4, p0, Lcom/termux/x11/controller/InputControlsFragment;->selectedProfileId:I

    invoke-virtual {v3, v4}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->getProfile(I)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Lcom/termux/x11/controller/InputControlsFragment;->currentProfile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 102
    sget v3, Lcom/termux/x11/R$id;->SProfile:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 103
    .local v3, "sProfile":Landroid/widget/Spinner;
    invoke-direct {p0, v3}, Lcom/termux/x11/controller/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 105
    sget v4, Lcom/termux/x11/R$id;->TVCursorSpeed:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 106
    .local v4, "tvCursorSpeed":Landroid/widget/TextView;
    sget v5, Lcom/termux/x11/R$id;->SBCursorSpeed:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 107
    .local v5, "sbCursorSpeed":Landroid/widget/SeekBar;
    new-instance v6, Lcom/termux/x11/controller/InputControlsFragment$1;

    invoke-direct {v6, p0, v4}, Lcom/termux/x11/controller/InputControlsFragment$1;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 124
    new-instance v6, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v6, p0, v5, v0}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda22;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/widget/SeekBar;Landroid/view/View;)V

    iput-object v6, p0, Lcom/termux/x11/controller/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    .line 132
    iget-object v6, p0, Lcom/termux/x11/controller/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 134
    sget v6, Lcom/termux/x11/R$id;->TVUiOpacity:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 135
    .local v6, "tvUiOpacity":Landroid/widget/TextView;
    sget v7, Lcom/termux/x11/R$id;->SBOverlayOpacity:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    .line 136
    .local v7, "sbUiOpacity":Landroid/widget/SeekBar;
    new-instance v8, Lcom/termux/x11/controller/InputControlsFragment$2;

    invoke-direct {v8, p0, v6, v2}, Lcom/termux/x11/controller/InputControlsFragment$2;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/widget/TextView;Landroid/content/SharedPreferences;)V

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 153
    const-string v8, "overlay_opacity"

    const v9, 0x3ecccccd    # 0.4f

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 155
    sget v8, Lcom/termux/x11/R$id;->BTAddProfile:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0, v1, v3}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    sget v8, Lcom/termux/x11/R$id;->BTEditProfile:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0, v1, v3}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    sget v8, Lcom/termux/x11/R$id;->BTDuplicateProfile:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0, v1, v3}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    sget v8, Lcom/termux/x11/R$id;->BTRemoveProfile:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v9, p0, v1, v3}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    sget v8, Lcom/termux/x11/R$id;->BTImportProfile:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v9, p0, v1, v3}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    sget v8, Lcom/termux/x11/R$id;->BTExportProfile:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v9, p0, v1}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    sget v8, Lcom/termux/x11/R$id;->BTControlsEditor:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v9, p0, v1}, Lcom/termux/x11/controller/InputControlsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/termux/x11/controller/InputControlsFragment;Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    return-object v0
.end method

.method public onStart()V
    .locals 1

    .line 289
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 290
    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 291
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

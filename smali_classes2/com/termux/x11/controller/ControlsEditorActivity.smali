.class public Lcom/termux/x11/controller/ControlsEditorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ControlsEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/controller/ControlsEditorActivity$LoadCallBack;
    }
.end annotation


# instance fields
.field private inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

.field protected openFileCallback:Lcom/termux/x11/controller/ControlsEditorActivity$LoadCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/termux/x11/controller/ControlsEditorActivity$LoadCallBack<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/termux/x11/controller/ControlsEditorActivity;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/ControlsEditorActivity;

    .line 47
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/termux/x11/controller/ControlsEditorActivity;)Lcom/termux/x11/controller/widget/InputControlsView;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/ControlsEditorActivity;

    .line 47
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    return-object v0
.end method

.method static synthetic lambda$loadCombineBindingSpinner$7(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p0, "container"    # Landroid/widget/LinearLayout;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;

    .line 397
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 398
    return-void
.end method

.method static synthetic lambda$loadIcons$10(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 3
    .param p0, "parent"    # Landroid/widget/LinearLayout;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "v"    # Landroid/view/View;

    .line 535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 536
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 537
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 538
    return-void
.end method

.method private loadBindingSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/LinearLayout;II)V
    .locals 11
    .param p1, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p2, "container"    # Landroid/widget/LinearLayout;
    .param p3, "index"    # I
    .param p4, "titleResId"    # I

    .line 316
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/termux/x11/R$layout;->binding_field:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 317
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/termux/x11/R$id;->TVTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    .line 318
    sget v1, Lcom/termux/x11/R$id;->SBindingType:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 319
    .local v1, "sBindingType":Landroid/widget/Spinner;
    sget v3, Lcom/termux/x11/R$id;->SBinding:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/Spinner;

    .line 321
    .local v9, "sBinding":Landroid/widget/Spinner;
    new-instance v10, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda2;

    move-object v3, v10

    move-object v4, p0

    move-object v5, v1

    move-object v6, v9

    move-object v7, p1

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda2;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/termux/x11/controller/inputcontrols/ControlElement;I)V

    .line 339
    .local v3, "update":Ljava/lang/Runnable;
    new-instance v4, Lcom/termux/x11/controller/ControlsEditorActivity$5;

    invoke-direct {v4, p0, v3}, Lcom/termux/x11/controller/ControlsEditorActivity$5;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 350
    invoke-virtual {p1, p3}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v4

    .line 351
    .local v4, "selectedBinding":Lcom/termux/x11/controller/inputcontrols/Binding;
    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/Binding;->isKeyboard()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 352
    invoke-virtual {v1, v2, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/Binding;->isMouse()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 354
    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/Binding;->isGamepad()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 356
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 359
    :cond_2
    :goto_0
    new-instance v2, Lcom/termux/x11/controller/ControlsEditorActivity$6;

    invoke-direct {v2, p0, v1, p1, p3}, Lcom/termux/x11/controller/ControlsEditorActivity$6;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Landroid/widget/Spinner;Lcom/termux/x11/controller/inputcontrols/ControlElement;I)V

    invoke-virtual {v9, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 387
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 388
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    return-void
.end method

.method private loadBindingSpinners(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/view/View;)V
    .locals 8
    .param p1, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p2, "view"    # Landroid/view/View;

    .line 272
    sget v0, Lcom/termux/x11/R$id;->LLBindings:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 273
    .local v0, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 275
    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getType()Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    move-result-object v1

    .line 276
    .local v1, "type":Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;
    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 277
    sget v2, Lcom/termux/x11/R$string;->binding:I

    invoke-direct {p0, p1, v0, v3, v2}, Lcom/termux/x11/controller/ControlsEditorActivity;->loadBindingSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/LinearLayout;II)V

    goto/16 :goto_3

    .line 278
    :cond_0
    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->D_PAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const/4 v4, 0x1

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->STICK:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v1, v2, :cond_1

    goto/16 :goto_2

    .line 283
    :cond_1
    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->COMBINE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const/4 v3, -0x2

    const/4 v5, -0x1

    if-ne v1, v2, :cond_4

    .line 284
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 285
    .local v2, "addButtonLayout":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v6

    .line 286
    .local v3, "addButtonLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 288
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 289
    .local v4, "btn":Landroid/widget/Button;
    sget v5, Lcom/termux/x11/R$string;->add_button:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 290
    invoke-virtual {p0}, Lcom/termux/x11/controller/ControlsEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/termux/x11/R$color;->colorBlack:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 291
    new-instance v5, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, v2, p1}, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda8;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Landroid/widget/LinearLayout;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 299
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_0
    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 300
    invoke-virtual {p1, v5}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v6

    sget-object v7, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    if-eq v6, v7, :cond_2

    .line 301
    invoke-direct {p0, p1, v2, v5}, Lcom/termux/x11/controller/ControlsEditorActivity;->loadCombineBindingSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/LinearLayout;I)V

    .line 299
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 304
    .end local v5    # "idx":I
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .end local v2    # "addButtonLayout":Landroid/widget/LinearLayout;
    .end local v3    # "addButtonLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "btn":Landroid/widget/Button;
    goto :goto_1

    .line 305
    :cond_4
    sget-object v2, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->CHEAT_CODE_TEXT:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v1, v2, :cond_5

    .line 306
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 307
    .local v2, "cheatCodeLayout":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v6

    .line 308
    .local v3, "cheatCodeLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 310
    invoke-direct {p0, p1, v2}, Lcom/termux/x11/controller/ControlsEditorActivity;->loadCheatCodeTextEditor(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/LinearLayout;)V

    .line 311
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 305
    .end local v2    # "cheatCodeLayout":Landroid/widget/LinearLayout;
    .end local v3    # "cheatCodeLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    :goto_1
    goto :goto_3

    .line 279
    :cond_6
    :goto_2
    sget v2, Lcom/termux/x11/R$string;->binding_up:I

    invoke-direct {p0, p1, v0, v3, v2}, Lcom/termux/x11/controller/ControlsEditorActivity;->loadBindingSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/LinearLayout;II)V

    .line 280
    sget v2, Lcom/termux/x11/R$string;->binding_right:I

    invoke-direct {p0, p1, v0, v4, v2}, Lcom/termux/x11/controller/ControlsEditorActivity;->loadBindingSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/LinearLayout;II)V

    .line 281
    const/4 v2, 0x2

    sget v3, Lcom/termux/x11/R$string;->binding_down:I

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/termux/x11/controller/ControlsEditorActivity;->loadBindingSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/LinearLayout;II)V

    .line 282
    const/4 v2, 0x3

    sget v3, Lcom/termux/x11/R$string;->binding_left:I

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/termux/x11/controller/ControlsEditorActivity;->loadBindingSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/LinearLayout;II)V

    .line 313
    :goto_3
    return-void
.end method

.method private loadCheatCodeTextEditor(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/LinearLayout;)V
    .locals 6
    .param p1, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p2, "container"    # Landroid/widget/LinearLayout;

    .line 471
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 472
    .local v0, "tv":Landroid/widget/TextView;
    sget v1, Lcom/termux/x11/R$string;->cheat_code:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 473
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/termux/x11/R$layout;->cheat_code_itm:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 476
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/termux/x11/R$id;->EDCCT:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 477
    .local v2, "ed":Landroid/widget/EditText;
    sget v3, Lcom/termux/x11/R$id;->IBTNSET:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 478
    .local v3, "setBtn":Landroid/widget/ImageButton;
    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getCheatCodeText()Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, "cct":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    new-instance v5, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2, v4, p1}, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Landroid/widget/EditText;Ljava/lang/String;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 489
    return-void
.end method

.method private loadCombineBindingSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/LinearLayout;I)V
    .locals 12
    .param p1, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p2, "container"    # Landroid/widget/LinearLayout;
    .param p3, "index"    # I

    .line 392
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/termux/x11/R$layout;->binding_combine_field:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 393
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/termux/x11/R$id;->SCBBindingType:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 394
    .local v1, "sBindingType":Landroid/widget/Spinner;
    sget v3, Lcom/termux/x11/R$id;->SCBBinding:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/Spinner;

    .line 395
    .local v9, "sBinding":Landroid/widget/Spinner;
    sget v3, Lcom/termux/x11/R$id;->IBTNDelKeyBinding:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/ImageButton;

    .line 396
    .local v10, "deleteButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, p2, v0}, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda10;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v10, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    new-instance v11, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda1;

    move-object v3, v11

    move-object v4, p0

    move-object v5, v1

    move-object v6, v9

    move-object v7, p1

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/termux/x11/controller/inputcontrols/ControlElement;I)V

    .line 418
    .local v3, "update":Ljava/lang/Runnable;
    new-instance v4, Lcom/termux/x11/controller/ControlsEditorActivity$7;

    invoke-direct {v4, p0, v3}, Lcom/termux/x11/controller/ControlsEditorActivity$7;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 429
    invoke-virtual {p1, p3}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v4

    .line 430
    .local v4, "selectedBinding":Lcom/termux/x11/controller/inputcontrols/Binding;
    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/Binding;->isKeyboard()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 431
    invoke-virtual {v1, v2, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/Binding;->isMouse()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 433
    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 434
    :cond_1
    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/Binding;->isGamepad()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 435
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 438
    :cond_2
    :goto_0
    new-instance v2, Lcom/termux/x11/controller/ControlsEditorActivity$8;

    invoke-direct {v2, p0, v1, p1, p3}, Lcom/termux/x11/controller/ControlsEditorActivity$8;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Landroid/widget/Spinner;Lcom/termux/x11/controller/inputcontrols/ControlElement;I)V

    invoke-virtual {v9, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 466
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 467
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 468
    return-void
.end method

.method private loadCustomIconType(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/view/View;)V
    .locals 4
    .param p1, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p2, "view"    # Landroid/view/View;

    .line 205
    sget v0, Lcom/termux/x11/R$id;->SControllerIconType:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 206
    .local v0, "iconTypeSpinner":Landroid/widget/Spinner;
    sget v1, Lcom/termux/x11/R$id;->CPVControllerBackgroundColor:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/widget/ColorPickerView;

    .line 207
    .local v1, "colorPicker":Lcom/termux/x11/controller/widget/ColorPickerView;
    sget v2, Lcom/termux/x11/R$id;->IPVControllerBackgroundImage:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/termux/x11/controller/widget/ImagePickerView;

    .line 208
    .local v2, "iconPicker":Lcom/termux/x11/controller/widget/ImagePickerView;
    new-instance v3, Lcom/termux/x11/controller/ControlsEditorActivity$2;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/termux/x11/controller/ControlsEditorActivity$2;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Lcom/termux/x11/controller/widget/ColorPickerView;Lcom/termux/x11/controller/widget/ImagePickerView;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 234
    return-void
.end method

.method private loadIcons(Landroid/widget/LinearLayout;B)V
    .locals 17
    .param p1, "parent"    # Landroid/widget/LinearLayout;
    .param p2, "selectedId"    # B

    .line 509
    move-object/from16 v1, p1

    const-string v2, "inputcontrols/icons/"

    const/4 v3, 0x0

    new-array v4, v3, [B

    .line 511
    .local v4, "iconIds":[B
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/termux/x11/controller/ControlsEditorActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "filenames":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [B

    move-object v4, v5

    .line 513
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 514
    aget-object v6, v0, v5

    invoke-static {v6}, Lcom/termux/x11/controller/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    aput-byte v6, v4, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 517
    .end local v0    # "filenames":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_0
    goto :goto_1

    .line 516
    :catch_0
    move-exception v0

    .line 519
    :goto_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([B)V

    .line 521
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v0

    float-to-int v5, v0

    .line 522
    .local v5, "size":I
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v0

    float-to-int v6, v0

    .line 523
    .local v6, "margin":I
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v0

    float-to-int v7, v0

    .line 524
    .local v7, "padding":I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v8, v0

    .line 525
    .local v8, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v6, v3, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 527
    array-length v9, v4

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    aget-byte v11, v4, v10

    .line 528
    .local v11, "id":B
    new-instance v0, Landroid/widget/ImageView;

    move-object/from16 v12, p0

    invoke-direct {v0, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v13, v0

    .line 529
    .local v13, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    invoke-virtual {v13, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 531
    sget v0, Lcom/termux/x11/R$drawable;->icon_background:I

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 532
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 533
    move/from16 v14, p2

    if-ne v11, v14, :cond_1

    const/4 v0, 0x1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 534
    new-instance v0, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, v1, v13}, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda9;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/termux/x11/controller/ControlsEditorActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v3, ".png"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v0

    .line 541
    .local v3, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 542
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 543
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_2
    move-object/from16 v16, v2

    goto :goto_5

    .line 540
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    move-object v15, v0

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v16, v2

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    move-object v2, v0

    :try_start_5
    invoke-virtual {v15, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    move-object/from16 v16, v2

    .end local v4    # "iconIds":[B
    .end local v5    # "size":I
    .end local v6    # "margin":I
    .end local v7    # "padding":I
    .end local v8    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "id":B
    .end local v13    # "imageView":Landroid/widget/ImageView;
    .end local p1    # "parent":Landroid/widget/LinearLayout;
    .end local p2    # "selectedId":B
    :goto_4
    throw v15
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 542
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "iconIds":[B
    .restart local v5    # "size":I
    .restart local v6    # "margin":I
    .restart local v7    # "padding":I
    .restart local v8    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v11    # "id":B
    .restart local v13    # "imageView":Landroid/widget/ImageView;
    .restart local p1    # "parent":Landroid/widget/LinearLayout;
    .restart local p2    # "selectedId":B
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v16, v2

    .line 545
    :goto_5
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    .end local v11    # "id":B
    .end local v13    # "imageView":Landroid/widget/ImageView;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v16

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 547
    :cond_4
    move-object/from16 v12, p0

    move/from16 v14, p2

    return-void
.end method

.method private loadRangeSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p2, "spinner"    # Landroid/widget/Spinner;

    .line 492
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;->names()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 493
    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getRange()Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 494
    new-instance v0, Lcom/termux/x11/controller/ControlsEditorActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/termux/x11/controller/ControlsEditorActivity$9;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 506
    return-void
.end method

.method private loadShapeSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p2, "spinner"    # Landroid/widget/Spinner;

    .line 255
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;->names()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 256
    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getShape()Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 257
    new-instance v0, Lcom/termux/x11/controller/ControlsEditorActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/termux/x11/controller/ControlsEditorActivity$4;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 269
    return-void
.end method

.method private loadTypeSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/Spinner;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p2, "spinner"    # Landroid/widget/Spinner;
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 237
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->names()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 238
    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getType()Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 239
    new-instance v0, Lcom/termux/x11/controller/ControlsEditorActivity$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/termux/x11/controller/ControlsEditorActivity$3;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Lcom/termux/x11/controller/inputcontrols/ControlElement;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 252
    return-void
.end method

.method private showControlElementSettings(Landroid/view/View;)V
    .locals 12
    .param p1, "anchorView"    # Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getSelectedElement()Lcom/termux/x11/controller/inputcontrols/ControlElement;

    move-result-object v0

    .line 103
    .local v0, "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/termux/x11/R$layout;->control_element_settings:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, v1}, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/view/View;)V

    .line 125
    .local v2, "updateLayout":Ljava/lang/Runnable;
    sget v3, Lcom/termux/x11/R$id;->SType:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-direct {p0, v0, v3, v2}, Lcom/termux/x11/controller/ControlsEditorActivity;->loadTypeSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/Spinner;Ljava/lang/Runnable;)V

    .line 126
    sget v3, Lcom/termux/x11/R$id;->SShape:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-direct {p0, v0, v3}, Lcom/termux/x11/controller/ControlsEditorActivity;->loadShapeSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/Spinner;)V

    .line 127
    sget v3, Lcom/termux/x11/R$id;->SRange:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-direct {p0, v0, v3}, Lcom/termux/x11/controller/ControlsEditorActivity;->loadRangeSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/Spinner;)V

    .line 129
    sget v3, Lcom/termux/x11/R$id;->RGOrientation:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 130
    .local v3, "rgOrientation":Landroid/widget/RadioGroup;
    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getOrientation()B

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    sget v4, Lcom/termux/x11/R$id;->RBVertical:I

    goto :goto_0

    :cond_0
    sget v4, Lcom/termux/x11/R$id;->RBHorizontal:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 131
    new-instance v4, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v0}, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 137
    sget v4, Lcom/termux/x11/R$id;->NPColumns:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/termux/x11/controller/widget/NumberPicker;

    .line 138
    .local v4, "npColumns":Lcom/termux/x11/controller/widget/NumberPicker;
    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingCount()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/termux/x11/controller/widget/NumberPicker;->setValue(I)V

    .line 139
    new-instance v5, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v0}, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda5;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V

    invoke-virtual {v4, v5}, Lcom/termux/x11/controller/widget/NumberPicker;->setOnValueChangeListener(Lcom/termux/x11/controller/widget/NumberPicker$OnValueChangeListener;)V

    .line 145
    sget v5, Lcom/termux/x11/R$id;->TVScale:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 146
    .local v5, "tvScale":Landroid/widget/TextView;
    sget v6, Lcom/termux/x11/R$id;->SBScale:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    .line 147
    .local v6, "sbScale":Landroid/widget/SeekBar;
    new-instance v7, Lcom/termux/x11/controller/ControlsEditorActivity$1;

    invoke-direct {v7, p0, v5, v0}, Lcom/termux/x11/controller/ControlsEditorActivity$1;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Landroid/widget/TextView;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 168
    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getScale()F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v7, v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 170
    sget v7, Lcom/termux/x11/R$id;->CBToggleSwitch:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 171
    .local v7, "cbToggleSwitch":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->isToggleSwitch()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    new-instance v8, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0, v0}, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda6;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    sget v8, Lcom/termux/x11/R$id;->ETCustomText:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 178
    .local v8, "etCustomText":Landroid/widget/EditText;
    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    sget v9, Lcom/termux/x11/R$id;->LLIconList:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 180
    .local v9, "llIconList":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getIconId()B

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/termux/x11/controller/ControlsEditorActivity;->loadIcons(Landroid/widget/LinearLayout;B)V

    .line 181
    invoke-direct {p0, v0, v1}, Lcom/termux/x11/controller/ControlsEditorActivity;->loadCustomIconType(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/view/View;)V

    .line 183
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 185
    const/16 v10, 0x154

    const/4 v11, 0x0

    invoke-static {p1, v1, v10, v11}, Lcom/termux/x11/controller/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v10

    .line 186
    .local v10, "popupWindow":Landroid/widget/PopupWindow;
    new-instance v11, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda7;

    invoke-direct {v11, p0, v8, v9, v0}, Lcom/termux/x11/controller/ControlsEditorActivity$$ExternalSyntheticLambda7;-><init>(Lcom/termux/x11/controller/ControlsEditorActivity;Landroid/widget/EditText;Landroid/widget/LinearLayout;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 202
    return-void
.end method


# virtual methods
.method synthetic lambda$loadBindingSpinner$6$com-termux-x11-controller-ControlsEditorActivity(Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/termux/x11/controller/inputcontrols/ControlElement;I)V
    .locals 3
    .param p1, "sBindingType"    # Landroid/widget/Spinner;
    .param p2, "sBinding"    # Landroid/widget/Spinner;
    .param p3, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p4, "index"    # I

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "bindingEntries":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 331
    :pswitch_0
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/Binding;->gamepadBindingLabels()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/Binding;->mouseBindingLabels()[Ljava/lang/String;

    move-result-object v0

    .line 329
    goto :goto_0

    .line 325
    :pswitch_2
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/Binding;->keyboardBindingLabels()[Ljava/lang/String;

    move-result-object v0

    .line 326
    nop

    .line 335
    :goto_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 336
    invoke-virtual {p3, p4}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/Binding;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/termux/x11/controller/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 337
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$loadBindingSpinners$5$com-termux-x11-controller-ControlsEditorActivity(Landroid/widget/LinearLayout;Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/view/View;)V
    .locals 2
    .param p1, "addButtonLayout"    # Landroid/widget/LinearLayout;
    .param p2, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p3, "v"    # Landroid/view/View;

    .line 292
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 293
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/termux/x11/controller/ControlsEditorActivity;->loadCombineBindingSpinner(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/LinearLayout;I)V

    goto :goto_0

    .line 295
    :cond_0
    sget v0, Lcom/termux/x11/R$string;->too_much_key:I

    invoke-static {p0, v0}, Lcom/termux/x11/controller/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 297
    :goto_0
    return-void
.end method

.method synthetic lambda$loadCheatCodeTextEditor$9$com-termux-x11-controller-ControlsEditorActivity(Landroid/widget/EditText;Ljava/lang/String;Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/view/View;)V
    .locals 2
    .param p1, "ed"    # Landroid/widget/EditText;
    .param p2, "cct"    # Ljava/lang/String;
    .param p3, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p4, "v"    # Landroid/view/View;

    .line 481
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "cheatCode":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    invoke-virtual {p3, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setCheatCodeText(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 485
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    .line 487
    :cond_0
    return-void
.end method

.method synthetic lambda$loadCombineBindingSpinner$8$com-termux-x11-controller-ControlsEditorActivity(Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/termux/x11/controller/inputcontrols/ControlElement;I)V
    .locals 3
    .param p1, "sBindingType"    # Landroid/widget/Spinner;
    .param p2, "sBinding"    # Landroid/widget/Spinner;
    .param p3, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p4, "index"    # I

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "bindingEntries":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 410
    :pswitch_0
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/Binding;->gamepadBindingLabels()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 407
    :pswitch_1
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/Binding;->mouseBindingLabels()[Ljava/lang/String;

    move-result-object v0

    .line 408
    goto :goto_0

    .line 404
    :pswitch_2
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/Binding;->keyboardBindingLabels()[Ljava/lang/String;

    move-result-object v0

    .line 405
    nop

    .line 414
    :goto_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 415
    invoke-virtual {p3, p4}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getBindingAt(I)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/Binding;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/termux/x11/controller/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 416
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$showControlElementSettings$0$com-termux-x11-controller-ControlsEditorActivity(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/view/View;)V
    .locals 3
    .param p1, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p2, "view"    # Landroid/view/View;

    .line 106
    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getType()Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    move-result-object v0

    .line 107
    .local v0, "type":Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;
    sget v1, Lcom/termux/x11/R$id;->LLShape:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    sget v1, Lcom/termux/x11/R$id;->CBToggleSwitch:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    sget v1, Lcom/termux/x11/R$id;->LLCustomTextIcon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    sget v1, Lcom/termux/x11/R$id;->LLRangeOptions:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->COMBINE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->CHEAT_CODE_TEXT:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    if-ne v0, v1, :cond_2

    .line 119
    sget v1, Lcom/termux/x11/R$id;->LLRangeOptions:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 115
    :cond_1
    :goto_0
    sget v1, Lcom/termux/x11/R$id;->LLShape:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    sget v1, Lcom/termux/x11/R$id;->CBToggleSwitch:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    sget v1, Lcom/termux/x11/R$id;->LLCustomTextIcon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/termux/x11/controller/ControlsEditorActivity;->loadBindingSpinners(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/view/View;)V

    .line 123
    return-void
.end method

.method synthetic lambda$showControlElementSettings$1$com-termux-x11-controller-ControlsEditorActivity(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p2, "group"    # Landroid/widget/RadioGroup;
    .param p3, "checkedId"    # I

    .line 132
    sget v0, Lcom/termux/x11/R$id;->RBVertical:I

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setOrientation(B)V

    .line 133
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 134
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    .line 135
    return-void
.end method

.method synthetic lambda$showControlElementSettings$2$com-termux-x11-controller-ControlsEditorActivity(Lcom/termux/x11/controller/inputcontrols/ControlElement;Lcom/termux/x11/controller/widget/NumberPicker;I)V
    .locals 1
    .param p1, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p2, "numberPicker"    # Lcom/termux/x11/controller/widget/NumberPicker;
    .param p3, "value"    # I

    .line 140
    invoke-virtual {p1, p3}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setBindingCount(I)V

    .line 141
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 142
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    .line 143
    return-void
.end method

.method synthetic lambda$showControlElementSettings$3$com-termux-x11-controller-ControlsEditorActivity(Lcom/termux/x11/controller/inputcontrols/ControlElement;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 173
    invoke-virtual {p1, p3}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setToggleSwitch(Z)V

    .line 174
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 175
    return-void
.end method

.method synthetic lambda$showControlElementSettings$4$com-termux-x11-controller-ControlsEditorActivity(Landroid/widget/EditText;Landroid/widget/LinearLayout;Lcom/termux/x11/controller/inputcontrols/ControlElement;)V
    .locals 5
    .param p1, "etCustomText"    # Landroid/widget/EditText;
    .param p2, "llIconList"    # Landroid/widget/LinearLayout;
    .param p3, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;

    .line 187
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 189
    .local v1, "iconId":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 190
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 191
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 193
    goto :goto_1

    .line 189
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p3, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setText(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p3, v1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setIconId(I)V

    .line 199
    iget-object v2, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v2}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 200
    iget-object v2, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v2}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    .line 201
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 551
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 552
    invoke-virtual {p0}, Lcom/termux/x11/controller/ControlsEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/termux/x11/R$integer;->load_button_icon_code:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->openFileCallback:Lcom/termux/x11/controller/ControlsEditorActivity$LoadCallBack;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->openFileCallback:Lcom/termux/x11/controller/ControlsEditorActivity$LoadCallBack;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/termux/x11/controller/ControlsEditorActivity$LoadCallBack;->call(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/termux/x11/controller/widget/InputControlsView;->getSelectedElement()Lcom/termux/x11/controller/inputcontrols/ControlElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/termux/x11/controller/widget/InputControlsView;->getSelectedElement()Lcom/termux/x11/controller/inputcontrols/ControlElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setCustomIconId(Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    .line 559
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->openFileCallback:Lcom/termux/x11/controller/ControlsEditorActivity$LoadCallBack;

    .line 562
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 85
    .local v0, "id":I
    sget v1, Lcom/termux/x11/R$id;->BTAddElement:I

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/termux/x11/controller/widget/InputControlsView;->addElement()Z

    move-result v1

    if-nez v1, :cond_3

    .line 87
    sget v1, Lcom/termux/x11/R$string;->no_profile_selected:I

    invoke-static {p0, v1}, Lcom/termux/x11/controller/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_0

    .line 89
    :cond_0
    sget v1, Lcom/termux/x11/R$id;->BTRemoveElement:I

    if-ne v0, v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/termux/x11/controller/widget/InputControlsView;->removeElement()Z

    move-result v1

    if-nez v1, :cond_3

    .line 91
    sget v1, Lcom/termux/x11/R$string;->no_control_element_selected:I

    invoke-static {p0, v1}, Lcom/termux/x11/controller/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_0

    .line 93
    :cond_1
    sget v1, Lcom/termux/x11/R$id;->BTElementSettings:I

    if-ne v0, v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/termux/x11/controller/widget/InputControlsView;->getSelectedElement()Lcom/termux/x11/controller/inputcontrols/ControlElement;

    move-result-object v1

    .line 95
    .local v1, "selectedElement":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    if-eqz v1, :cond_2

    .line 96
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/ControlsEditorActivity;->showControlElementSettings(Landroid/view/View;)V

    goto :goto_0

    .line 97
    :cond_2
    sget v2, Lcom/termux/x11/R$string;->no_control_element_selected:I

    invoke-static {p0, v2}, Lcom/termux/x11/controller/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 99
    .end local v1    # "selectedElement":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {p0}, Lcom/termux/x11/controller/core/AppUtils;->hideSystemUI(Landroid/app/Activity;)V

    .line 64
    sget v0, Lcom/termux/x11/R$layout;->controls_editor_activity:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/ControlsEditorActivity;->setContentView(I)V

    .line 66
    new-instance v0, Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/widget/InputControlsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    .line 67
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->setEditMode(Z)V

    .line 68
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->setOverlayOpacity(F)V

    .line 70
    invoke-virtual {p0}, Lcom/termux/x11/controller/ControlsEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "profile_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/File;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 71
    sget v0, Lcom/termux/x11/R$id;->TVProfileName:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/ControlsEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->setProfile(Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)V

    .line 74
    sget v0, Lcom/termux/x11/R$id;->FLContainer:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/ControlsEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 75
    .local v0, "container":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 77
    sget v1, Lcom/termux/x11/R$id;->BTAddElement:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget v1, Lcom/termux/x11/R$id;->BTRemoveElement:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v1, Lcom/termux/x11/R$id;->BTElementSettings:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public setButtonColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 576
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    .line 577
    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getSelectedElement()Lcom/termux/x11/controller/inputcontrols/ControlElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getSelectedElement()Lcom/termux/x11/controller/inputcontrols/ControlElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setBackgroundColor(I)V

    .line 579
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 580
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    .line 582
    :cond_0
    return-void
.end method

.method public setCustomButtonIcon(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 585
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    .line 586
    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getSelectedElement()Lcom/termux/x11/controller/inputcontrols/ControlElement;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getSelectedElement()Lcom/termux/x11/controller/inputcontrols/ControlElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getCustomIconId()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "iconId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    return-void

    .line 591
    :cond_0
    if-nez p1, :cond_1

    .line 592
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1, v0}, Lcom/termux/x11/controller/widget/InputControlsView;->counterMapDecrease(Ljava/lang/String;)V

    .line 594
    :cond_1
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/termux/x11/controller/widget/InputControlsView;->getSelectedElement()Lcom/termux/x11/controller/inputcontrols/ControlElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setCustomIconId(Ljava/lang/String;)V

    .line 596
    .end local v0    # "iconId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setOpenFileCallback(Lcom/termux/x11/controller/ControlsEditorActivity$LoadCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/x11/controller/ControlsEditorActivity$LoadCallBack<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "openFileCallback":Lcom/termux/x11/controller/ControlsEditorActivity$LoadCallBack;, "Lcom/termux/x11/controller/ControlsEditorActivity$LoadCallBack<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->openFileCallback:Lcom/termux/x11/controller/ControlsEditorActivity$LoadCallBack;

    .line 58
    return-void
.end method

.method public unLoadCustomIcon()Z
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    .line 566
    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getSelectedElement()Lcom/termux/x11/controller/inputcontrols/ControlElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getSelectedElement()Lcom/termux/x11/controller/inputcontrols/ControlElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->getCustomIconId()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "iconId":Ljava/lang/String;
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1, v0}, Lcom/termux/x11/controller/widget/InputControlsView;->counterMapDecrease(Ljava/lang/String;)V

    .line 569
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1}, Lcom/termux/x11/controller/widget/InputControlsView;->getSelectedElement()Lcom/termux/x11/controller/inputcontrols/ControlElement;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setCustomIconId(Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lcom/termux/x11/controller/ControlsEditorActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1, v0}, Lcom/termux/x11/controller/widget/InputControlsView;->counterMapZero(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 572
    .end local v0    # "iconId":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

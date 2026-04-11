.class public Lcom/termux/app/terminal/MenuEntryClient;
.super Ljava/lang/Object;
.source "MenuEntryClient.java"

# interfaces
.implements Lcom/termux/app/terminal/FileBrowser$FileSlectedAdapter;


# instance fields
.field private mConfigPopWindow:Landroid/widget/PopupWindow;

.field private mFileBrowser:Lcom/termux/app/terminal/FileBrowser;

.field private mGrideLayout:Landroid/widget/GridLayout;

.field private mMenutryEntry:Lcom/termux/app/terminal/MenuEntry;

.field private mPop:Landroid/widget/PopupWindow;

.field private mPopWindowConfigContent:Landroid/view/View;

.field private mTermuxActivity:Lcom/termux/app/TermuxActivity;

.field private mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

.field private mainContentView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;)V
    .locals 1
    .param p1, "activity"    # Lcom/termux/app/TermuxActivity;
    .param p2, "termuxTerminalSessionActivityClient"    # Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    .line 42
    iput-object p2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    .line 43
    new-instance v0, Lcom/termux/app/terminal/MenuEntry;

    invoke-direct {v0}, Lcom/termux/app/terminal/MenuEntry;-><init>()V

    iput-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mMenutryEntry:Lcom/termux/app/terminal/MenuEntry;

    .line 44
    invoke-static {}, Lcom/termux/app/terminal/MenuEntry;->loadMenuItems()V

    .line 45
    invoke-direct {p0}, Lcom/termux/app/terminal/MenuEntryClient;->setToolBoxView()V

    .line 46
    invoke-direct {p0}, Lcom/termux/app/terminal/MenuEntryClient;->setToolboxConfig()V

    .line 47
    return-void
.end method

.method private createImageButton(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;
    .locals 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "size"    # I

    .line 242
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 243
    .local v0, "layout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0xa

    if-ge p3, v3, :cond_0

    const/4 v4, -0x2

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    if-ge p3, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 244
    .local v1, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 245
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 247
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 248
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 249
    .local v4, "v":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 250
    .local v5, "vParam":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x40400000    # 3.0f

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 251
    const/16 v8, 0x10

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 252
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    goto :goto_2

    :sswitch_0
    const-string v8, "executable"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    :sswitch_1
    const-string v2, "add"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_3

    :sswitch_2
    const-string v2, "script"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    :sswitch_3
    const-string v2, "terminal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_3

    :sswitch_4
    const-string v2, "short_cut"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_3

    :goto_2
    const/4 v2, -0x1

    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 275
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v8, 0x7f0800b8

    invoke-virtual {v2, v8}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 271
    :pswitch_0
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v8, 0x7f0800a7

    invoke-virtual {v2, v8}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    goto :goto_4

    .line 267
    :pswitch_1
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v8, 0x7f0800e4

    invoke-virtual {v2, v8}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    goto :goto_4

    .line 263
    :pswitch_2
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v8, 0x7f0800e1

    invoke-virtual {v2, v8}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    goto :goto_4

    .line 259
    :pswitch_3
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v8, 0x7f0800c0

    invoke-virtual {v2, v8}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    goto :goto_4

    .line 255
    :pswitch_4
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v8, 0x7f0800d9

    invoke-virtual {v2, v8}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    nop

    .line 277
    :goto_4
    new-instance v2, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 278
    .local v2, "tv":Landroid/widget/TextView;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v6, v8

    .line 279
    .local v6, "tvParam":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 280
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 281
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x78dc6801 -> :sswitch_4
        -0x46686d84 -> :sswitch_3
        -0x361a2f35 -> :sswitch_2
        0x178a1 -> :sswitch_1
        0x2024844a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$updateMenuItems$4(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "id"    # I

    .line 158
    return-void
.end method

.method static synthetic lambda$updateMenuItems$8(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "id"    # I

    .line 188
    return-void
.end method

.method private setToolBoxView()V
    .locals 13

    .line 63
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPop:Landroid/widget/PopupWindow;

    .line 64
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPop:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v2, 0x7f0801af

    invoke-virtual {v1, v2}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/terminal/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 66
    .local v0, "width":I
    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 67
    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 68
    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v1, "mToolBoxView":Landroid/widget/ScrollView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v2, "param":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x31

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v4, Landroid/widget/GridLayout;

    iget-object v5, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v4, v5}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 73
    .local v4, "gridLayout":Landroid/widget/GridLayout;
    iput-object v4, p0, Lcom/termux/app/terminal/MenuEntryClient;->mGrideLayout:Landroid/widget/GridLayout;

    .line 75
    const/4 v5, 0x4

    .line 77
    .local v5, "c":I
    invoke-virtual {v4, v5}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 79
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/GridLayout;->setVerticalScrollBarEnabled(Z)V

    .line 80
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v7, "grideParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x10

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 82
    invoke-virtual {v4, v7}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    const/16 v8, 0x32

    const/16 v9, 0x8

    invoke-virtual {v4, v8, v9, v8, v9}, Landroid/widget/GridLayout;->setPadding(IIII)V

    .line 85
    iget-object v8, p0, Lcom/termux/app/terminal/MenuEntryClient;->mGrideLayout:Landroid/widget/GridLayout;

    invoke-virtual {v8}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 86
    invoke-direct {p0, v0, v4}, Lcom/termux/app/terminal/MenuEntryClient;->updateMenuItems(ILandroid/widget/GridLayout;)V

    .line 88
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    .local v8, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/termux/app/terminal/MenuEntryClient;->mainContentView:Landroid/widget/LinearLayout;

    .line 91
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v9, "mainContentViewLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x11

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 93
    iget-object v11, p0, Lcom/termux/app/terminal/MenuEntryClient;->mainContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 94
    iget-object v6, p0, Lcom/termux/app/terminal/MenuEntryClient;->mainContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v6, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    .local v6, "closeLinearLayout":Landroid/widget/LinearLayout;
    const/4 v11, 0x5

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 97
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v12

    .line 98
    .local v3, "closeLinearLayoutLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0x0

    invoke-virtual {v3, v10, v11, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 99
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v10, Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v10, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 101
    .local v10, "closeButton":Landroid/widget/ImageButton;
    iget-object v11, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v12, 0x7f0800b7

    invoke-virtual {v11, v12}, Lcom/termux/app/TermuxActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    new-instance v11, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda0;

    invoke-direct {v11, p0}, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda0;-><init>(Lcom/termux/app/terminal/MenuEntryClient;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    invoke-virtual {v1, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 109
    iget-object v11, p0, Lcom/termux/app/terminal/MenuEntryClient;->mainContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    iget-object v11, p0, Lcom/termux/app/terminal/MenuEntryClient;->mainContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    iget-object v11, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPop:Landroid/widget/PopupWindow;

    iget-object v12, p0, Lcom/termux/app/terminal/MenuEntryClient;->mainContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 112
    iget-object v11, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v12, 0x7f090312

    invoke-virtual {v11, v12}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda4;

    invoke-direct {v12, p0}, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda4;-><init>(Lcom/termux/app/terminal/MenuEntryClient;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v11, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPop:Landroid/widget/PopupWindow;

    new-instance v12, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda5;

    invoke-direct {v12, p0}, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda5;-><init>(Lcom/termux/app/terminal/MenuEntryClient;)V

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 123
    return-void
.end method

.method private setToolboxConfig()V
    .locals 6

    .line 207
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPopWindowConfigContent:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPopWindowConfigContent:Landroid/view/View;

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 211
    .local v0, "mStartItemEntriesConfig":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPopWindowConfigContent:Landroid/view/View;

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 213
    .local v1, "mAddConfigButton":Landroid/widget/ImageButton;
    new-instance v2, Lcom/termux/app/terminal/FileBrowser;

    iget-object v3, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v2, v3, p0}, Lcom/termux/app/terminal/FileBrowser;-><init>(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/FileBrowser$FileSlectedAdapter;)V

    iput-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mFileBrowser:Lcom/termux/app/terminal/FileBrowser;

    .line 214
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mFileBrowser:Lcom/termux/app/terminal/FileBrowser;

    invoke-virtual {v2}, Lcom/termux/app/terminal/FileBrowser;->init()V

    .line 215
    new-instance v2, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda8;-><init>(Lcom/termux/app/terminal/MenuEntryClient;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPopWindowConfigContent:Landroid/view/View;

    const v3, 0x7f090040

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 219
    .local v2, "command":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPopWindowConfigContent:Landroid/view/View;

    const v4, 0x7f090046

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 220
    .local v3, "title":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPopWindowConfigContent:Landroid/view/View;

    const v5, 0x7f090024

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 221
    .local v4, "okButton":Landroid/widget/Button;
    new-instance v5, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0, v2, v3}, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda9;-><init>(Lcom/termux/app/terminal/MenuEntryClient;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-void
.end method

.method private showAddMenuItem()V
    .locals 5

    .line 51
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mConfigPopWindow:Landroid/widget/PopupWindow;

    .line 52
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mConfigPopWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPopWindowConfigContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "x":I
    const/16 v1, 0x78

    .line 55
    .local v1, "y":I
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2}, Lcom/termux/app/TermuxActivity;->getExtraKeysView()Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2}, Lcom/termux/app/TermuxActivity;->getExtraKeysView()Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mConfigPopWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 59
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mConfigPopWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v4, 0x7f0901e0

    invoke-virtual {v3, v4}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x51

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 60
    return-void
.end method

.method private updateMenuItems(ILandroid/widget/GridLayout;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "gridLayout"    # Landroid/widget/GridLayout;

    .line 126
    div-int/lit8 v0, p1, 0x5

    const-string v1, "script"

    const-string v2, "Reinstall"

    invoke-direct {p0, v1, v2, v0}, Lcom/termux/app/terminal/MenuEntryClient;->createImageButton(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 127
    .local v0, "recover":Landroid/widget/LinearLayout;
    invoke-virtual {p2, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 129
    new-instance v1, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda10;-><init>(Lcom/termux/app/terminal/MenuEntryClient;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/termux/app/terminal/MenuEntry;->getStartItemList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 167
    invoke-static {}, Lcom/termux/app/terminal/MenuEntry;->getStartItemList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/termux/app/terminal/MenuEntry$Entry;

    invoke-virtual {v2}, Lcom/termux/app/terminal/MenuEntry$Entry;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/termux/app/terminal/MenuEntry;->getStartItemList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/termux/app/terminal/MenuEntry$Entry;

    invoke-virtual {v4}, Lcom/termux/app/terminal/MenuEntry$Entry;->getFileName()Ljava/lang/String;

    move-result-object v4

    div-int/lit8 v5, p1, 0x5

    invoke-direct {p0, v2, v4, v5}, Lcom/termux/app/terminal/MenuEntryClient;->createImageButton(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 168
    .local v2, "button":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 169
    invoke-static {}, Lcom/termux/app/terminal/MenuEntry;->getStartItemList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/termux/app/terminal/MenuEntry$Entry;

    invoke-virtual {v3}, Lcom/termux/app/terminal/MenuEntry$Entry;->getCommand()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "command":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 171
    invoke-static {}, Lcom/termux/app/terminal/MenuEntry;->getStartItemList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/termux/app/terminal/MenuEntry$Entry;

    invoke-virtual {v4}, Lcom/termux/app/terminal/MenuEntry$Entry;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 173
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "cmd":Ljava/lang/String;
    new-instance v5, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0, v4}, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda11;-><init>(Lcom/termux/app/terminal/MenuEntryClient;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    move v5, v1

    .line 178
    .local v5, "idx":I
    new-instance v6, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda12;

    invoke-direct {v6, p0, v5}, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda12;-><init>(Lcom/termux/app/terminal/MenuEntryClient;I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 195
    invoke-virtual {p2, v2}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 166
    .end local v2    # "button":Landroid/widget/LinearLayout;
    .end local v3    # "command":Ljava/lang/String;
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v5    # "idx":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v2, 0x7f12004a

    invoke-virtual {v1, v2}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    div-int/lit8 v2, p1, 0x5

    const-string v4, "add"

    invoke-direct {p0, v4, v1, v2}, Lcom/termux/app/terminal/MenuEntryClient;->createImageButton(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 198
    .local v1, "but":Landroid/widget/LinearLayout;
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 199
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 200
    invoke-virtual {p2, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 201
    new-instance v2, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda1;-><init>(Lcom/termux/app/terminal/MenuEntryClient;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void
.end method


# virtual methods
.method synthetic lambda$setToolBoxView$0$com-termux-app-terminal-MenuEntryClient(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 104
    return-void
.end method

.method synthetic lambda$setToolBoxView$1$com-termux-app-terminal-MenuEntryClient(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "x":I
    const/16 v1, 0x78

    .line 115
    .local v1, "y":I
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2}, Lcom/termux/app/TermuxActivity;->getExtraKeysView()Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2}, Lcom/termux/app/TermuxActivity;->getExtraKeysView()Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPop:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v4, 0x7f0901e0

    invoke-virtual {v3, v4}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x51

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 119
    return-void
.end method

.method synthetic lambda$setToolBoxView$2$com-termux-app-terminal-MenuEntryClient()V
    .locals 0

    .line 121
    invoke-static {}, Lcom/termux/app/terminal/MenuEntry;->saveMenuItems()V

    .line 122
    return-void
.end method

.method synthetic lambda$setToolboxConfig$11$com-termux-app-terminal-MenuEntryClient(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 1
    .param p1, "mStartItemEntriesConfig"    # Landroid/widget/LinearLayout;
    .param p2, "v"    # Landroid/view/View;

    .line 216
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mFileBrowser:Lcom/termux/app/terminal/FileBrowser;

    invoke-virtual {v0, p1}, Lcom/termux/app/terminal/FileBrowser;->showFileBrowser(Landroid/view/View;)V

    .line 217
    return-void
.end method

.method synthetic lambda$setToolboxConfig$12$com-termux-app-terminal-MenuEntryClient(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 3
    .param p1, "command"    # Landroid/widget/EditText;
    .param p2, "title"    # Landroid/widget/EditText;
    .param p3, "v"    # Landroid/view/View;

    .line 222
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    new-instance v0, Lcom/termux/app/terminal/MenuEntry$Entry;

    invoke-direct {v0}, Lcom/termux/app/terminal/MenuEntry$Entry;-><init>()V

    .line 228
    .local v0, "entry":Lcom/termux/app/terminal/MenuEntry$Entry;
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/MenuEntry$Entry;->setPath(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/MenuEntry$Entry;->setFileName(Ljava/lang/String;)V

    .line 230
    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/MenuEntry$Entry;->setIconPath(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/MenuEntry$Entry;->setTitlle(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/MenuEntry$Entry;->setCommand(Ljava/lang/String;)V

    .line 233
    const-string v1, "executable"

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/MenuEntry$Entry;->setType(Ljava/lang/String;)V

    .line 234
    invoke-static {v0}, Lcom/termux/app/terminal/MenuEntry;->addMenuEntry(Lcom/termux/app/terminal/MenuEntry$Entry;)V

    .line 235
    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mGrideLayout:Landroid/widget/GridLayout;

    invoke-virtual {v1}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 236
    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v1}, Lcom/termux/app/terminal/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mGrideLayout:Landroid/widget/GridLayout;

    invoke-direct {p0, v1, v2}, Lcom/termux/app/terminal/MenuEntryClient;->updateMenuItems(ILandroid/widget/GridLayout;)V

    .line 237
    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mConfigPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 238
    return-void

    .line 224
    .end local v0    # "entry":Lcom/termux/app/terminal/MenuEntry$Entry;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v1, 0x7f120179

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 225
    return-void
.end method

.method synthetic lambda$updateMenuItems$10$com-termux-app-terminal-MenuEntryClient(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 202
    invoke-direct {p0}, Lcom/termux/app/terminal/MenuEntryClient;->showAddMenuItem()V

    .line 203
    return-void
.end method

.method synthetic lambda$updateMenuItems$3$com-termux-app-terminal-MenuEntryClient(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dInputCheckBox"    # Landroid/widget/CheckBox;
    .param p2, "xInputCheckoutBox"    # Landroid/widget/CheckBox;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "id"    # I

    .line 141
    const/4 v0, 0x1

    .line 142
    .local v0, "option1":I
    const/4 v1, 0x2

    .line 143
    .local v1, "option2":I
    const/4 v2, 0x0

    .line 144
    .local v2, "flags":I
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    or-int/2addr v2, v0

    .line 147
    :cond_0
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    or-int/2addr v2, v1

    .line 150
    :cond_1
    const/4 v3, 0x0

    .line 151
    .local v3, "mode":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 154
    :cond_2
    iget-object v4, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v4, v3}, Lcom/termux/app/TermuxActivity;->reInstallCustomStartScript(Ljava/lang/Integer;)V

    .line 155
    return-void
.end method

.method synthetic lambda$updateMenuItems$5$com-termux-app-terminal-MenuEntryClient(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 130
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 132
    .local v1, "dInputCheckBox":Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v3, 0x7f1202f5

    invoke-virtual {v2, v3}, Lcom/termux/app/TermuxActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    new-instance v2, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v2, v3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 135
    .local v2, "xInputCheckoutBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v4, 0x7f1202f6

    invoke-virtual {v3, v4}, Lcom/termux/app/TermuxActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 139
    iget-object v4, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v5, 0x7f1202cc

    invoke-virtual {v4, v5}, Lcom/termux/app/TermuxActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    .line 140
    const v6, 0x7f1203a6

    invoke-virtual {v5, v6}, Lcom/termux/app/TermuxActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v1, v2}, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda2;-><init>(Lcom/termux/app/terminal/MenuEntryClient;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    .line 156
    const v6, 0x7f12008d

    invoke-virtual {v5, v6}, Lcom/termux/app/TermuxActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 161
    .local v4, "dialog":Landroid/app/AlertDialog;
    iget-object v5, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v6, 0x7f1202ec

    invoke-virtual {v5, v6}, Lcom/termux/app/TermuxActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 164
    iget-object v5, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPop:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 165
    return-void
.end method

.method synthetic lambda$updateMenuItems$6$com-termux-app-terminal-MenuEntryClient(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->getCurrentStoredSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method synthetic lambda$updateMenuItems$7$com-termux-app-terminal-MenuEntryClient(ILandroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "idx"    # I
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "id"    # I

    .line 182
    invoke-static {}, Lcom/termux/app/terminal/MenuEntry;->getStartItemList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mGrideLayout:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 184
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/terminal/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mGrideLayout:Landroid/widget/GridLayout;

    invoke-direct {p0, v0, v1}, Lcom/termux/app/terminal/MenuEntryClient;->updateMenuItems(ILandroid/widget/GridLayout;)V

    .line 185
    return-void
.end method

.method synthetic lambda$updateMenuItems$9$com-termux-app-terminal-MenuEntryClient(ILandroid/view/View;)Z
    .locals 4
    .param p1, "idx"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 179
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v2, 0x7f1202d0

    invoke-virtual {v1, v2}, Lcom/termux/app/TermuxActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    .line 181
    const v3, 0x7f1203a6

    invoke-virtual {v2, v3}, Lcom/termux/app/TermuxActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1}, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda6;-><init>(Lcom/termux/app/terminal/MenuEntryClient;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    .line 186
    const v3, 0x7f12008d

    invoke-virtual {v2, v3}, Lcom/termux/app/TermuxActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/termux/app/terminal/MenuEntryClient$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 190
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 191
    .local v1, "dialog":Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntryClient;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    const v3, 0x7f1202cf

    invoke-virtual {v2, v3}, Lcom/termux/app/TermuxActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 193
    const/4 v2, 0x1

    return v2
.end method

.method public onFileSelected(Lcom/termux/app/terminal/FileInfo;)V
    .locals 3
    .param p1, "fileInfo"    # Lcom/termux/app/terminal/FileInfo;

    .line 290
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPopWindowConfigContent:Landroid/view/View;

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 291
    .local v0, "command":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/termux/app/terminal/MenuEntryClient;->mPopWindowConfigContent:Landroid/view/View;

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 292
    .local v1, "title":Landroid/widget/EditText;
    invoke-virtual {p1}, Lcom/termux/app/terminal/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {p1}, Lcom/termux/app/terminal/FileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 294
    return-void
.end method

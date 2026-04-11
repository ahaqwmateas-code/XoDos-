.class public Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "X11ToolbarViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/utils/X11ToolbarViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageAdapter"
.end annotation


# instance fields
.field final mActivity:Lcom/termux/x11/MainActivity;

.field private final mEventListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Lcom/termux/x11/MainActivity;Landroid/view/View$OnKeyListener;)V
    .locals 0
    .param p1, "activity"    # Lcom/termux/x11/MainActivity;
    .param p2, "listen"    # Landroid/view/View$OnKeyListener;

    .line 30
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    .line 32
    iput-object p2, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mEventListener:Landroid/view/View$OnKeyListener;

    .line 33
    return-void
.end method

.method static synthetic lambda$instantiateItem$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$instantiateItem$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$instantiateItem$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v2"    # Landroid/view/View;
    .param p1, "e2"    # Landroid/view/MotionEvent;

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->releasePointerCapture()V

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$instantiateItem$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 101
    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 96
    :pswitch_2
    const v0, -0x808081

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    nop

    .line 104
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "collection"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .line 113
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 37
    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "collection"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 49
    iget-object v0, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 52
    sget v2, Lcom/termux/x11/R$layout;->display_view_terminal_toolbar_extra_keys:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 53
    .local v2, "layout":Landroid/view/View;
    move-object v3, v2

    check-cast v3, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;

    .line 54
    .local v3, "termuxExtraKeysView":Lcom/termux/x11/extrakeys/TermuxExtraKeysView;
    iget-object v4, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    new-instance v5, Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    iget-object v6, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mEventListener:Landroid/view/View$OnKeyListener;

    iget-object v7, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-direct {v5, v6, v7, v3}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;-><init>(Landroid/view/View$OnKeyListener;Lcom/termux/x11/MainActivity;Lcom/termux/x11/extrakeys/TermuxExtraKeysView;)V

    iput-object v5, v4, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    .line 55
    iget-object v4, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v4}, Lcom/termux/x11/MainActivity;->getDisplayTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    .local v4, "mTerminalToolbarDefaultHeight":I
    nop

    .line 57
    iget-object v5, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    iget-object v5, v5, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    invoke-static {}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->getExtraKeysInfo()Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    iget-object v1, v1, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    invoke-static {}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->getExtraKeysInfo()Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;->getMatrix()[[Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

    move-result-object v1

    array-length v1, v1

    :goto_0
    mul-int v1, v1, v4

    .line 58
    .local v1, "height":I
    iget-object v5, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    iget-object v5, v5, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    invoke-static {}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->getExtraKeysInfo()Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;

    move-result-object v5

    int-to-float v6, v1

    invoke-virtual {v3, v5, v6}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->reload(Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;F)V

    .line 59
    iget-object v5, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    iget-object v5, v5, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    invoke-virtual {v3, v5}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->setExtraKeysViewClient(Lcom/termux/x11/extrakeys/TermuxExtraKeysView$IExtraKeysView;)V

    .line 60
    new-instance v5, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v5}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 61
    new-instance v5, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v3, v5}, Lcom/termux/x11/extrakeys/TermuxExtraKeysView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 62
    .end local v1    # "height":I
    .end local v3    # "termuxExtraKeysView":Lcom/termux/x11/extrakeys/TermuxExtraKeysView;
    .end local v4    # "mTerminalToolbarDefaultHeight":I
    goto :goto_1

    .line 63
    .end local v2    # "layout":Landroid/view/View;
    :cond_1
    sget v2, Lcom/termux/x11/R$layout;->display_view_terminal_toolbar_text_input:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 64
    .restart local v2    # "layout":Landroid/view/View;
    sget v3, Lcom/termux/x11/R$id;->display_terminal_toolbar_text_input:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 65
    .local v3, "editText":Landroid/widget/EditText;
    sget v4, Lcom/termux/x11/R$id;->display_terminal_toolbar_back_button:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 67
    .local v4, "back":Landroid/widget/Button;
    new-instance v5, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v3}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 77
    new-instance v5, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setOnCapturedPointerListener(Landroid/view/View$OnCapturedPointerListener;)V

    .line 82
    new-instance v5, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 84
    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 85
    new-instance v1, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$1;

    const/high16 v5, -0x1000000

    invoke-direct {v1, p0, v5}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$1;-><init>(Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;I)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    new-instance v1, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    .end local v3    # "editText":Landroid/widget/EditText;
    .end local v4    # "back":Landroid/widget/Button;
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 42
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$instantiateItem$2$com-termux-x11-utils-X11ToolbarViewPager$PageAdapter(Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/widget/TextView;
    .param p3, "actionId"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 68
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "textToSend":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "\r"

    .line 70
    :cond_0
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 71
    .local v1, "e":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mEventListener:Landroid/view/View$OnKeyListener;

    iget-object v3, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v3}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 73
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const/4 v2, 0x1

    return v2
.end method

.method synthetic lambda$instantiateItem$4$com-termux-x11-utils-X11ToolbarViewPager$PageAdapter(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getDisplayTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

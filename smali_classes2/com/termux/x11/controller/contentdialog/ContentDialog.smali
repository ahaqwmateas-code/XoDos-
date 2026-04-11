.class public Lcom/termux/x11/controller/contentdialog/ContentDialog;
.super Landroid/app/Dialog;
.source "ContentDialog.java"


# instance fields
.field private final contentView:Landroid/view/View;

.field private onCancelCallback:Ljava/lang/Runnable;

.field private onConfirmCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResId"    # I

    .line 34
    sget v0, Lcom/termux/x11/R$style;->ContentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/termux/x11/R$layout;->content_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    .line 37
    if-lez p2, :cond_0

    .line 38
    iget-object v0, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    sget v1, Lcom/termux/x11/R$id;->FrameLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 39
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 44
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    sget v1, Lcom/termux/x11/R$id;->BTConfirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "confirmButton":Landroid/view/View;
    new-instance v1, Lcom/termux/x11/controller/contentdialog/ContentDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/termux/x11/controller/contentdialog/ContentDialog$$ExternalSyntheticLambda1;-><init>(Lcom/termux/x11/controller/contentdialog/ContentDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v1, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    sget v2, Lcom/termux/x11/R$id;->BTCancel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "cancelButton":Landroid/view/View;
    new-instance v2, Lcom/termux/x11/controller/contentdialog/ContentDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/termux/x11/controller/contentdialog/ContentDialog$$ExternalSyntheticLambda2;-><init>(Lcom/termux/x11/controller/contentdialog/ContentDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v2, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->setContentView(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method public static confirm(Landroid/content/Context;ILjava/lang/Runnable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgResId"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 127
    new-instance v0, Lcom/termux/x11/controller/contentdialog/ContentDialog;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, "dialog":Lcom/termux/x11/controller/contentdialog/ContentDialog;
    invoke-virtual {v0, p1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->setMessage(I)V

    .line 129
    invoke-virtual {v0, p2}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 130
    invoke-virtual {v0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->show()V

    .line 131
    return-void
.end method

.method static synthetic lambda$prompt$2(Landroid/widget/EditText;Lcom/termux/x11/controller/core/Callback;)V
    .locals 2
    .param p0, "editText"    # Landroid/widget/EditText;
    .param p1, "callback"    # Lcom/termux/x11/controller/core/Callback;

    .line 143
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lcom/termux/x11/controller/core/Callback;->call(Ljava/lang/Object;)V

    .line 145
    :cond_0
    return-void
.end method

.method static synthetic lambda$showMultipleChoiceList$3(Landroid/widget/ListView;Lcom/termux/x11/controller/core/Callback;)V
    .locals 4
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "callback"    # Lcom/termux/x11/controller/core/Callback;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 163
    .local v1, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 164
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "i":I
    :cond_1
    invoke-interface {p1, v0}, Lcom/termux/x11/controller/core/Callback;->call(Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public static prompt(Landroid/content/Context;ILjava/lang/String;Lcom/termux/x11/controller/core/Callback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "defaultText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/termux/x11/controller/core/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p3, "callback":Lcom/termux/x11/controller/core/Callback;, "Lcom/termux/x11/controller/core/Callback<Ljava/lang/String;>;"
    new-instance v0, Lcom/termux/x11/controller/contentdialog/ContentDialog;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, "dialog":Lcom/termux/x11/controller/contentdialog/ContentDialog;
    sget v1, Lcom/termux/x11/R$id;->EditText:I

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 137
    .local v1, "editText":Landroid/widget/EditText;
    sget v2, Lcom/termux/x11/R$string;->untitled:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 138
    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 141
    invoke-virtual {v0, p1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->setTitle(I)V

    .line 142
    new-instance v2, Lcom/termux/x11/controller/contentdialog/ContentDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p3}, Lcom/termux/x11/controller/contentdialog/ContentDialog$$ExternalSyntheticLambda3;-><init>(Landroid/widget/EditText;Lcom/termux/x11/controller/core/Callback;)V

    invoke-virtual {v0, v2}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {v0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->show()V

    .line 148
    return-void
.end method

.method public static showMultipleChoiceList(Landroid/content/Context;I[Ljava/lang/String;Lcom/termux/x11/controller/core/Callback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "items"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Ljava/lang/String;",
            "Lcom/termux/x11/controller/core/Callback<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 151
    .local p3, "callback":Lcom/termux/x11/controller/core/Callback;, "Lcom/termux/x11/controller/core/Callback<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    new-instance v0, Lcom/termux/x11/controller/contentdialog/ContentDialog;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;-><init>(Landroid/content/Context;)V

    .line 153
    .local v0, "dialog":Lcom/termux/x11/controller/contentdialog/ContentDialog;
    sget v1, Lcom/termux/x11/R$id;->ListView:I

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 154
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {p0}, Lcom/termux/x11/controller/core/AppUtils;->getPreferredDialogWidth(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 156
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090010

    invoke-direct {v2, p0, v3, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 159
    invoke-virtual {v0, p1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->setTitle(I)V

    .line 160
    new-instance v2, Lcom/termux/x11/controller/contentdialog/ContentDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p3}, Lcom/termux/x11/controller/contentdialog/ContentDialog$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ListView;Lcom/termux/x11/controller/core/Callback;)V

    invoke-virtual {v0, v2}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 169
    invoke-virtual {v0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->show()V

    .line 170
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog;->contentView:Landroid/view/View;

    return-object v0
.end method

.method synthetic lambda$new$0$com-termux-x11-controller-contentdialog-ContentDialog(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog;->onConfirmCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog;->onConfirmCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->dismiss()V

    .line 48
    return-void
.end method

.method synthetic lambda$new$1$com-termux-x11-controller-contentdialog-ContentDialog(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog;->onCancelCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog;->onCancelCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->dismiss()V

    .line 54
    return-void
.end method

.method public setBottomBarText(Ljava/lang/String;)V
    .locals 2
    .param p1, "bottomBarText"    # Ljava/lang/String;

    .line 97
    sget v0, Lcom/termux/x11/R$id;->TVBottomBarText:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    .local v0, "tvBottomBarText":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 104
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :goto_0
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "iconResId"    # I

    .line 77
    sget v0, Lcom/termux/x11/R$id;->IVIcon:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 78
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "msgResId"    # I

    .line 110
    invoke-virtual {p0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->setMessage(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 114
    sget v0, Lcom/termux/x11/R$id;->TVMessage:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    .local v0, "tvMessage":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :goto_0
    return-void
.end method

.method public setOnCancelCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onCancelCallback"    # Ljava/lang/Runnable;

    .line 68
    iput-object p1, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog;->onCancelCallback:Ljava/lang/Runnable;

    .line 69
    return-void
.end method

.method public setOnConfirmCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onConfirmCallback"    # Ljava/lang/Runnable;

    .line 64
    iput-object p1, p0, Lcom/termux/x11/controller/contentdialog/ContentDialog;->onConfirmCallback:Ljava/lang/Runnable;

    .line 65
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .line 73
    invoke-virtual {p0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .line 83
    sget v0, Lcom/termux/x11/R$id;->LLTitleBar:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 84
    .local v0, "titleBar":Landroid/widget/LinearLayout;
    sget v1, Lcom/termux/x11/R$id;->TVTitle:I

    invoke-virtual {p0, v1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 86
    .local v1, "tvTitle":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    :goto_0
    return-void
.end method

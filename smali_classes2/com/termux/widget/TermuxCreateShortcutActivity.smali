.class public Lcom/termux/widget/TermuxCreateShortcutActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TermuxCreateShortcutActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxCreateShortcutActivity"


# instance fields
.field private mCurrentDirectory:Ljava/io/File;

.field private mCurrentFiles:[Ljava/io/File;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private createPinnedShortcut(Landroid/content/Context;Lcom/termux/widget/ShortcutFile;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutFile"    # Lcom/termux/widget/ShortcutFile;

    .line 133
    const-string v0, "TermuxCreateShortcutActivity"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/termux/widget/utils/ShortcutUtils;->getShortcutManager(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    .line 134
    .local v0, "shortcutManager":Landroid/content/pm/ShortcutManager;
    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    sget v2, Lcom/termux/widget/R$string;->msg_request_create_pinned_shortcut:I

    .line 137
    invoke-virtual {p2}, Lcom/termux/widget/ShortcutFile;->getUnExpandedPath()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 136
    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 138
    invoke-virtual {p2, p1, v1}, Lcom/termux/widget/ShortcutFile;->getShortcutInfo(Landroid/content/Context;Z)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    .line 139
    return-void
.end method

.method private createShortcut(Landroid/content/Context;Ljava/io/File;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clickedFile"    # Ljava/io/File;

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "isPinnedShortcutSupported":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const-string v3, "TermuxCreateShortcutActivity"

    const/16 v4, 0x1a

    if-lt v1, v4, :cond_0

    .line 110
    invoke-static {p1, v3, v2}, Lcom/termux/widget/utils/ShortcutUtils;->getShortcutManager(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/pm/ShortcutManager;

    move-result-object v1

    .line 111
    .local v1, "shortcutManager":Landroid/content/pm/ShortcutManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 115
    .end local v1    # "shortcutManager":Landroid/content/pm/ShortcutManager;
    :cond_0
    new-instance v1, Lcom/termux/widget/ShortcutFile;

    invoke-direct {v1, p2}, Lcom/termux/widget/ShortcutFile;-><init>(Ljava/io/File;)V

    .line 118
    .local v1, "shortcutFile":Lcom/termux/widget/ShortcutFile;
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_1

    if-eqz v0, :cond_1

    .line 119
    invoke-direct {p0, p1, v1}, Lcom/termux/widget/TermuxCreateShortcutActivity;->createPinnedShortcut(Landroid/content/Context;Lcom/termux/widget/ShortcutFile;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/termux/widget/TermuxCreateShortcutActivity;->createStaticShortcut(Landroid/content/Context;Lcom/termux/widget/ShortcutFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    goto :goto_2

    .line 122
    :catch_0
    move-exception v4

    .line 123
    .local v4, "e":Ljava/lang/Exception;
    nop

    .line 124
    if-eqz v0, :cond_2

    sget v5, Lcom/termux/widget/R$string;->error_create_pinned_shortcut_failed:I

    goto :goto_1

    :cond_2
    sget v5, Lcom/termux/widget/R$string;->error_create_static_shortcut_failed:I

    .line 125
    :goto_1
    invoke-virtual {v1}, Lcom/termux/widget/ShortcutFile;->getUnExpandedPath()Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v2, v7

    .line 123
    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "message":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {v3, v2, v4}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .end local v2    # "message":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private createStaticShortcut(Landroid/content/Context;Lcom/termux/widget/ShortcutFile;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutFile"    # Lcom/termux/widget/ShortcutFile;

    .line 142
    sget v0, Lcom/termux/widget/R$string;->msg_request_create_static_shortcut:I

    .line 143
    invoke-virtual {p2}, Lcom/termux/widget/ShortcutFile;->getUnExpandedPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 142
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 144
    const/4 v0, -0x1

    invoke-virtual {p2, p1}, Lcom/termux/widget/ShortcutFile;->getStaticShortcutIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/termux/widget/TermuxCreateShortcutActivity;->setResult(ILandroid/content/Intent;)V

    .line 145
    return-void
.end method

.method static synthetic lambda$updateListview$1(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .param p0, "f1"    # Ljava/io/File;
    .param p1, "f2"    # Ljava/io/File;

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateListview(Ljava/io/File;)V
    .locals 5
    .param p1, "directory"    # Ljava/io/File;

    .line 68
    iput-object p1, p0, Lcom/termux/widget/TermuxCreateShortcutActivity;->mCurrentDirectory:Ljava/io/File;

    .line 69
    sget-object v0, Lcom/termux/widget/utils/ShortcutUtils;->SHORTCUT_FILES_FILTER:Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/widget/TermuxCreateShortcutActivity;->mCurrentFiles:[Ljava/io/File;

    .line 71
    iget-object v0, p0, Lcom/termux/widget/TermuxCreateShortcutActivity;->mCurrentFiles:[Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/termux/widget/TermuxCreateShortcutActivity;->mCurrentFiles:[Ljava/io/File;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/termux/widget/TermuxCreateShortcutActivity;->mCurrentFiles:[Ljava/io/File;

    new-instance v1, Lcom/termux/widget/TermuxCreateShortcutActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/termux/widget/TermuxCreateShortcutActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 75
    sget-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_SHORTCUT_SCRIPTS_DIR:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 76
    .local v0, "isTopDir":Z
    xor-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/termux/shared/activity/media/AppCompatActivityUtils;->setShowBackButtonInActionBar(Landroidx/appcompat/app/AppCompatActivity;Z)V

    .line 78
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/termux/widget/TermuxCreateShortcutActivity;->mCurrentFiles:[Ljava/io/File;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 80
    sget-object v1, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_SHORTCUT_SCRIPTS_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 81
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/termux/widget/R$string;->msg_no_shortcut_scripts:I

    .line 82
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/termux/widget/TermuxCreateShortcutActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/termux/widget/TermuxCreateShortcutActivity$$ExternalSyntheticLambda1;-><init>(Lcom/termux/widget/TermuxCreateShortcutActivity;)V

    .line 83
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 84
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/termux/widget/TermuxCreateShortcutActivity;->mCurrentFiles:[Ljava/io/File;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    .line 88
    .local v1, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/termux/widget/TermuxCreateShortcutActivity;->mCurrentFiles:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 90
    iget-object v4, p0, Lcom/termux/widget/TermuxCreateShortcutActivity;->mCurrentFiles:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "/"

    goto :goto_1

    :cond_2
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "i":I
    :cond_3
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    const v4, 0x1020014

    invoke-direct {v2, p0, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 93
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/termux/widget/TermuxCreateShortcutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    return-void
.end method


# virtual methods
.method synthetic lambda$onResume$0$com-termux-widget-TermuxCreateShortcutActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 56
    move-object v0, p0

    .line 57
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/termux/widget/TermuxCreateShortcutActivity;->mCurrentFiles:[Ljava/io/File;

    aget-object v1, v1, p3

    .line 58
    .local v1, "clickedFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-direct {p0, v1}, Lcom/termux/widget/TermuxCreateShortcutActivity;->updateListview(Ljava/io/File;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/termux/widget/TermuxCreateShortcutActivity;->createShortcut(Landroid/content/Context;Ljava/io/File;)V

    .line 62
    invoke-virtual {p0}, Lcom/termux/widget/TermuxCreateShortcutActivity;->finish()V

    .line 64
    :goto_0
    return-void
.end method

.method synthetic lambda$updateListview$2$com-termux-widget-TermuxCreateShortcutActivity(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 83
    invoke-virtual {p0}, Lcom/termux/widget/TermuxCreateShortcutActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/termux/widget/R$layout;->activity_termux_create_shortcut:I

    invoke-virtual {p0, v0}, Lcom/termux/widget/TermuxCreateShortcutActivity;->setContentView(I)V

    .line 37
    sget v0, Lcom/termux/widget/R$id;->list:I

    invoke-virtual {p0, v0}, Lcom/termux/widget/TermuxCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/termux/widget/TermuxCreateShortcutActivity;->mListView:Landroid/widget/ListView;

    .line 39
    sget v0, Lcom/termux/shared/R$id;->toolbar:I

    invoke-static {p0, v0}, Lcom/termux/shared/activity/media/AppCompatActivityUtils;->setToolbar(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 40
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/termux/widget/TermuxCreateShortcutActivity;->mCurrentDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/widget/TermuxCreateShortcutActivity;->mCurrentDirectory:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/termux/widget/TermuxCreateShortcutActivity;->updateListview(Ljava/io/File;)V

    .line 100
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .line 44
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 46
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->isTermuxAppAccessible(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "errmsg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 48
    const-string v1, "TermuxCreateShortcutActivity"

    invoke-static {p0, v1, v0}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/termux/widget/TermuxCreateShortcutActivity;->finish()V

    .line 50
    return-void

    .line 53
    :cond_0
    sget-object v1, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_SHORTCUT_SCRIPTS_DIR:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/termux/widget/TermuxCreateShortcutActivity;->updateListview(Ljava/io/File;)V

    .line 55
    iget-object v1, p0, Lcom/termux/widget/TermuxCreateShortcutActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/termux/widget/TermuxCreateShortcutActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/termux/widget/TermuxCreateShortcutActivity$$ExternalSyntheticLambda2;-><init>(Lcom/termux/widget/TermuxCreateShortcutActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    return-void
.end method

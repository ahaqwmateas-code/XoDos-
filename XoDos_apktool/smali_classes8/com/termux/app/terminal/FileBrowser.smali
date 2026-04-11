.class public Lcom/termux/app/terminal/FileBrowser;
.super Ljava/lang/Object;
.source "FileBrowser.java"

# interfaces
.implements Lcom/termux/app/terminal/FileAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/terminal/FileBrowser$FileSlectedAdapter;
    }
.end annotation


# instance fields
.field private fileSlectedAdapter:Lcom/termux/app/terminal/FileBrowser$FileSlectedAdapter;

.field private mCurrentPath:Ljava/lang/String;

.field private mFileAdapter:Lcom/termux/app/terminal/FileAdapter;

.field private mFileBrowserView:Landroid/view/View;

.field private mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/termux/app/terminal/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPopWindowWidth:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSearchEditText:Landroid/widget/TextView;

.field private mTermuxActivity:Lcom/termux/app/TermuxActivity;

.field private popWindowHeight:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "/data/data/com.termux/files"

    iput-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mCurrentPath:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/FileBrowser$FileSlectedAdapter;)V
    .locals 1
    .param p1, "activity"    # Lcom/termux/app/TermuxActivity;
    .param p2, "ada"    # Lcom/termux/app/terminal/FileBrowser$FileSlectedAdapter;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "/data/data/com.termux/files"

    iput-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mCurrentPath:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/termux/app/terminal/FileBrowser;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    .line 45
    iput-object p2, p0, Lcom/termux/app/terminal/FileBrowser;->fileSlectedAdapter:Lcom/termux/app/terminal/FileBrowser$FileSlectedAdapter;

    .line 46
    const/16 v0, 0xd2

    iput v0, p0, Lcom/termux/app/terminal/FileBrowser;->mPopWindowWidth:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/termux/app/terminal/FileBrowser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/terminal/FileBrowser;

    .line 25
    iget-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mCurrentPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/termux/app/terminal/FileBrowser;)Lcom/termux/app/terminal/FileAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/terminal/FileBrowser;

    .line 25
    iget-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mFileAdapter:Lcom/termux/app/terminal/FileAdapter;

    return-object v0
.end method

.method private getFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/termux/app/terminal/FileInfo;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "fileInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/termux/app/terminal/FileInfo;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 92
    .local v2, "files":[Ljava/io/File;
    new-instance v3, Lcom/termux/app/terminal/FileInfo;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, ".."

    invoke-direct {v3, v6, v4, v5}, Lcom/termux/app/terminal/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    .local v3, "parentInfo":Lcom/termux/app/terminal/FileInfo;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 95
    new-instance v5, Lcom/termux/app/terminal/FileInfo;

    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/termux/app/terminal/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    .local v5, "f":Lcom/termux/app/terminal/FileInfo;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v5    # "f":Lcom/termux/app/terminal/FileInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    .end local v4    # "i":I
    :cond_0
    return-object v0
.end method

.method private loadFiles(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Lcom/termux/app/terminal/FileBrowser;->getFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 83
    .local v0, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/termux/app/terminal/FileInfo;>;"
    iget-object v1, p0, Lcom/termux/app/terminal/FileBrowser;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 84
    iget-object v1, p0, Lcom/termux/app/terminal/FileBrowser;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    iget-object v1, p0, Lcom/termux/app/terminal/FileBrowser;->mFileAdapter:Lcom/termux/app/terminal/FileAdapter;

    invoke-virtual {v1}, Lcom/termux/app/terminal/FileAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method


# virtual methods
.method public hideFileBrowser()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 115
    return-void

    .line 112
    :cond_1
    :goto_0
    return-void
.end method

.method public init()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mFileBrowserView:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mFileBrowserView:Landroid/view/View;

    const v1, 0x7f090285

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    iget-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mFileBrowserView:Landroid/view/View;

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mSearchEditText:Landroid/widget/TextView;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mFileList:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Lcom/termux/app/terminal/FileAdapter;

    iget-object v1, p0, Lcom/termux/app/terminal/FileBrowser;->mFileList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lcom/termux/app/terminal/FileAdapter;-><init>(Ljava/util/ArrayList;Lcom/termux/app/terminal/FileAdapter$OnItemClickListener;)V

    iput-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mFileAdapter:Lcom/termux/app/terminal/FileAdapter;

    .line 56
    iget-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/termux/app/terminal/FileBrowser;->mFileAdapter:Lcom/termux/app/terminal/FileAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    iget-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/termux/app/terminal/FileBrowser;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 59
    iget-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mSearchEditText:Landroid/widget/TextView;

    new-instance v1, Lcom/termux/app/terminal/FileBrowser$1;

    invoke-direct {v1, p0}, Lcom/termux/app/terminal/FileBrowser$1;-><init>(Lcom/termux/app/terminal/FileBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    const-string v0, "/data/data/com.termux/files"

    invoke-direct {p0, v0}, Lcom/termux/app/terminal/FileBrowser;->loadFiles(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onItemClick(Lcom/termux/app/terminal/FileInfo;)V
    .locals 4
    .param p1, "fileInfo"    # Lcom/termux/app/terminal/FileInfo;

    .line 119
    invoke-virtual {p1}, Lcom/termux/app/terminal/FileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/termux/app/terminal/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/data/com.termux/files"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/termux/app/terminal/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, "pathIdx":I
    invoke-virtual {p1}, Lcom/termux/app/terminal/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "path":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/termux/app/terminal/FileBrowser;->loadFiles(Ljava/lang/String;)V

    .line 128
    iput-object v1, p0, Lcom/termux/app/terminal/FileBrowser;->mCurrentPath:Ljava/lang/String;

    .line 129
    .end local v0    # "pathIdx":I
    .end local v1    # "path":Ljava/lang/String;
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/termux/app/terminal/FileInfo;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {p1}, Lcom/termux/app/terminal/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/app/terminal/FileBrowser;->loadFiles(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/termux/app/terminal/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mCurrentPath:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/termux/app/terminal/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "currentFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v1

    if-nez v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/termux/app/terminal/FileBrowser;->mTermuxActivity:Lcom/termux/app/TermuxActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/termux/app/terminal/FileInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not executable file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 138
    return-void

    .line 140
    :cond_3
    invoke-virtual {p1}, Lcom/termux/app/terminal/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/app/terminal/FileBrowser;->mCurrentPath:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/termux/app/terminal/FileBrowser;->fileSlectedAdapter:Lcom/termux/app/terminal/FileBrowser$FileSlectedAdapter;

    if-eqz v1, :cond_4

    .line 142
    iget-object v1, p0, Lcom/termux/app/terminal/FileBrowser;->fileSlectedAdapter:Lcom/termux/app/terminal/FileBrowser$FileSlectedAdapter;

    invoke-interface {v1, p1}, Lcom/termux/app/terminal/FileBrowser$FileSlectedAdapter;->onFileSelected(Lcom/termux/app/terminal/FileInfo;)V

    .line 145
    .end local v0    # "currentFile":Ljava/io/File;
    :cond_4
    :goto_0
    return-void
.end method

.method public showFileBrowser(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/termux/x11/controller/core/AppUtils;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/termux/x11/controller/core/AppUtils;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/termux/app/terminal/FileBrowser;->popWindowHeight:I

    .line 104
    iget v0, p0, Lcom/termux/app/terminal/FileBrowser;->popWindowHeight:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    invoke-static {v0}, Lcom/termux/x11/controller/core/UnitUtils;->pxToDp(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/termux/app/terminal/FileBrowser;->popWindowHeight:I

    .line 105
    iget-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mFileBrowserView:Landroid/view/View;

    iget v1, p0, Lcom/termux/app/terminal/FileBrowser;->mPopWindowWidth:I

    iget v2, p0, Lcom/termux/app/terminal/FileBrowser;->popWindowHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/termux/x11/controller/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/FileBrowser;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 108
    return-void
.end method

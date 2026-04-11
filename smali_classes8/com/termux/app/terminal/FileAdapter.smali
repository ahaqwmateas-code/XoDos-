.class public Lcom/termux/app/terminal/FileAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/terminal/FileAdapter$OnItemClickListener;,
        Lcom/termux/app/terminal/FileAdapter$FileViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/termux/app/terminal/FileAdapter$FileViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEntireFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/app/terminal/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/termux/app/terminal/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPath:Ljava/lang/String;

.field private final mListener:Lcom/termux/app/terminal/FileAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/termux/app/terminal/FileAdapter$OnItemClickListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/termux/app/terminal/FileAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/termux/app/terminal/FileInfo;",
            ">;",
            "Lcom/termux/app/terminal/FileAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 24
    .local p1, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/termux/app/terminal/FileInfo;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/terminal/FileAdapter;->mEntireFileList:Ljava/util/List;

    .line 22
    const-string v0, "/data/data/com.termux/files"

    iput-object v0, p0, Lcom/termux/app/terminal/FileAdapter;->mLastPath:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/termux/app/terminal/FileAdapter;->mFileList:Ljava/util/ArrayList;

    .line 26
    iput-object p2, p0, Lcom/termux/app/terminal/FileAdapter;->mListener:Lcom/termux/app/terminal/FileAdapter$OnItemClickListener;

    .line 27
    iget-object v0, p0, Lcom/termux/app/terminal/FileAdapter;->mEntireFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    iget-object v0, p0, Lcom/termux/app/terminal/FileAdapter;->mEntireFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/termux/app/terminal/FileAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/terminal/FileAdapter;

    .line 18
    iget-object v0, p0, Lcom/termux/app/terminal/FileAdapter;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/termux/app/terminal/FileAdapter;)Lcom/termux/app/terminal/FileAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/terminal/FileAdapter;

    .line 18
    iget-object v0, p0, Lcom/termux/app/terminal/FileAdapter;->mListener:Lcom/termux/app/terminal/FileAdapter$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public filter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "filteredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/termux/app/terminal/FileInfo;>;"
    iget-object v1, p0, Lcom/termux/app/terminal/FileAdapter;->mLastPath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/termux/app/terminal/FileAdapter;->mEntireFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 58
    iget-object v1, p0, Lcom/termux/app/terminal/FileAdapter;->mEntireFileList:Ljava/util/List;

    iget-object v2, p0, Lcom/termux/app/terminal/FileAdapter;->mFileList:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    iput-object p2, p0, Lcom/termux/app/terminal/FileAdapter;->mLastPath:Ljava/lang/String;

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/termux/app/terminal/FileAdapter;->mEntireFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/termux/app/terminal/FileInfo;

    .line 62
    .local v2, "fileInfo":Lcom/termux/app/terminal/FileInfo;
    invoke-virtual {v2}, Lcom/termux/app/terminal/FileInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 63
    invoke-virtual {v2}, Lcom/termux/app/terminal/FileInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v2    # "fileInfo":Lcom/termux/app/terminal/FileInfo;
    :cond_2
    goto :goto_0

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/termux/app/terminal/FileAdapter;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 68
    iget-object v1, p0, Lcom/termux/app/terminal/FileAdapter;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    invoke-virtual {p0}, Lcom/termux/app/terminal/FileAdapter;->notifyDataSetChanged()V

    .line 70
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/termux/app/terminal/FileAdapter;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/termux/app/terminal/FileAdapter$FileViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/termux/app/terminal/FileAdapter;->onBindViewHolder(Lcom/termux/app/terminal/FileAdapter$FileViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/termux/app/terminal/FileAdapter$FileViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/termux/app/terminal/FileAdapter$FileViewHolder;
    .param p2, "position"    # I

    .line 40
    iget-object v0, p0, Lcom/termux/app/terminal/FileAdapter;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/app/terminal/FileInfo;

    .line 41
    .local v0, "fileInfo":Lcom/termux/app/terminal/FileInfo;
    invoke-virtual {p1, v0}, Lcom/termux/app/terminal/FileAdapter$FileViewHolder;->bind(Lcom/termux/app/terminal/FileInfo;)V

    .line 42
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/termux/app/terminal/FileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/termux/app/terminal/FileAdapter$FileViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/termux/app/terminal/FileAdapter$FileViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/termux/app/terminal/FileAdapter$FileViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/termux/app/terminal/FileAdapter$FileViewHolder;-><init>(Lcom/termux/app/terminal/FileAdapter;Landroid/view/View;)V

    return-object v1
.end method

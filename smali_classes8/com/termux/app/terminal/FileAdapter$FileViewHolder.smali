.class public Lcom/termux/app/terminal/FileAdapter$FileViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/terminal/FileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileViewHolder"
.end annotation


# instance fields
.field private final fileNameTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/termux/app/terminal/FileAdapter;


# direct methods
.method public constructor <init>(Lcom/termux/app/terminal/FileAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/app/terminal/FileAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 76
    iput-object p1, p0, Lcom/termux/app/terminal/FileAdapter$FileViewHolder;->this$0:Lcom/termux/app/terminal/FileAdapter;

    .line 77
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 78
    const v0, 0x7f0901a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/termux/app/terminal/FileAdapter$FileViewHolder;->fileNameTextView:Landroid/widget/TextView;

    .line 79
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method


# virtual methods
.method public bind(Lcom/termux/app/terminal/FileInfo;)V
    .locals 2
    .param p1, "fileInfo"    # Lcom/termux/app/terminal/FileInfo;

    .line 83
    iget-object v0, p0, Lcom/termux/app/terminal/FileAdapter$FileViewHolder;->fileNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/termux/app/terminal/FileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 88
    invoke-virtual {p0}, Lcom/termux/app/terminal/FileAdapter$FileViewHolder;->getAdapterPosition()I

    move-result v0

    .line 89
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/termux/app/terminal/FileAdapter$FileViewHolder;->this$0:Lcom/termux/app/terminal/FileAdapter;

    invoke-static {v1}, Lcom/termux/app/terminal/FileAdapter;->access$000(Lcom/termux/app/terminal/FileAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/app/terminal/FileInfo;

    .line 91
    .local v1, "fileInfo":Lcom/termux/app/terminal/FileInfo;
    iget-object v2, p0, Lcom/termux/app/terminal/FileAdapter$FileViewHolder;->this$0:Lcom/termux/app/terminal/FileAdapter;

    invoke-static {v2}, Lcom/termux/app/terminal/FileAdapter;->access$100(Lcom/termux/app/terminal/FileAdapter;)Lcom/termux/app/terminal/FileAdapter$OnItemClickListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/termux/app/terminal/FileAdapter$OnItemClickListener;->onItemClick(Lcom/termux/app/terminal/FileInfo;)V

    .line 93
    .end local v1    # "fileInfo":Lcom/termux/app/terminal/FileInfo;
    :cond_0
    return-void
.end method

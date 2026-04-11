.class public Lcom/termux/app/terminal/StartEntryArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StartEntryArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/termux/app/terminal/StartEntry$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/app/terminal/StartEntry$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/termux/app/terminal/StartEntry$Entry;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/termux/app/terminal/StartEntry$Entry;>;"
    const v0, 0x1090008

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 18
    iput-object p1, p0, Lcom/termux/app/terminal/StartEntryArrayAdapter;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/termux/app/terminal/StartEntryArrayAdapter;->mDataList:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 36
    iget-object v0, p0, Lcom/termux/app/terminal/StartEntryArrayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, "view":Landroid/view/View;
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 40
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/termux/app/terminal/StartEntryArrayAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/termux/app/terminal/StartEntry$Entry;

    .line 41
    .local v3, "item":Lcom/termux/app/terminal/StartEntry$Entry;
    invoke-virtual {v3}, Lcom/termux/app/terminal/StartEntry$Entry;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 24
    iget-object v0, p0, Lcom/termux/app/terminal/StartEntryArrayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 25
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 26
    .local v1, "view":Landroid/view/View;
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 28
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/termux/app/terminal/StartEntryArrayAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/termux/app/terminal/StartEntry$Entry;

    .line 29
    .local v3, "item":Lcom/termux/app/terminal/StartEntry$Entry;
    invoke-virtual {v3}, Lcom/termux/app/terminal/StartEntry$Entry;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-object v1
.end method

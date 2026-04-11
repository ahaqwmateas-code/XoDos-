.class Lcom/termux/app/XoDosFileManager$FileAdapter;
.super Landroid/widget/ArrayAdapter;
.source "XoDosFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/XoDosFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private files:[Ljava/io/File;

.field final synthetic this$0:Lcom/termux/app/XoDosFileManager;


# direct methods
.method public constructor <init>(Lcom/termux/app/XoDosFileManager;Landroid/content/Context;[Ljava/io/File;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "files"    # [Ljava/io/File;

    .line 778
    iput-object p1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    .line 779
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 780
    iput-object p2, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->context:Landroid/content/Context;

    .line 781
    iput-object p3, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->files:[Ljava/io/File;

    .line 782
    return-void
.end method

.method private createFileItemView()Landroid/view/View;
    .locals 9

    .line 825
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 826
    .local v0, "row":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 827
    const/16 v2, 0x1e

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 828
    const v2, -0xcccccd

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 829
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    new-instance v2, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 836
    .local v2, "icon":Landroid/widget/ImageView;
    const v6, 0x1020006

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 837
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x50

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 838
    .local v6, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v1, v1, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 839
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 843
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->context:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 844
    .local v3, "textContainer":Landroid/widget/LinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 845
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v1, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    new-instance v1, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 851
    .local v1, "name":Landroid/widget/TextView;
    const v7, 0x1020014

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setId(I)V

    .line 852
    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 853
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 854
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 861
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 862
    .local v7, "size":Landroid/widget/TextView;
    const v8, 0x1020015

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setId(I)V

    .line 863
    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 864
    const v8, -0x333334

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 865
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 869
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 871
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 873
    return-object v0
.end method

.method private formatFileSize(J)Ljava/lang/String;
    .locals 9
    .param p1, "size"    # J

    .line 964
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-string v0, "0 B"

    return-object v0

    .line 965
    :cond_0
    const-string v0, "GB"

    const-string v1, "TB"

    const-string v2, "B"

    const-string v3, "KB"

    const-string v4, "MB"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, "units":[Ljava/lang/String;
    long-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    double-to-int v1, v1

    .line 967
    .local v1, "digitGroups":I
    long-to-double v5, p1

    int-to-double v7, v1

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aget-object v3, v0, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v2, "%.1f %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setExeIcon(Landroid/widget/ImageView;Ljava/io/File;)Z
    .locals 6
    .param p1, "iconView"    # Landroid/widget/ImageView;
    .param p2, "exeFile"    # Ljava/io/File;

    .line 943
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$400(Lcom/termux/app/XoDosFileManager;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".png"

    const-string v4, ".exe"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 944
    .local v0, "iconFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 946
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 947
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 948
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    const/4 v2, 0x1

    return v2

    .line 947
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    goto :goto_0

    .line 951
    :catch_0
    move-exception v1

    .line 952
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IconLoad"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 955
    :cond_1
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$500(Lcom/termux/app/XoDosFileManager;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 956
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$500(Lcom/termux/app/XoDosFileManager;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 957
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p2, v3, v2}, Lcom/termux/app/XoDosFileManager;->access$600(Lcom/termux/app/XoDosFileManager;Ljava/io/File;Ljava/lang/String;Z)V

    .line 960
    :cond_2
    :goto_1
    return v2
.end method

.method private setFileIcon(Landroid/widget/ImageView;Ljava/io/File;)V
    .locals 3
    .param p1, "iconView"    # Landroid/widget/ImageView;
    .param p2, "file"    # Ljava/io/File;

    .line 877
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v0}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "folder"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 879
    return-void

    .line 882
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "name":Ljava/lang/String;
    const-string v1, ".exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 885
    invoke-direct {p0, p1, p2}, Lcom/termux/app/XoDosFileManager$FileAdapter;->setExeIcon(Landroid/widget/ImageView;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 886
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "exe"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 888
    :cond_1
    const-string v1, ".xiso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 889
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "xiso"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 890
    :cond_2
    const-string v1, ".iso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, ".xbe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_f

    .line 892
    :cond_3
    const-string v1, ".cue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, ".bin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, ".cso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_e

    .line 894
    :cond_4
    const-string v1, ".deb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 895
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "deb"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 896
    :cond_5
    const-string v1, ".sh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, ".bash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, ".zsh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 897
    const-string v1, ".py"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, ".pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, ".rb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_d

    .line 899
    :cond_6
    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, ".wav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, ".ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 900
    const-string v1, ".flac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, ".m4a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, ".aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 901
    const-string v1, ".wma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_c

    .line 903
    :cond_7
    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, ".conf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 904
    const-string v1, ".ini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, ".md"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_b

    .line 906
    :cond_8
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 907
    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, ".bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, ".webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_a

    .line 909
    :cond_9
    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, ".avi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, ".mkv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 910
    const-string v1, ".mov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, ".wmv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, ".flv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_9

    .line 912
    :cond_a
    const-string v1, ".pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 913
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "pdf"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 914
    :cond_b
    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, ".rar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, ".7z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 915
    const-string v1, ".tar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, ".gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, ".tar.xz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 916
    const-string v1, ".tar.gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_8

    .line 918
    :cond_c
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, ".yml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 919
    const-string v1, ".yaml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, ".properties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_7

    .line 921
    :cond_d
    const-string v1, ".doc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, ".docx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, ".odt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_6

    .line 923
    :cond_e
    const-string v1, ".xls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, ".xlsx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, ".ods"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_5

    .line 925
    :cond_f
    const-string v1, ".ppt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, ".pptx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, ".odp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_4

    .line 927
    :cond_10
    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, ".sqlite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, ".mdb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_3

    .line 929
    :cond_11
    const-string v1, ".ttf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, ".otf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, ".woff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_2

    .line 931
    :cond_12
    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, ".htm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, ".css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 932
    const-string v1, ".js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, ".php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1

    .line 934
    :cond_13
    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, ".c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, ".cpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 935
    const-string v1, ".h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, ".cs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, ".swift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_0

    .line 938
    :cond_14
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "default"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 936
    :cond_15
    :goto_0
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "programming"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 933
    :cond_16
    :goto_1
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "web"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 930
    :cond_17
    :goto_2
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "font"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 928
    :cond_18
    :goto_3
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "database"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 926
    :cond_19
    :goto_4
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "presentation"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 924
    :cond_1a
    :goto_5
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "spreadsheet"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 922
    :cond_1b
    :goto_6
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "document"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 920
    :cond_1c
    :goto_7
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "config"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 917
    :cond_1d
    :goto_8
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "archive"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 911
    :cond_1e
    :goto_9
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "video"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 908
    :cond_1f
    :goto_a
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "image"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_10

    .line 905
    :cond_20
    :goto_b
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "text"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_10

    .line 902
    :cond_21
    :goto_c
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "audio"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_10

    .line 898
    :cond_22
    :goto_d
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "script"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_10

    .line 893
    :cond_23
    :goto_e
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "cue"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_10

    .line 891
    :cond_24
    :goto_f
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v1}, Lcom/termux/app/XoDosFileManager;->access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "iso"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 940
    :cond_25
    :goto_10
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 786
    move-object v0, p2

    .line 789
    .local v0, "row":Landroid/view/View;
    if-nez v0, :cond_0

    .line 791
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager$FileAdapter;->createFileItemView()Landroid/view/View;

    move-result-object v0

    .line 792
    new-instance v1, Lcom/termux/app/XoDosFileManager$FileHolder;

    invoke-direct {v1}, Lcom/termux/app/XoDosFileManager$FileHolder;-><init>()V

    .line 793
    .local v1, "holder":Lcom/termux/app/XoDosFileManager$FileHolder;
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/termux/app/XoDosFileManager$FileHolder;->icon:Landroid/widget/ImageView;

    .line 794
    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/termux/app/XoDosFileManager$FileHolder;->name:Landroid/widget/TextView;

    .line 795
    const v2, 0x1020015

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/termux/app/XoDosFileManager$FileHolder;->size:Landroid/widget/TextView;

    .line 796
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 798
    .end local v1    # "holder":Lcom/termux/app/XoDosFileManager$FileHolder;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/app/XoDosFileManager$FileHolder;

    .line 801
    .restart local v1    # "holder":Lcom/termux/app/XoDosFileManager$FileHolder;
    :goto_0
    iget-object v2, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->files:[Ljava/io/File;

    aget-object v2, v2, p1

    .line 802
    .local v2, "file":Ljava/io/File;
    iget-object v3, v1, Lcom/termux/app/XoDosFileManager$FileHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    iget-object v3, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v3}, Lcom/termux/app/XoDosFileManager;->access$000(Lcom/termux/app/XoDosFileManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v3}, Lcom/termux/app/XoDosFileManager;->access$100(Lcom/termux/app/XoDosFileManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 806
    const v3, -0xaaaaab

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 808
    :cond_1
    const v3, -0xcccccd

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 812
    :goto_1
    iget-object v3, v1, Lcom/termux/app/XoDosFileManager$FileHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2}, Lcom/termux/app/XoDosFileManager$FileAdapter;->setFileIcon(Landroid/widget/ImageView;Ljava/io/File;)V

    .line 815
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 816
    iget-object v3, v1, Lcom/termux/app/XoDosFileManager$FileHolder;->size:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/termux/app/XoDosFileManager$FileAdapter;->this$0:Lcom/termux/app/XoDosFileManager;

    invoke-static {v4}, Lcom/termux/app/XoDosFileManager;->access$200(Lcom/termux/app/XoDosFileManager;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120149

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 818
    :cond_2
    iget-object v3, v1, Lcom/termux/app/XoDosFileManager$FileHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/termux/app/XoDosFileManager$FileAdapter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    :goto_2
    return-object v0
.end method

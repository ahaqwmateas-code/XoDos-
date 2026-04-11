.class public Lcom/termux/app/XoDosFileManager;
.super Ljava/lang/Object;
.source "XoDosFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/XoDosFileManager$FileAdapter;,
        Lcom/termux/app/XoDosFileManager$FileHolder;
    }
.end annotation


# static fields
.field private static final LAST_PATH_KEY:Ljava/lang/String; = "last_visited_path"

.field private static final PREFS_NAME:Ljava/lang/String; = "XoDosFileManagerPrefs"


# instance fields
.field private final DESKTOP_DIR:Ljava/io/File;

.field private final ICON_DIR:Ljava/io/File;

.field private final TERMUX_DATA:Ljava/lang/String;

.field private final TERMUX_HOME:Ljava/lang/String;

.field private copiedFile:Ljava/io/File;

.field private currentDir:Ljava/io/File;

.field private dialog:Landroid/app/AlertDialog;

.field private fileAdapter:Lcom/termux/app/XoDosFileManager$FileAdapter;

.field private fileListView:Landroid/widget/ListView;

.field private generatingIcons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isSelectionMode:Z

.field private mContext:Landroid/content/Context;

.field private pasteButton:Landroid/widget/Button;

.field private pathTextView:Landroid/widget/TextView;

.field private selectButton:Landroid/widget/Button;

.field private selectedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "/data/data/com.termux/files/home"

    iput-object v0, p0, Lcom/termux/app/XoDosFileManager;->TERMUX_HOME:Ljava/lang/String;

    .line 49
    const-string v0, "/data/data/com.termux"

    iput-object v0, p0, Lcom/termux/app/XoDosFileManager;->TERMUX_DATA:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/Desktop/shortcuts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/termux/app/XoDosFileManager;->DESKTOP_DIR:Ljava/io/File;

    .line 51
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/ico"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/termux/app/XoDosFileManager;->ICON_DIR:Ljava/io/File;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/termux/app/XoDosFileManager;->generatingIcons:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/app/XoDosFileManager;->copiedFile:Ljava/io/File;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/XoDosFileManager;->isSelectionMode:Z

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    .line 72
    iput-object p1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 73
    const-string v1, "XoDosFileManagerPrefs"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/XoDosFileManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 76
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_visited_path"

    const-string v2, "/data/data/com.termux/files/home/Downloads"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "lastPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    .line 78
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->initializeAndroidIcons()V

    .line 86
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->DESKTOP_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->DESKTOP_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->ICON_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->ICON_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 88
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/termux/app/XoDosFileManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/XoDosFileManager;

    .line 37
    iget-boolean v0, p0, Lcom/termux/app/XoDosFileManager;->isSelectionMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/termux/app/XoDosFileManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/XoDosFileManager;

    .line 37
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/termux/app/XoDosFileManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/XoDosFileManager;

    .line 37
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/termux/app/XoDosFileManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/XoDosFileManager;

    .line 37
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/termux/app/XoDosFileManager;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/XoDosFileManager;

    .line 37
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->ICON_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$500(Lcom/termux/app/XoDosFileManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/XoDosFileManager;

    .line 37
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->generatingIcons:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/termux/app/XoDosFileManager;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/XoDosFileManager;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/app/XoDosFileManager;->generateExeIcon(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method private changePermissionsForSelectedFiles()V
    .locals 2

    .line 1297
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda24;-><init>(Lcom/termux/app/XoDosFileManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1329
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1330
    return-void
.end method

.method private changePermissionsRecursive(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 1262
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0, p1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda40;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1292
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1293
    return-void
.end method

.method private closeAndShowTerminal()V
    .locals 1

    .line 1643
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/termux/app/TermuxActivity;

    if-eqz v0, :cond_1

    .line 1647
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/termux/app/TermuxActivity;

    invoke-direct {p0, v0}, Lcom/termux/app/XoDosFileManager;->showTerminalView(Lcom/termux/app/TermuxActivity;)V

    .line 1649
    :cond_1
    return-void
.end method

.method private copyFileOrDirectory(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .param p1, "source"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;

    .line 655
    const-string v0, "FileCopy"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 656
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return v1

    .line 661
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, "children":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 663
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 664
    .local v6, "child":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v7, v8}, Lcom/termux/app/XoDosFileManager;->copyFileOrDirectory(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    .line 668
    .local v7, "success":Z
    if-nez v7, :cond_1

    .line 669
    return v1

    .line 663
    .end local v6    # "child":Ljava/lang/String;
    .end local v7    # "success":Z
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 673
    :cond_2
    return v3

    .line 676
    .end local v2    # "children":[Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 679
    .local v4, "out":Ljava/io/FileOutputStream;
    const/16 v5, 0x2000

    :try_start_2
    new-array v5, v5, [B

    .line 681
    .local v5, "buffer":[B
    :goto_1
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "length":I
    if-lez v6, :cond_4

    .line 682
    invoke-virtual {v4, v5, v1, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 684
    .end local v5    # "buffer":[B
    .end local v7    # "length":I
    :cond_4
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v4    # "out":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 685
    .end local v2    # "in":Ljava/io/FileInputStream;
    return v3

    .line 676
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local p1    # "source":Ljava/io/File;
    .end local p2    # "destination":Ljava/io/File;
    :goto_2
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local p1    # "source":Ljava/io/File;
    .restart local p2    # "destination":Ljava/io/File;
    :catchall_2
    move-exception v3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "source":Ljava/io/File;
    .end local p2    # "destination":Ljava/io/File;
    :goto_3
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 687
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local p1    # "source":Ljava/io/File;
    .restart local p2    # "destination":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 688
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return v1
.end method

.method private copySelectedFiles()V
    .locals 5

    .line 413
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/termux/app/XoDosFileManager;->copiedFile:Ljava/io/File;

    .line 418
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->refreshPasteButton()V

    .line 420
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 421
    const v4, 0x7f1200b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->copiedFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 425
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 426
    iput-boolean v1, p0, Lcom/termux/app/XoDosFileManager;->isSelectionMode:Z

    .line 427
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v2, 0x7f1202ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 429
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->fileAdapter:Lcom/termux/app/XoDosFileManager$FileAdapter;

    invoke-virtual {v0}, Lcom/termux/app/XoDosFileManager$FileAdapter;->notifyDataSetChanged()V

    .line 430
    return-void
.end method

.method private createDesktopFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p1, "exeFile"    # Ljava/io/File;
    .param p2, "baseName"    # Ljava/lang/String;

    .line 1530
    :try_start_0
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->getWineType()Ljava/lang/String;

    move-result-object v0

    .line 1531
    .local v0, "wineType":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/termux/app/XoDosFileManager;->getWineCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1532
    .local v1, "wineCommand":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->DESKTOP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".desktop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1533
    .local v2, "desktopFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->ICON_DIR:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1535
    .local v3, "iconFile":Ljava/io/File;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1536
    .local v4, "out":Ljava/io/PrintWriter;
    :try_start_1
    const-string v5, "[Desktop Entry]"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1537
    const-string v5, "Type=Application"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1539
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exec="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1540
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1541
    const-string v5, "Terminal=false"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1542
    const-string v5, "Categories=Game;"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1543
    :try_start_2
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1546
    .end local v0    # "wineType":Ljava/lang/String;
    .end local v1    # "wineCommand":Ljava/lang/String;
    .end local v2    # "desktopFile":Ljava/io/File;
    .end local v3    # "iconFile":Ljava/io/File;
    .end local v4    # "out":Ljava/io/PrintWriter;
    goto :goto_1

    .line 1535
    .restart local v0    # "wineType":Ljava/lang/String;
    .restart local v1    # "wineCommand":Ljava/lang/String;
    .restart local v2    # "desktopFile":Ljava/io/File;
    .restart local v3    # "iconFile":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "exeFile":Ljava/io/File;
    .end local p2    # "baseName":Ljava/lang/String;
    :goto_0
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1544
    .end local v0    # "wineType":Ljava/lang/String;
    .end local v1    # "wineCommand":Ljava/lang/String;
    .end local v2    # "desktopFile":Ljava/io/File;
    .end local v3    # "iconFile":Ljava/io/File;
    .end local v4    # "out":Ljava/io/PrintWriter;
    .restart local p1    # "exeFile":Ljava/io/File;
    .restart local p2    # "baseName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1545
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create desktop file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DesktopCreate"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private createExeShortcut(Ljava/io/File;)V
    .locals 8
    .param p1, "exeFile"    # Ljava/io/File;

    .line 1505
    const-string v0, ": "

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".exe"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1506
    .local v1, "baseName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->DESKTOP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".lnk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1508
    .local v2, "lnkFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1509
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1512
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3}, Lcom/termux/app/XoDosFileManager;->generateExeIcon(Ljava/io/File;Ljava/lang/String;Z)V

    .line 1513
    invoke-direct {p0, p1, v1}, Lcom/termux/app/XoDosFileManager;->createDesktopFile(Ljava/io/File;Ljava/lang/String;)V

    .line 1515
    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1516
    const v7, 0x7f1202fe

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1515
    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1517
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1524
    .end local v1    # "baseName":Ljava/lang/String;
    .end local v2    # "lnkFile":Ljava/io/File;
    goto :goto_0

    .line 1519
    :catch_0
    move-exception v1

    .line 1520
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1521
    const v5, 0x7f120140

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1520
    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1522
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1523
    const-string v0, "ShortcutCreate"

    const-string v2, "Error: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1525
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private createNavigationBar()Landroid/widget/LinearLayout;
    .locals 16

    .line 206
    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 207
    .local v1, "navLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 208
    const/16 v3, 0xa

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 209
    const v3, -0xbbbbbc

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 212
    new-instance v3, Landroid/widget/Button;

    iget-object v4, v0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 213
    .local v3, "backBtn":Landroid/widget/Button;
    iget-object v4, v0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v5, 0x7f12005a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 215
    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 216
    const/16 v6, 0x8

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 217
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    .local v7, "backParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 222
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    new-instance v10, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda15;

    invoke-direct {v10, v0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda15;-><init>(Lcom/termux/app/XoDosFileManager;)V

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    new-instance v10, Landroid/widget/Button;

    iget-object v11, v0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 227
    .local v10, "homeBtn":Landroid/widget/Button;
    iget-object v11, v0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v12, 0x7f12015b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 229
    invoke-virtual {v10, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 230
    invoke-virtual {v10, v6, v6, v6, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 231
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 235
    .local v11, "homeParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 236
    invoke-virtual {v10, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    new-instance v12, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda16;

    invoke-direct {v12, v0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda16;-><init>(Lcom/termux/app/XoDosFileManager;)V

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v12, Landroid/widget/Button;

    iget-object v13, v0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    .line 241
    iget-object v12, v0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    iget-object v13, v0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v14, 0x7f1202ee

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v12, v0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    invoke-virtual {v12, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 243
    iget-object v12, v0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    const/high16 v13, 0x41200000    # 10.0f

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTextSize(F)V

    .line 244
    iget-object v12, v0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    const/4 v14, 0x4

    invoke-virtual {v12, v14, v6, v14, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 245
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v12, "selectParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v15, 0x3f000000    # 0.5f

    iput v15, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 250
    iget-object v2, v0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v2, v0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    new-instance v9, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda17;

    invoke-direct {v9, v0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda17;-><init>(Lcom/termux/app/XoDosFileManager;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    new-instance v2, Landroid/widget/Button;

    iget-object v9, v0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/termux/app/XoDosFileManager;->pasteButton:Landroid/widget/Button;

    .line 255
    iget-object v2, v0, Lcom/termux/app/XoDosFileManager;->pasteButton:Landroid/widget/Button;

    iget-object v9, v0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v5, 0x7f120259

    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v2, v0, Lcom/termux/app/XoDosFileManager;->pasteButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 257
    iget-object v2, v0, Lcom/termux/app/XoDosFileManager;->pasteButton:Landroid/widget/Button;

    invoke-virtual {v2, v13}, Landroid/widget/Button;->setTextSize(F)V

    .line 258
    iget-object v2, v0, Lcom/termux/app/XoDosFileManager;->pasteButton:Landroid/widget/Button;

    invoke-virtual {v2, v14, v6, v14, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 259
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 263
    .local v2, "pasteParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v15, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 264
    iget-object v5, v0, Lcom/termux/app/XoDosFileManager;->pasteButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v5, v0, Lcom/termux/app/XoDosFileManager;->pasteButton:Landroid/widget/Button;

    iget-object v9, v0, Lcom/termux/app/XoDosFileManager;->copiedFile:Ljava/io/File;

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 266
    iget-object v5, v0, Lcom/termux/app/XoDosFileManager;->pasteButton:Landroid/widget/Button;

    new-instance v9, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda18;

    invoke-direct {v9, v0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda18;-><init>(Lcom/termux/app/XoDosFileManager;)V

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    new-instance v5, Landroid/widget/Button;

    iget-object v9, v0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 270
    .local v5, "helpBtn":Landroid/widget/Button;
    iget-object v9, v0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v13, 0x7f120155

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 272
    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 273
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 274
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 278
    .local v4, "helpParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 279
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    new-instance v6, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda19;

    invoke-direct {v6, v0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda19;-><init>(Lcom/termux/app/XoDosFileManager;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    iget-object v6, v0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    iget-object v6, v0, Lcom/termux/app/XoDosFileManager;->pasteButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    return-object v1
.end method

.method private executeScriptInTerminal(Ljava/io/File;)V
    .locals 5
    .param p1, "scriptFile"    # Ljava/io/File;

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bash \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1257
    .local v0, "command":Ljava/lang/String;
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v2, 0x7f12012f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/termux/app/XoDosFileManager;->runCommandInSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    return-void
.end method

.method private extractArchiveToNewFolder(Ljava/io/File;)V
    .locals 8
    .param p1, "archiveFile"    # Ljava/io/File;

    .line 1427
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, "archiveName":Ljava/lang/String;
    move-object v1, v0

    .line 1430
    .local v1, "folderName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".tar.gz"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1431
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1432
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".tar.xz"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1433
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1435
    :cond_1
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1436
    .local v2, "lastDot":I
    if-lez v2, :cond_2

    .line 1437
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1441
    .end local v2    # "lastDot":I
    :cond_2
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1442
    .local v2, "outputDir":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "7z x \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" -o\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" -y"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1443
    .local v3, "command":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v6, 0x7f12013b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/termux/app/XoDosFileManager;->runCommandInSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1445
    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1444
    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 1446
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1447
    return-void
.end method

.method private findFirstProotDistro()Ljava/lang/String;
    .locals 6

    .line 1209
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const-string v2, "sh"

    const-string v3, "-c"

    const-string v4, "proot-distro list | grep -E \'^[a-zA-Z]\' | head -1 | awk \'{print $1}\'"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 1210
    .local v1, "processBuilder":Ljava/lang/ProcessBuilder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 1211
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 1213
    .local v2, "process":Ljava/lang/Process;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1214
    .local v3, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 1215
    .local v4, "distro":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 1217
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 1218
    .end local v1    # "processBuilder":Ljava/lang/ProcessBuilder;
    .end local v2    # "process":Ljava/lang/Process;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "distro":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1219
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private generateExeIcon(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "exeFile"    # Ljava/io/File;
    .param p2, "baseName"    # Ljava/lang/String;
    .param p3, "refreshAfter"    # Z

    .line 979
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda21;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/lang/String;Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1013
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1014
    return-void
.end method

.method private generateExeIconsForDirectory([Ljava/io/File;)V
    .locals 2
    .param p1, "files"    # [Ljava/io/File;

    .line 1018
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda23;-><init>(Lcom/termux/app/XoDosFileManager;[Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1030
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1031
    return-void
.end method

.method private getWineCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "wineType"    # Ljava/lang/String;

    .line 1627
    const-string v0, "glibc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1628
    const-string v0, "/data/data/com.termux/files/usr/glibc/opt/scripts/xodos_wine"

    return-object v0

    .line 1630
    :cond_0
    const-string v0, "/data/data/com.termux/files/usr/bin/xbio"

    return-object v0
.end method

.method private getWineType()Ljava/lang/String;
    .locals 4

    .line 1618
    const-string v0, "bionic"

    :try_start_0
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const-string v2, "com.termux_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1619
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "WINE_TYPE"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1620
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 1621
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private goHome()V
    .locals 2

    .line 1653
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/termux/app/XoDosFileManager;->loadDirectory(Ljava/io/File;)V

    .line 1654
    return-void
.end method

.method private handleItemClick(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .line 1035
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->loadDirectory(Ljava/io/File;)V

    .line 1037
    return-void

    .line 1040
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, "name":Ljava/lang/String;
    const-string v1, ".exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1043
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->showExeOptions(Ljava/io/File;)V

    goto/16 :goto_6

    .line 1044
    :cond_1
    const-string v1, ".iso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, ".xiso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, ".xbe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    .line 1046
    :cond_2
    const-string v1, ".cue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, ".bin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, ".cso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_4

    .line 1048
    :cond_3
    const-string v1, ".7z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, ".rar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1049
    const-string v1, ".tar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, ".gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_3

    .line 1051
    :cond_4
    const-string v1, ".tar.xz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ".tar.gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_2

    .line 1053
    :cond_5
    const-string v1, ".deb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1054
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->showDebOptions(Ljava/io/File;)V

    goto/16 :goto_6

    .line 1055
    :cond_6
    const-string v1, ".sh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, ".bash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, ".zsh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1056
    const-string v1, ".py"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, ".pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, ".rb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 1058
    :cond_7
    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, ".ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, ".wav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1059
    const-string v1, ".flac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, ".m4a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, ".aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    .line 1062
    :cond_8
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1063
    const v4, 0x7f1202f2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1062
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1064
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 1060
    :cond_9
    :goto_0
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->showAudioOptions(Ljava/io/File;)V

    goto :goto_6

    .line 1057
    :cond_a
    :goto_1
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->showScriptOptions(Ljava/io/File;)V

    goto :goto_6

    .line 1052
    :cond_b
    :goto_2
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->showSystemArchiveOptions(Ljava/io/File;)V

    goto :goto_6

    .line 1050
    :cond_c
    :goto_3
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->showArchiveOptions(Ljava/io/File;)V

    goto :goto_6

    .line 1047
    :cond_d
    :goto_4
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->showPs1Options(Ljava/io/File;)V

    goto :goto_6

    .line 1045
    :cond_e
    :goto_5
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->showXdvdfsOptions(Ljava/io/File;)V

    .line 1066
    :goto_6
    return-void
.end method

.method private initializeAndroidIcons()V
    .locals 7

    .line 92
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const v1, 0x7f080136

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "folder"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const v1, 0x108004c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "parent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const v1, 0x1080024

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exe"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const v2, 0x7f080134

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "iso"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const v3, 0x7f08014a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "xiso"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const-string v4, "xbe"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const-string v4, "cue"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const-string v4, "bin"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const-string v4, "cso"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const-string v4, "disk_image"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const v2, 0x108003e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "text"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const v4, 0x108003f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "image"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const v4, 0x1080021

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "audio"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const-string v4, "video"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const v1, 0x108004e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "pdf"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const v4, 0x7f080140

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "archive"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const v5, 0x1080040

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "default"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const v5, 0x7f080141

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "script"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const v5, 0x1080049

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "config"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const-string v5, "xbox"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const-string v3, "deb"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const-string v3, "document"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const-string v3, "spreadsheet"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const-string v3, "presentation"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const-string v3, "database"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const-string v1, "font"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const-string v1, "web"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->iconMap:Ljava/util/Map;

    const-string v1, "programming"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method private installDebInProot(Ljava/io/File;)V
    .locals 2
    .param p1, "debFile"    # Ljava/io/File;

    .line 1176
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0, p1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda30;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1203
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1204
    return-void
.end method

.method private installDebNormally(Ljava/io/File;)V
    .locals 5
    .param p1, "debFile"    # Ljava/io/File;

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apt install -y --allow-downgrades \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" || apt install -f -y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1227
    .local v0, "command":Ljava/lang/String;
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v2, 0x7f120176

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/termux/app/XoDosFileManager;->runCommandInSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    return-void
.end method

.method static synthetic lambda$generateExeIcon$18(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".png"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadDirectory(Ljava/io/File;)V
    .locals 5
    .param p1, "dir"    # Ljava/io/File;

    .line 456
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->fileListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 458
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 463
    :cond_1
    iput-object p1, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    .line 464
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->saveCurrentPath()V

    .line 467
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->pathTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 468
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->pathTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 472
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_3

    .line 473
    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v4, 0x7f120090

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 474
    return-void

    .line 478
    :cond_3
    new-instance v0, Lcom/termux/app/XoDosFileManager$1;

    invoke-direct {v0, p0}, Lcom/termux/app/XoDosFileManager$1;-><init>(Lcom/termux/app/XoDosFileManager;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 487
    new-instance v0, Lcom/termux/app/XoDosFileManager$FileAdapter;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/termux/app/XoDosFileManager$FileAdapter;-><init>(Lcom/termux/app/XoDosFileManager;Landroid/content/Context;[Ljava/io/File;)V

    iput-object v0, p0, Lcom/termux/app/XoDosFileManager;->fileAdapter:Lcom/termux/app/XoDosFileManager$FileAdapter;

    .line 488
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->fileListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->fileAdapter:Lcom/termux/app/XoDosFileManager$FileAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 490
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->fileListView:Landroid/widget/ListView;

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, v1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda22;-><init>(Lcom/termux/app/XoDosFileManager;[Ljava/io/File;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 511
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->fileListView:Landroid/widget/ListView;

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0, v1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda33;-><init>(Lcom/termux/app/XoDosFileManager;[Ljava/io/File;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 529
    invoke-direct {p0, v1}, Lcom/termux/app/XoDosFileManager;->generateExeIconsForDirectory([Ljava/io/File;)V

    .line 530
    return-void

    .line 459
    .end local v1    # "files":[Ljava/io/File;
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v3, 0x7f12008f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 460
    return-void
.end method

.method private navigateBack()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0, v0}, Lcom/termux/app/XoDosFileManager;->loadDirectory(Ljava/io/File;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 148
    :cond_1
    :goto_0
    return-void
.end method

.method private openWithMpv(Ljava/io/File;)V
    .locals 5
    .param p1, "audioFile"    # Ljava/io/File;

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mpv \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1353
    .local v0, "command":Ljava/lang/String;
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v2, 0x7f120268

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/termux/app/XoDosFileManager;->runCommandInSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    return-void
.end method

.method private packSelectedFiles()V
    .locals 13

    .line 363
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 366
    :cond_0
    const/4 v0, 0x0

    .line 367
    .local v0, "folderToPack":Ljava/io/File;
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 368
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    move-object v0, v2

    .line 370
    goto :goto_1

    .line 372
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 374
    :cond_2
    :goto_1
    const/4 v1, 0x1

    const v2, 0x7f120257

    const-string v3, "\""

    const-string v4, "\" \""

    const-string v5, "xdvdfs pack \""

    const-string v6, ".xiso"

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    .line 375
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, "outputName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    invoke-direct {v8, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 378
    .local v8, "outputFile":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "command":Ljava/lang/String;
    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v7

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/termux/app/XoDosFileManager;->runCommandInSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .end local v3    # "command":Ljava/lang/String;
    .end local v6    # "outputName":Ljava/lang/String;
    .end local v8    # "outputFile":Ljava/io/File;
    goto/16 :goto_4

    .line 382
    :cond_3
    const/4 v8, 0x0

    .line 383
    .local v8, "isoToPack":Ljava/io/File;
    iget-object v9, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    .line 384
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".iso"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 385
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 386
    :cond_4
    move-object v8, v10

    .line 387
    goto :goto_3

    .line 389
    .end local v10    # "file":Ljava/io/File;
    :cond_5
    goto :goto_2

    .line 391
    :cond_6
    :goto_3
    if-eqz v8, :cond_7

    .line 392
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\.[^.]+$"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 393
    .local v9, "baseName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 394
    .restart local v6    # "outputName":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    invoke-direct {v10, v11, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 396
    .local v10, "outputFile":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    .restart local v3    # "command":Ljava/lang/String;
    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v7

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/termux/app/XoDosFileManager;->runCommandInSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .end local v3    # "command":Ljava/lang/String;
    .end local v6    # "outputName":Ljava/lang/String;
    .end local v9    # "baseName":Ljava/lang/String;
    .end local v10    # "outputFile":Ljava/io/File;
    goto :goto_4

    .line 399
    :cond_7
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v3, 0x7f1202eb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 404
    .end local v8    # "isoToPack":Ljava/io/File;
    :goto_4
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 405
    iput-boolean v7, p0, Lcom/termux/app/XoDosFileManager;->isSelectionMode:Z

    .line 406
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v3, 0x7f1202ee

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 408
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->fileAdapter:Lcom/termux/app/XoDosFileManager$FileAdapter;

    invoke-virtual {v1}, Lcom/termux/app/XoDosFileManager$FileAdapter;->notifyDataSetChanged()V

    .line 409
    return-void
.end method

.method private pasteFile()V
    .locals 4

    .line 591
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->copiedFile:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v3, 0x7f120231

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 593
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->copiedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v3, 0x7f120305

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/app/XoDosFileManager;->copiedFile:Ljava/io/File;

    .line 600
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->refreshPasteButton()V

    .line 601
    return-void

    .line 604
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda41;-><init>(Lcom/termux/app/XoDosFileManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 649
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 650
    return-void
.end method

.method private refreshPasteButton()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->pasteButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->pasteButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->copiedFile:Ljava/io/File;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 698
    :cond_1
    return-void
.end method

.method private restoreSystemArchive(Ljava/io/File;)V
    .locals 4
    .param p1, "archiveFile"    # Ljava/io/File;

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tar -xvf \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" -C /data/data/com.termux/files --preserve-permissions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1480
    .local v0, "command":Ljava/lang/String;
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v2, 0x7f1202db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/termux/app/XoDosFileManager;->runCommandInSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1482
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1481
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1483
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1484
    return-void
.end method

.method private runCommandAndCaptureOutput(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    .local v0, "output":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const-string v2, "sh"

    const-string v3, "-c"

    filled-new-array {v2, v3, p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 727
    .local v1, "processBuilder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v2

    .line 728
    .local v2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "PATH"

    const-string v4, "/data/data/com.termux/files/usr/bin:/system/bin"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    const-string v3, "LD_LIBRARY_PATH"

    const-string v4, "/data/data/com.termux/files/usr/lib"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string v3, "PREFIX"

    const-string v4, "/data/data/com.termux/files/usr"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    const-string v3, "HOME"

    const-string v4, "/data/data/com.termux/files/home"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    const-string v3, "TMPDIR"

    const-string v4, "/data/data/com.termux/files/usr/tmp"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 735
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 737
    .local v3, "process":Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 739
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 740
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 743
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v5

    .line 744
    .local v5, "exitCode":I
    if-eqz v5, :cond_1

    .line 745
    const-string v7, "\nCommand exited with code: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    .end local v1    # "processBuilder":Ljava/lang/ProcessBuilder;
    .end local v2    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "process":Ljava/lang/Process;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "exitCode":I
    .end local v6    # "line":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 748
    :catch_0
    move-exception v1

    .line 749
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error executing command: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private runCommandAndShowInAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .line 1358
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda2;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1369
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1370
    return-void
.end method

.method private runCommandInSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 1551
    const-string v0, "FileManagerCommand"

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/termux/app/TermuxActivity;

    if-nez v1, :cond_0

    .line 1552
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->runCommandWithProcessBuilder(Ljava/lang/String;)Z

    .line 1553
    return-void

    .line 1556
    :cond_0
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/termux/app/TermuxActivity;

    .line 1559
    .local v1, "termuxActivity":Lcom/termux/app/TermuxActivity;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1561
    .local v2, "fullCommand":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing in session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1564
    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->getCurrentStoredSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object v3

    .line 1565
    .local v3, "session":Lcom/termux/terminal/TerminalSession;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1566
    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 1567
    invoke-direct {p0, v1}, Lcom/termux/app/XoDosFileManager;->showTerminalView(Lcom/termux/app/TermuxActivity;)V

    .line 1568
    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, p2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1569
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->closeAndShowTerminal()V

    .line 1570
    return-void

    .line 1574
    .end local v3    # "session":Lcom/termux/terminal/TerminalSession;
    :cond_1
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->runCommandWithProcessBuilder(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1579
    nop

    .end local v2    # "fullCommand":Ljava/lang/String;
    goto :goto_0

    .line 1576
    :catch_0
    move-exception v2

    .line 1577
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute in session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->runCommandWithProcessBuilder(Ljava/lang/String;)Z

    .line 1580
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private runCommandWithProcessBuilder(Ljava/lang/String;)Z
    .locals 11
    .param p1, "cmd"    # Ljava/lang/String;

    .line 1585
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "FileManagerCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fallback executing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    new-instance v1, Ljava/lang/ProcessBuilder;

    const-string v2, "sh"

    const-string v3, "-c"

    filled-new-array {v2, v3, p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 1589
    .local v1, "processBuilder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v2

    .line 1590
    .local v2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "PATH"

    const-string v4, "/data/data/com.termux/files/usr/bin:/system/bin"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    const-string v3, "LD_LIBRARY_PATH"

    const-string v4, "/data/data/com.termux/files/usr/lib"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    const-string v3, "PREFIX"

    const-string v4, "/data/data/com.termux/files/usr"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    const-string v3, "HOME"

    const-string v4, "/data/data/com.termux/files/home"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    const-string v3, "TMPDIR"

    const-string v4, "/data/data/com.termux/files/usr/tmp"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 1597
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 1599
    .local v4, "process":Ljava/lang/Process;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1601
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1602
    const-string v6, "CommandOutput"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1605
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v6

    .line 1606
    .local v6, "exitCode":I
    const-string v8, "CommandExecution"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exit code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    if-nez v6, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 1609
    .end local v1    # "processBuilder":Ljava/lang/ProcessBuilder;
    .end local v2    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "exitCode":I
    .end local v7    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1610
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fallback also failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CommandError"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    return v0
.end method

.method private runExeInSession(Ljava/io/File;)V
    .locals 6
    .param p1, "exeFile"    # Ljava/io/File;

    .line 1488
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/termux/app/TermuxActivity;

    if-nez v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v2, 0x7f12008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1490
    return-void

    .line 1493
    :cond_0
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->getWineType()Ljava/lang/String;

    move-result-object v0

    .line 1494
    .local v0, "wineType":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/termux/app/XoDosFileManager;->getWineCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1496
    .local v1, "wineCommand":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "termux-x11 :0 >/dev/null 2>&1 & sleep 3 && "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1497
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1499
    .local v2, "command":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v5, 0x7f1202de

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/termux/app/XoDosFileManager;->runCommandInSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    return-void
.end method

.method private runXdvdfsCommandInAlert(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .line 702
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda6;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 718
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 719
    return-void
.end method

.method private saveCurrentPath()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_visited_path"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    return-void
.end method

.method private showArchiveOptions(Ljava/io/File;)V
    .locals 4
    .param p1, "archiveFile"    # Ljava/io/File;

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ud83d\udccb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1404
    const v2, 0x7f120188

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udce6 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1405
    const v3, 0x7f120139

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1408
    .local v0, "options":[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Archive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1409
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0, p1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda25;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/io/File;)V

    .line 1410
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1421
    const v3, 0x7f12008d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1422
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1423
    return-void
.end method

.method private showAudioOptions(Ljava/io/File;)V
    .locals 7
    .param p1, "audioFile"    # Ljava/io/File;

    .line 1334
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1335
    const v1, 0x7f120249

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1336
    const v2, 0x7f12008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1339
    .local v0, "options":[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1340
    const v4, 0x7f120058

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda37;

    invoke-direct {v3, p0, p1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda37;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/io/File;)V

    .line 1341
    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1346
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1347
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1348
    return-void
.end method

.method private showCopyOptions(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v0, "optionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v2, 0x7f1200b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".iso"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".xiso"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 540
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v2, "\ud83d\udce6 "

    if-eqz v1, :cond_1

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v3, 0x7f120253

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 543
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v3, 0x7f120254

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udd12 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v3, 0x7f120091

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v2, 0x7f12008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 552
    .local v1, "options":[Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 553
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0, p1, v1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda20;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/io/File;[Ljava/lang/String;)V

    .line 554
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 586
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 587
    return-void
.end method

.method private showDebOptions(Ljava/io/File;)V
    .locals 7
    .param p1, "debFile"    # Ljava/io/File;

    .line 1138
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1139
    const v1, 0x7f12016f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1140
    const v2, 0x7f12008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1143
    .local v0, "options":[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1144
    const v4, 0x7f1200c2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda36;

    invoke-direct {v3, p0, p1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda36;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/io/File;)V

    .line 1145
    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1150
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1151
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1152
    return-void
.end method

.method private showExeOptions(Ljava/io/File;)V
    .locals 4
    .param p1, "exeFile"    # Ljava/io/File;

    .line 1070
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1071
    const v1, 0x7f1202dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1072
    const v2, 0x7f1200ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, "options":[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXE File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1076
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda5;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/io/File;)V

    .line 1077
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1084
    const v3, 0x7f12008d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1085
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1086
    return-void
.end method

.method private showFileManager()V
    .locals 7

    .line 153
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 155
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    const v2, -0xcccccd

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 162
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/termux/app/XoDosFileManager;->pathTextView:Landroid/widget/TextView;

    .line 163
    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->pathTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->pathTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->pathTextView:Landroid/widget/TextView;

    const/16 v5, 0x14

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 166
    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->pathTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 167
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->pathTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 168
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->pathTextView:Landroid/widget/TextView;

    const v4, -0xbbbbbc

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 169
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->pathTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->createNavigationBar()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 173
    .local v1, "navLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    new-instance v4, Landroid/widget/ListView;

    iget-object v5, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/termux/app/XoDosFileManager;->fileListView:Landroid/widget/ListView;

    .line 177
    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 178
    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->fileListView:Landroid/widget/ListView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 184
    const v4, 0x7f120145

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 185
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 186
    const v4, 0x7f1200a0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda12;-><init>(Lcom/termux/app/XoDosFileManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/app/XoDosFileManager;->dialog:Landroid/app/AlertDialog;

    .line 193
    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->dialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda13;-><init>(Lcom/termux/app/XoDosFileManager;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 201
    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 202
    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/termux/app/XoDosFileManager;->loadDirectory(Ljava/io/File;)V

    .line 203
    return-void
.end method

.method private showHelpDialog()V
    .locals 4

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v2, 0x7f120157

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 435
    const v2, 0x7f120146

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\n\u2022 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 436
    const v2, 0x7f1200c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\u2022 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 437
    const v3, 0x7f1202e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 438
    const v3, 0x7f120059

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 439
    const v3, 0x7f1200e0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 440
    const v3, 0x7f120306

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 441
    const v3, 0x7f1202bf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 442
    const v3, 0x7f1200c0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 443
    const v3, 0x7f12014a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 444
    const v3, 0x7f120392

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 445
    const v2, 0x7f1202c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "helpMessage":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 448
    const v3, 0x7f120315

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 449
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 450
    const v3, 0x7f120242

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 451
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 452
    return-void
.end method

.method private showInstallMethodDialog(Ljava/io/File;)V
    .locals 4
    .param p1, "debFile"    # Ljava/io/File;

    .line 1156
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1157
    const v1, 0x7f12016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1158
    const v2, 0x7f12016b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1161
    .local v0, "options":[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1162
    const v3, 0x7f120172

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda0;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/io/File;)V

    .line 1163
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1170
    const v3, 0x7f12008d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1171
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1172
    return-void
.end method

.method private showPs1Options(Ljava/io/File;)V
    .locals 5
    .param p1, "ps1File"    # Ljava/io/File;

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ud83d\udccb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1375
    const v2, 0x7f120188

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udce6 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1376
    const v3, 0x7f120139

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ud83c\udfae "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1377
    const v4, 0x7f12024a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1380
    .local v0, "options":[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PS1 File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1381
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda29;

    invoke-direct {v2, p0, p1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda29;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/io/File;)V

    .line 1382
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1397
    const v3, 0x7f12008d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1398
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1399
    return-void
.end method

.method private showScriptOptions(Ljava/io/File;)V
    .locals 7
    .param p1, "scriptFile"    # Ljava/io/File;

    .line 1232
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1233
    const v1, 0x7f12012e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1234
    const v2, 0x7f120091

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1235
    const v3, 0x7f12008d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, "options":[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1239
    const v4, 0x7f1202e2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda42;

    invoke-direct {v2, p0, p1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda42;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/io/File;)V

    .line 1240
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1250
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1251
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1252
    return-void
.end method

.method private showSelectedFilesOptions()V
    .locals 8

    .line 313
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v3, 0x7f120232

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 315
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    .line 320
    .local v0, "hasFolders":Z
    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 321
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 322
    const/4 v0, 0x1

    .line 323
    goto :goto_1

    .line 325
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 327
    :cond_2
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v2, "optionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ud83d\udce6 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v5, 0x7f120255

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ud83d\udccb "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v5, 0x7f1200b5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ud83d\udd12 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v5, 0x7f120091

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u274c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v5, 0x7f12009e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 335
    .local v3, "options":[Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 336
    const v6, 0x7f1202f3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda35;

    invoke-direct {v4, p0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda35;-><init>(Lcom/termux/app/XoDosFileManager;)V

    .line 337
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 357
    const v5, 0x7f12008d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 358
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 359
    return-void
.end method

.method private showSystemArchiveOptions(Ljava/io/File;)V
    .locals 4
    .param p1, "archiveFile"    # Ljava/io/File;

    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ud83d\udccb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1452
    const v2, 0x7f120188

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udce6 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1453
    const v3, 0x7f120139

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1454
    const v3, 0x7f1202da

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1457
    .local v0, "options":[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System Archive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1458
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda11;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/io/File;)V

    .line 1459
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1473
    const v3, 0x7f12008d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1474
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1475
    return-void
.end method

.method private showTerminalView(Lcom/termux/app/TermuxActivity;)V
    .locals 2
    .param p1, "termuxActivity"    # Lcom/termux/app/TermuxActivity;

    .line 1636
    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getMainContentView()Lcom/termux/app/terminal/DisplaySlidingWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1637
    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getMainContentView()Lcom/termux/app/terminal/DisplaySlidingWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->setTerminalViewSwitchSlider(Z)V

    .line 1639
    :cond_0
    return-void
.end method

.method private showTextDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 756
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 757
    .local v0, "scrollView":Landroid/widget/ScrollView;
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 758
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 760
    const v2, -0xcccccd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 761
    const/16 v2, 0x14

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 762
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 764
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 766
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 767
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 768
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 769
    const v4, 0x7f120242

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 770
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 771
    return-void
.end method

.method private showXdvdfsOptions(Ljava/io/File;)V
    .locals 9
    .param p1, "xboxFile"    # Ljava/io/File;

    .line 1090
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".iso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ISO"

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1091
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".xiso"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "XISO"

    :cond_1
    :goto_0
    move-object v0, v1

    .line 1093
    .local v0, "fileType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udccb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1094
    const v3, 0x7f120188

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ud83c\udf33 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1095
    const v4, 0x7f120379

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ud83d\udcca "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1096
    const v5, 0x7f12015f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ud83d\udce6 "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1097
    const v6, 0x7f120384

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83c\udfae "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1098
    const v8, 0x7f12024b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1099
    const v8, 0x7f12024a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v1

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 1102
    .local v1, "options":[Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1103
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, p1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda14;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/io/File;)V

    .line 1104
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1132
    const v4, 0x7f12008d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1133
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1134
    return-void
.end method

.method private toggleSelectionMode()V
    .locals 4

    .line 293
    iget-boolean v0, p0, Lcom/termux/app/XoDosFileManager;->isSelectionMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/XoDosFileManager;->isSelectionMode:Z

    .line 294
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 296
    iget-boolean v0, p0, Lcom/termux/app/XoDosFileManager;->isSelectionMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v3, 0x7f1202ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    const v2, -0xb350b0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 299
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v3, 0x7f1202ee

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    const v2, -0xbbbbbc

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 303
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->fileAdapter:Lcom/termux/app/XoDosFileManager$FileAdapter;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->fileAdapter:Lcom/termux/app/XoDosFileManager$FileAdapter;

    invoke-virtual {v0}, Lcom/termux/app/XoDosFileManager$FileAdapter;->notifyDataSetChanged()V

    .line 309
    :cond_1
    return-void
.end method


# virtual methods
.method synthetic lambda$changePermissionsForSelectedFiles$34$com-termux-app-XoDosFileManager()V
    .locals 5

    .line 1310
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1311
    const v2, 0x7f120264

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1310
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1312
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1315
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1316
    iput-boolean v4, p0, Lcom/termux/app/XoDosFileManager;->isSelectionMode:Z

    .line 1317
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v2, 0x7f1202ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1318
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1319
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->fileAdapter:Lcom/termux/app/XoDosFileManager$FileAdapter;

    invoke-virtual {v0}, Lcom/termux/app/XoDosFileManager$FileAdapter;->notifyDataSetChanged()V

    .line 1320
    return-void
.end method

.method synthetic lambda$changePermissionsForSelectedFiles$35$com-termux-app-XoDosFileManager(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1324
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1325
    const v3, 0x7f12013e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1324
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1326
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1327
    return-void
.end method

.method synthetic lambda$changePermissionsForSelectedFiles$36$com-termux-app-XoDosFileManager()V
    .locals 5

    .line 1299
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1301
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "\""

    if-eqz v2, :cond_0

    .line 1302
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod +x -R \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "command":Ljava/lang/String;
    goto :goto_1

    .line 1304
    .end local v2    # "command":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod +x \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1306
    .restart local v2    # "command":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v2}, Lcom/termux/app/XoDosFileManager;->runCommandWithProcessBuilder(Ljava/lang/String;)Z

    .line 1307
    nop

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "command":Ljava/lang/String;
    goto :goto_0

    .line 1309
    :cond_1
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda43;-><init>(Lcom/termux/app/XoDosFileManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1328
    goto :goto_2

    .line 1322
    :catch_0
    move-exception v0

    .line 1323
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda1;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1329
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method synthetic lambda$changePermissionsRecursive$31$com-termux-app-XoDosFileManager(Z)V
    .locals 4
    .param p1, "success"    # Z

    .line 1274
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1275
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1276
    const v3, 0x7f120263

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1275
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1277
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1279
    :cond_0
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1280
    const v3, 0x7f12013e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1279
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1281
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1283
    :goto_0
    return-void
.end method

.method synthetic lambda$changePermissionsRecursive$32$com-termux-app-XoDosFileManager(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1287
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1288
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1287
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1289
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1290
    return-void
.end method

.method synthetic lambda$changePermissionsRecursive$33$com-termux-app-XoDosFileManager(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 1265
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "\""

    if-eqz v0, :cond_0

    .line 1266
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod +x -R \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "command":Ljava/lang/String;
    goto :goto_0

    .line 1268
    .end local v0    # "command":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod +x \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1271
    .restart local v0    # "command":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/termux/app/XoDosFileManager;->runCommandWithProcessBuilder(Ljava/lang/String;)Z

    move-result v1

    .line 1273
    .local v1, "success":Z
    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda9;-><init>(Lcom/termux/app/XoDosFileManager;Z)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1291
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "success":Z
    goto :goto_1

    .line 1285
    :catch_0
    move-exception v0

    .line 1286
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda10;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1292
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method synthetic lambda$createNavigationBar$2$com-termux-app-XoDosFileManager(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 223
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->navigateBack()V

    return-void
.end method

.method synthetic lambda$createNavigationBar$3$com-termux-app-XoDosFileManager(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 237
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->goHome()V

    return-void
.end method

.method synthetic lambda$createNavigationBar$4$com-termux-app-XoDosFileManager(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 251
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->toggleSelectionMode()V

    return-void
.end method

.method synthetic lambda$createNavigationBar$5$com-termux-app-XoDosFileManager(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 266
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->pasteFile()V

    return-void
.end method

.method synthetic lambda$createNavigationBar$6$com-termux-app-XoDosFileManager(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 280
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->showHelpDialog()V

    return-void
.end method

.method synthetic lambda$generateExeIcon$19$com-termux-app-XoDosFileManager()V
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->fileAdapter:Lcom/termux/app/XoDosFileManager$FileAdapter;

    invoke-virtual {v0}, Lcom/termux/app/XoDosFileManager$FileAdapter;->notifyDataSetChanged()V

    .line 1005
    return-void
.end method

.method synthetic lambda$generateExeIcon$20$com-termux-app-XoDosFileManager(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 8
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "exeFile"    # Ljava/io/File;
    .param p3, "refreshAfter"    # Z

    .line 981
    const-string v0, "IconGen"

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->ICON_DIR:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 982
    .local v1, "iconFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generating icon for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrestool -x --type=14 \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" 2>/dev/null | magick ico:- \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" 2>/dev/null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 987
    .local v2, "cmd":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/termux/app/XoDosFileManager;->runCommandWithProcessBuilder(Ljava/lang/String;)Z

    move-result v3

    .line 989
    .local v3, "success":Z
    if-eqz v3, :cond_0

    .line 990
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully generated icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->ICON_DIR:Ljava/io/File;

    new-instance v5, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda3;

    invoke-direct {v5, p1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 995
    .local v4, "numberedIcons":[Ljava/io/File;
    if-eqz v4, :cond_0

    .line 996
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 997
    .local v7, "numberedIcon":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 996
    nop

    .end local v7    # "numberedIcon":Ljava/io/File;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1002
    .end local v4    # "numberedIcons":[Ljava/io/File;
    :cond_0
    if-eqz p3, :cond_1

    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->fileAdapter:Lcom/termux/app/XoDosFileManager$FileAdapter;

    if-eqz v4, :cond_1

    .line 1003
    iget-object v4, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda4;-><init>(Lcom/termux/app/XoDosFileManager;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    .end local v1    # "iconFile":Ljava/io/File;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "success":Z
    :cond_1
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1008
    :catch_0
    move-exception v1

    .line 1009
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to generate icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1011
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->generatingIcons:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1012
    nop

    .line 1013
    return-void

    .line 1011
    :goto_2
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->generatingIcons:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1012
    throw v0
.end method

.method synthetic lambda$generateExeIconsForDirectory$21$com-termux-app-XoDosFileManager([Ljava/io/File;)V
    .locals 8
    .param p1, "files"    # [Ljava/io/File;

    .line 1019
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1020
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".exe"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1021
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1022
    .local v3, "baseName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/termux/app/XoDosFileManager;->ICON_DIR:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1024
    .local v4, "iconFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/termux/app/XoDosFileManager;->generatingIcons:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1025
    iget-object v5, p0, Lcom/termux/app/XoDosFileManager;->generatingIcons:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1026
    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v5}, Lcom/termux/app/XoDosFileManager;->generateExeIcon(Ljava/io/File;Ljava/lang/String;Z)V

    .line 1019
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "baseName":Ljava/lang/String;
    .end local v4    # "iconFile":Ljava/io/File;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1030
    :cond_1
    return-void
.end method

.method synthetic lambda$installDebInProot$26$com-termux-app-XoDosFileManager()V
    .locals 3

    .line 1181
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1182
    const v2, 0x7f120236

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1181
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1183
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1184
    return-void
.end method

.method synthetic lambda$installDebInProot$27$com-termux-app-XoDosFileManager(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "distro"    # Ljava/lang/String;

    .line 1192
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1193
    const v1, 0x7f120175

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1192
    invoke-direct {p0, p1, v0}, Lcom/termux/app/XoDosFileManager;->runCommandInSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    return-void
.end method

.method synthetic lambda$installDebInProot$28$com-termux-app-XoDosFileManager(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1198
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to install in PRoot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1199
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1198
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1200
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1201
    return-void
.end method

.method synthetic lambda$installDebInProot$29$com-termux-app-XoDosFileManager(Ljava/io/File;)V
    .locals 4
    .param p1, "debFile"    # Ljava/io/File;

    .line 1178
    :try_start_0
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->findFirstProotDistro()Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, "distro":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1180
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda31;-><init>(Lcom/termux/app/XoDosFileManager;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1185
    return-void

    .line 1188
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proot-distro login "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --root -- bash -c \"dpkg -i --force-downgrades \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1189
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' || apt-get install -f\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1191
    .local v1, "command":Ljava/lang/String;
    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda32;

    invoke-direct {v3, p0, v1, v0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda32;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    .end local v0    # "distro":Ljava/lang/String;
    .end local v1    # "command":Ljava/lang/String;
    goto :goto_0

    .line 1196
    :catch_0
    move-exception v0

    .line 1197
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda34;

    invoke-direct {v2, p0, v0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda34;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1203
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method synthetic lambda$loadDirectory$8$com-termux-app-XoDosFileManager([Ljava/io/File;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "files"    # [Ljava/io/File;
    .param p2, "parent"    # Landroid/widget/AdapterView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J

    .line 491
    aget-object v0, p1, p4

    .line 492
    .local v0, "selectedFile":Ljava/io/File;
    iget-boolean v1, p0, Lcom/termux/app/XoDosFileManager;->isSelectionMode:Z

    if-eqz v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    :goto_0
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->fileAdapter:Lcom/termux/app/XoDosFileManager$FileAdapter;

    invoke-virtual {v1}, Lcom/termux/app/XoDosFileManager$FileAdapter;->notifyDataSetChanged()V

    .line 502
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 503
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->showSelectedFilesOptions()V

    goto :goto_1

    .line 506
    :cond_1
    invoke-direct {p0, v0}, Lcom/termux/app/XoDosFileManager;->handleItemClick(Ljava/io/File;)V

    .line 508
    :cond_2
    :goto_1
    return-void
.end method

.method synthetic lambda$loadDirectory$9$com-termux-app-XoDosFileManager([Ljava/io/File;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "files"    # [Ljava/io/File;
    .param p2, "parent"    # Landroid/widget/AdapterView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J

    .line 512
    aget-object v0, p1, p4

    .line 513
    .local v0, "selectedFile":Ljava/io/File;
    iget-boolean v1, p0, Lcom/termux/app/XoDosFileManager;->isSelectionMode:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    :goto_0
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->fileAdapter:Lcom/termux/app/XoDosFileManager$FileAdapter;

    invoke-virtual {v1}, Lcom/termux/app/XoDosFileManager$FileAdapter;->notifyDataSetChanged()V

    .line 521
    return v2

    .line 523
    :cond_1
    invoke-direct {p0, v0}, Lcom/termux/app/XoDosFileManager;->showCopyOptions(Ljava/io/File;)V

    .line 524
    return v2
.end method

.method synthetic lambda$pasteFile$11$com-termux-app-XoDosFileManager()V
    .locals 4

    .line 628
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 629
    const v3, 0x7f1200b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->copiedFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 628
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 630
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 631
    return-void
.end method

.method synthetic lambda$pasteFile$12$com-termux-app-XoDosFileManager()V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/termux/app/XoDosFileManager;->loadDirectory(Ljava/io/File;)V

    .line 639
    return-void
.end method

.method synthetic lambda$pasteFile$13$com-termux-app-XoDosFileManager(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 644
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 645
    const v3, 0x7f12025a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 646
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 647
    return-void
.end method

.method synthetic lambda$pasteFile$14$com-termux-app-XoDosFileManager()V
    .locals 9

    .line 606
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->copiedFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 609
    .local v0, "destination":Ljava/io/File;
    const/4 v1, 0x1

    .line 610
    .local v1, "counter":I
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 611
    .local v2, "originalName":Ljava/lang/String;
    move-object v3, v2

    .line 612
    .local v3, "baseName":Ljava/lang/String;
    const-string v4, ""

    .line 613
    .local v4, "extension":Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 614
    .local v5, "dotIndex":I
    if-lez v5, :cond_0

    .line 615
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 616
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 619
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 620
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 621
    .local v6, "newName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v7

    .line 622
    nop

    .end local v6    # "newName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 623
    goto :goto_0

    .line 626
    :cond_1
    iget-object v6, p0, Lcom/termux/app/XoDosFileManager;->copiedFile:Ljava/io/File;

    invoke-direct {p0, v6, v0}, Lcom/termux/app/XoDosFileManager;->copyFileOrDirectory(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 627
    iget-object v6, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    new-instance v7, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda26;

    invoke-direct {v7, p0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda26;-><init>(Lcom/termux/app/XoDosFileManager;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 637
    iget-object v6, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    new-instance v7, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda27;

    invoke-direct {v7, p0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda27;-><init>(Lcom/termux/app/XoDosFileManager;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 648
    .end local v0    # "destination":Ljava/io/File;
    .end local v1    # "counter":I
    .end local v2    # "originalName":Ljava/lang/String;
    .end local v3    # "baseName":Ljava/lang/String;
    .end local v4    # "extension":Ljava/lang/String;
    .end local v5    # "dotIndex":I
    goto :goto_1

    .line 633
    .restart local v0    # "destination":Ljava/io/File;
    .restart local v1    # "counter":I
    .restart local v2    # "originalName":Ljava/lang/String;
    .restart local v3    # "baseName":Ljava/lang/String;
    .restart local v4    # "extension":Ljava/lang/String;
    .restart local v5    # "dotIndex":I
    :cond_2
    new-instance v6, Ljava/io/IOException;

    iget-object v7, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v8, 0x7f12013f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    .end local v0    # "destination":Ljava/io/File;
    .end local v1    # "counter":I
    .end local v2    # "originalName":Ljava/lang/String;
    .end local v3    # "baseName":Ljava/lang/String;
    .end local v4    # "extension":Ljava/lang/String;
    .end local v5    # "dotIndex":I
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Paste failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PasteError"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0, v0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda28;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 649
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method synthetic lambda$runCommandAndShowInAlert$38$com-termux-app-XoDosFileManager(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "output"    # Ljava/lang/String;

    .line 1362
    invoke-direct {p0, p1, p2}, Lcom/termux/app/XoDosFileManager;->showTextDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    return-void
.end method

.method synthetic lambda$runCommandAndShowInAlert$39$com-termux-app-XoDosFileManager(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1366
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to run command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1367
    return-void
.end method

.method synthetic lambda$runCommandAndShowInAlert$40$com-termux-app-XoDosFileManager(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .line 1360
    :try_start_0
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->runCommandAndCaptureOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1361
    .local v0, "output":Ljava/lang/String;
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0, p2, v0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda38;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    .end local v0    # "output":Ljava/lang/String;
    goto :goto_0

    .line 1364
    :catch_0
    move-exception v0

    .line 1365
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0, v0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda39;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1369
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method synthetic lambda$runXdvdfsCommandInAlert$15$com-termux-app-XoDosFileManager(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "output"    # Ljava/lang/String;

    .line 708
    invoke-direct {p0, p1, p2}, Lcom/termux/app/XoDosFileManager;->showTextDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method synthetic lambda$runXdvdfsCommandInAlert$16$com-termux-app-XoDosFileManager(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 713
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to run command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 714
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 713
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 715
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 716
    return-void
.end method

.method synthetic lambda$runXdvdfsCommandInAlert$17$com-termux-app-XoDosFileManager(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "title"    # Ljava/lang/String;

    .line 704
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xdvdfs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/termux/app/XoDosFileManager;->runCommandAndCaptureOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, "output":Ljava/lang/String;
    iget-object v2, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, p3, v1}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda7;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    .end local v0    # "fullCommand":Ljava/lang/String;
    .end local v1    # "output":Ljava/lang/String;
    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda8;-><init>(Lcom/termux/app/XoDosFileManager;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 718
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method synthetic lambda$showArchiveOptions$42$com-termux-app-XoDosFileManager(Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "archiveFile"    # Ljava/io/File;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 1411
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 1417
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->extractArchiveToNewFolder(Ljava/io/File;)V

    goto :goto_0

    .line 1413
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "7z l \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File List: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1414
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1413
    invoke-direct {p0, v0, v1}, Lcom/termux/app/XoDosFileManager;->runCommandAndShowInAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    nop

    .line 1420
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$showAudioOptions$37$com-termux-app-XoDosFileManager(Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "audioFile"    # Ljava/io/File;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 1342
    if-nez p3, :cond_0

    .line 1343
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->openWithMpv(Ljava/io/File;)V

    .line 1345
    :cond_0
    return-void
.end method

.method synthetic lambda$showCopyOptions$10$com-termux-app-XoDosFileManager(Ljava/io/File;[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "options"    # [Ljava/lang/String;
    .param p3, "d"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 555
    const/4 v0, 0x0

    packed-switch p4, :pswitch_data_0

    goto/16 :goto_0

    .line 580
    :pswitch_0
    const/4 v0, 0x2

    aget-object v0, p2, v0

    const-string v1, "\ud83d\udd12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 581
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->changePermissionsRecursive(Ljava/io/File;)V

    goto/16 :goto_0

    .line 564
    :pswitch_1
    const/4 v1, 0x1

    aget-object v2, p2, v1

    const-string v3, "\ud83d\udce6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 566
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const-string v3, ".xiso"

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".iso"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 567
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 568
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\.[^.]+$"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, "baseName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 570
    .local v3, "outputName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 571
    .local v4, "outputFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xdvdfs pack \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 572
    .local v5, "command":Ljava/lang/String;
    iget-object v6, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v7, 0x7f120257

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/termux/app/XoDosFileManager;->runCommandInSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .end local v2    # "baseName":Ljava/lang/String;
    .end local v3    # "outputName":Ljava/lang/String;
    .end local v4    # "outputFile":Ljava/io/File;
    .end local v5    # "command":Ljava/lang/String;
    goto :goto_0

    .line 576
    :cond_1
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->changePermissionsRecursive(Ljava/io/File;)V

    .line 578
    goto :goto_0

    .line 557
    :pswitch_2
    iput-object p1, p0, Lcom/termux/app/XoDosFileManager;->copiedFile:Ljava/io/File;

    .line 558
    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 559
    const v4, 0x7f1200b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 558
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 561
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->refreshPasteButton()V

    .line 562
    nop

    .line 585
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$showDebOptions$24$com-termux-app-XoDosFileManager(Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "debFile"    # Ljava/io/File;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 1146
    if-nez p3, :cond_0

    .line 1147
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->showInstallMethodDialog(Ljava/io/File;)V

    .line 1149
    :cond_0
    return-void
.end method

.method synthetic lambda$showExeOptions$22$com-termux-app-XoDosFileManager(Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "exeFile"    # Ljava/io/File;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 1078
    if-nez p3, :cond_0

    .line 1079
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->runExeInSession(Ljava/io/File;)V

    goto :goto_0

    .line 1080
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 1081
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->createExeShortcut(Ljava/io/File;)V

    .line 1083
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$showFileManager$0$com-termux-app-XoDosFileManager(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 187
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->saveCurrentPath()V

    .line 188
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 189
    return-void
.end method

.method synthetic lambda$showFileManager$1$com-termux-app-XoDosFileManager(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 194
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->navigateBack()V

    .line 196
    return v1

    .line 198
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$showInstallMethodDialog$25$com-termux-app-XoDosFileManager(Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "debFile"    # Ljava/io/File;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 1164
    if-nez p3, :cond_0

    .line 1165
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->installDebInProot(Ljava/io/File;)V

    goto :goto_0

    .line 1166
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 1167
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->installDebNormally(Ljava/io/File;)V

    .line 1169
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$showPs1Options$41$com-termux-app-XoDosFileManager(Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "ps1File"    # Ljava/io/File;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 1383
    const-string v0, "\""

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 1392
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ps1-z \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1393
    const v2, 0x7f12024a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1392
    invoke-direct {p0, v0, v1}, Lcom/termux/app/XoDosFileManager;->runCommandInSession(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1389
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->extractArchiveToNewFolder(Ljava/io/File;)V

    .line 1390
    goto :goto_0

    .line 1385
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "7z l \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File List: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1386
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1385
    invoke-direct {p0, v0, v1}, Lcom/termux/app/XoDosFileManager;->runCommandAndShowInAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    nop

    .line 1396
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$showScriptOptions$30$com-termux-app-XoDosFileManager(Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "scriptFile"    # Ljava/io/File;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 1241
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 1246
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->changePermissionsRecursive(Ljava/io/File;)V

    goto :goto_0

    .line 1243
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->executeScriptInTerminal(Ljava/io/File;)V

    .line 1244
    nop

    .line 1249
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$showSelectedFilesOptions$7$com-termux-app-XoDosFileManager(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 338
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 349
    :pswitch_0
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/XoDosFileManager;->isSelectionMode:Z

    .line 351
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    const v2, 0x7f1202ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->selectButton:Landroid/widget/Button;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 353
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager;->fileAdapter:Lcom/termux/app/XoDosFileManager$FileAdapter;

    invoke-virtual {v0}, Lcom/termux/app/XoDosFileManager$FileAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 346
    :pswitch_1
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->changePermissionsForSelectedFiles()V

    .line 347
    goto :goto_0

    .line 343
    :pswitch_2
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->copySelectedFiles()V

    .line 344
    goto :goto_0

    .line 340
    :pswitch_3
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->packSelectedFiles()V

    .line 341
    nop

    .line 356
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$showSystemArchiveOptions$43$com-termux-app-XoDosFileManager(Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "archiveFile"    # Ljava/io/File;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 1460
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 1469
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->restoreSystemArchive(Ljava/io/File;)V

    goto :goto_0

    .line 1466
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosFileManager;->extractArchiveToNewFolder(Ljava/io/File;)V

    .line 1467
    goto :goto_0

    .line 1462
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "7z l \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File List: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1463
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1462
    invoke-direct {p0, v0, v1}, Lcom/termux/app/XoDosFileManager;->runCommandAndShowInAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    nop

    .line 1472
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$showXdvdfsOptions$23$com-termux-app-XoDosFileManager(Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "xboxFile"    # Ljava/io/File;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 1105
    const-string v0, "\""

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 1127
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ps1-z \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1128
    const v2, 0x7f12024a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1127
    invoke-direct {p0, v0, v1}, Lcom/termux/app/XoDosFileManager;->runCommandInSession(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1123
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xbox-z \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager;->mContext:Landroid/content/Context;

    .line 1124
    const v2, 0x7f12024e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1123
    invoke-direct {p0, v0, v1}, Lcom/termux/app/XoDosFileManager;->runCommandInSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    goto/16 :goto_0

    .line 1117
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\.[^.]+$"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_extracted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1118
    .local v1, "outputDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/termux/app/XoDosFileManager;->currentDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1119
    .local v2, "outputFolder":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xdvdfs unpack \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, "command":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unpacking to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/termux/app/XoDosFileManager;->runCommandInSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    goto :goto_0

    .line 1114
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "outputDir":Ljava/lang/String;
    .end local v2    # "outputFolder":Ljava/io/File;
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image Info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "info"

    invoke-direct {p0, p1, v1, v0}, Lcom/termux/app/XoDosFileManager;->runXdvdfsCommandInAlert(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    goto :goto_0

    .line 1111
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File Tree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tree"

    invoke-direct {p0, p1, v1, v0}, Lcom/termux/app/XoDosFileManager;->runXdvdfsCommandInAlert(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    goto :goto_0

    .line 1107
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "7z l \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File List (7z): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1108
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1107
    invoke-direct {p0, v0, v1}, Lcom/termux/app/XoDosFileManager;->runCommandAndShowInAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    nop

    .line 1131
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public start()V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/termux/app/XoDosFileManager;->showFileManager()V

    .line 128
    return-void
.end method

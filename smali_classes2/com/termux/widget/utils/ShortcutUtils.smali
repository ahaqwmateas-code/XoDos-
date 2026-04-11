.class public Lcom/termux/widget/utils/ShortcutUtils;
.super Ljava/lang/Object;
.source "ShortcutUtils.java"


# static fields
.field public static final SHORTCUT_FILES_ALLOWED_PATHS_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORTCUT_FILES_FILTER:Ljava/io/FileFilter;

.field public static final SHORTCUT_ICONS_FILES_ALLOWED_PATHS_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TERMUX_SHORTCUTS_SCRIPTS_DIR_MAX_SEARCH_DEPTH:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-string v0, "/data/data/com.termux/files/home/.shortcuts"

    const-string v1, "/data/data/com.termux/files/home/.termux"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/termux/widget/utils/ShortcutUtils;->SHORTCUT_FILES_ALLOWED_PATHS_LIST:Ljava/util/List;

    .line 33
    const-string v0, "/data/data/com.termux/files/home/.shortcuts/icons"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/termux/widget/utils/ShortcutUtils;->SHORTCUT_ICONS_FILES_ALLOWED_PATHS_LIST:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/termux/widget/utils/ShortcutUtils$1;

    invoke-direct {v0}, Lcom/termux/widget/utils/ShortcutUtils$1;-><init>()V

    sput-object v0, Lcom/termux/widget/utils/ShortcutUtils;->SHORTCUT_FILES_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enumerateShortcutFiles(Ljava/util/List;Ljava/io/File;Z)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "sorted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/termux/widget/ShortcutFile;",
            ">;",
            "Ljava/io/File;",
            "Z)V"
        }
    .end annotation

    .line 62
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Lcom/termux/widget/ShortcutFile;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/termux/widget/utils/ShortcutUtils;->enumerateShortcutFiles(Ljava/util/List;Ljava/io/File;ZI)V

    .line 63
    return-void
.end method

.method public static enumerateShortcutFiles(Ljava/util/List;Ljava/io/File;ZI)V
    .locals 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "sorted"    # Z
    .param p3, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/termux/widget/ShortcutFile;",
            ">;",
            "Ljava/io/File;",
            "ZI)V"
        }
    .end annotation

    .line 66
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Lcom/termux/widget/ShortcutFile;>;"
    const/4 v0, 0x5

    if-le p3, v0, :cond_0

    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/termux/widget/utils/ShortcutUtils;->SHORTCUT_FILES_FILTER:Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 70
    .local v0, "current_files":[Ljava/io/File;
    if-nez v0, :cond_1

    return-void

    .line 72
    :cond_1
    if-eqz p2, :cond_2

    .line 73
    new-instance v1, Lcom/termux/widget/utils/ShortcutUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/termux/widget/utils/ShortcutUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 81
    :cond_2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 82
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 83
    add-int/lit8 v4, p3, 0x1

    invoke-static {p0, v3, p2, v4}, Lcom/termux/widget/utils/ShortcutUtils;->enumerateShortcutFiles(Ljava/util/List;Ljava/io/File;ZI)V

    goto :goto_1

    .line 85
    :cond_3
    new-instance v4, Lcom/termux/widget/ShortcutFile;

    invoke-direct {v4, v3, p3}, Lcom/termux/widget/ShortcutFile;-><init>(Ljava/io/File;I)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_4
    return-void
.end method

.method public static enumerateShortcutFiles(Ljava/util/List;Z)V
    .locals 2
    .param p1, "sorted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/termux/widget/ShortcutFile;",
            ">;Z)V"
        }
    .end annotation

    .line 58
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Lcom/termux/widget/ShortcutFile;>;"
    sget-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_SHORTCUT_SCRIPTS_DIR:Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/termux/widget/utils/ShortcutUtils;->enumerateShortcutFiles(Ljava/util/List;Ljava/io/File;ZI)V

    .line 59
    return-void
.end method

.method public static getShortcutManager(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/pm/ShortcutManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "showErrorToast"    # Z

    .line 92
    const-string v0, "shortcut"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 93
    .local v0, "shortcutManager":Landroid/content/pm/ShortcutManager;
    if-nez v0, :cond_1

    .line 94
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    sget v3, Lcom/termux/widget/R$string;->error_failed_to_get_shortcut_manager:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-object v1

    .line 97
    :cond_1
    return-object v0
.end method

.method public static isTermuxAppAccessible(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "showErrorToast"    # Z

    .line 101
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->isTermuxAppAccessible(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "errmsg":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 103
    if-eqz p2, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x0

    return v1

    .line 106
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$enumerateShortcutFiles$0(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .param p0, "lhs"    # Ljava/io/File;
    .param p1, "rhs"    # Ljava/io/File;

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 77
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/widget/NaturalOrderComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

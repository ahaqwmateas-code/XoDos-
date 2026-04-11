.class public Lcom/termux/app/XoDosShortcuts;
.super Ljava/lang/Object;
.source "XoDosShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;,
        Lcom/termux/app/XoDosShortcuts$ExtractionCallback;
    }
.end annotation


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "com.termux_preferences"

.field private static final USR_PREFIX:Ljava/lang/String; = "/data/data/com.termux/files/usr"


# instance fields
.field private currentDialog:Landroid/app/AlertDialog;

.field private currentGrid:Landroid/widget/GridLayout;

.field private final desktopDir:Ljava/io/File;

.field private final desktopDir2:Ljava/io/File;

.field private extractionProgressDialog:Lcom/termux/app/ProgressDialog;

.field private final iconDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final termuxHome:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "/data/data/com.termux/files/home"

    iput-object v0, p0, Lcom/termux/app/XoDosShortcuts;->termuxHome:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/Desktop/shortcuts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/termux/app/XoDosShortcuts;->desktopDir:Ljava/io/File;

    .line 36
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/Desktop"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/termux/app/XoDosShortcuts;->desktopDir2:Ljava/io/File;

    .line 37
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/ico"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/termux/app/XoDosShortcuts;->iconDir:Ljava/io/File;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->iconDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->iconDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->desktopDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->desktopDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 49
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/termux/app/XoDosShortcuts;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/XoDosShortcuts;

    .line 31
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->desktopDir2:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/termux/app/XoDosShortcuts;Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/XoDosShortcuts;
    .param p1, "x1"    # Ljava/io/File;

    .line 31
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosShortcuts;->extractExePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/termux/app/XoDosShortcuts;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/XoDosShortcuts;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/termux/app/XoDosShortcuts;->generateDesktopFromLnk(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/termux/app/XoDosShortcuts;Landroid/widget/GridLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/XoDosShortcuts;
    .param p1, "x1"    # Landroid/widget/GridLayout;

    .line 31
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosShortcuts;->displayDesktopShortcuts(Landroid/widget/GridLayout;)V

    return-void
.end method

.method static synthetic access$400(Lcom/termux/app/XoDosShortcuts;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/XoDosShortcuts;

    .line 31
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/XoDosShortcuts;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/app/XoDosShortcuts;->launchShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private analyzeLnkStructure([B)Ljava/util/List;
    .locals 7
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 1284
    aget-byte v2, p1, v1

    const/16 v4, 0x41

    if-lt v2, v4, :cond_2

    aget-byte v2, p1, v1

    const/16 v4, 0x5a

    if-gt v2, v4, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_2

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p1, v2

    const/16 v4, 0x5c

    if-eq v2, v4, :cond_0

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p1, v2

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_2

    .line 1289
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1290
    .local v2, "path":Ljava/lang/StringBuilder;
    aget-byte v4, p1, v1

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    add-int/lit8 v4, v1, 0x3

    .line 1293
    .local v4, "j":I
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_1

    aget-byte v5, p1, v4

    if-eqz v5, :cond_1

    aget-byte v5, p1, v4

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    aget-byte v5, p1, v4

    if-eq v5, v3, :cond_1

    aget-byte v5, p1, v4

    const/16 v6, 0xd

    if-eq v5, v6, :cond_1

    .line 1294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x104

    if-ge v5, v6, :cond_1

    .line 1295
    aget-byte v5, p1, v4

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1296
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1299
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1300
    .local v3, "candidate":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".exe"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v3}, Lcom/termux/app/XoDosShortcuts;->isValidPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1301
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    .end local v2    # "path":Ljava/lang/StringBuilder;
    .end local v3    # "candidate":Ljava/lang/String;
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1307
    .end local v1    # "i":I
    :cond_3
    goto :goto_2

    .line 1305
    :catch_0
    move-exception v1

    .line 1306
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1309
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method private applyAppSpecificSettings(Ljava/lang/String;Ljava/lang/String;Lcom/termux/app/XoDosShortcuts$ExtractionCallback;)V
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "wineType"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/termux/app/XoDosShortcuts$ExtractionCallback;

    .line 257
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda11;-><init>(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;Ljava/lang/String;Lcom/termux/app/XoDosShortcuts$ExtractionCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 333
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 334
    return-void
.end method

.method private closeAndShowTerminal()V
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->currentDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->currentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->currentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/termux/app/TermuxActivity;

    if-eqz v0, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/termux/app/TermuxActivity;

    invoke-direct {p0, v0}, Lcom/termux/app/XoDosShortcuts;->showTerminalView(Lcom/termux/app/TermuxActivity;)V

    .line 1022
    :cond_1
    return-void
.end method

.method private confirmDelete(Ljava/io/File;Landroid/widget/GridLayout;Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "grid"    # Landroid/widget/GridLayout;
    .param p3, "appName"    # Ljava/lang/String;

    .line 1371
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1372
    const v1, 0x7f1200c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    .line 1373
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const v2, 0x7f1200c5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda0;-><init>(Lcom/termux/app/XoDosShortcuts;Ljava/io/File;Ljava/lang/String;Landroid/widget/GridLayout;)V

    .line 1374
    const v2, 0x7f1200c3

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1402
    const v1, 0x7f12008d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1403
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1404
    return-void
.end method

.method private convertToTermuxPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "windowsPath"    # Ljava/lang/String;
    .param p2, "wineType"    # Ljava/lang/String;

    .line 1073
    if-eqz p1, :cond_1

    const-string v0, "^[A-Z]:\\\\.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1075
    const-string v0, "glibc"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    const-string v0, "/data/data/com.termux/files/usr/glibc/xod9.9/.wine/dosdevices/"

    .local v0, "basePath":Ljava/lang/String;
    goto :goto_0

    .line 1078
    .end local v0    # "basePath":Ljava/lang/String;
    :cond_0
    const-string v0, "/data/data/com.termux/files/home/.wine/dosdevices/"

    .line 1082
    .restart local v0    # "basePath":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1083
    .local v1, "driveLetter":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1085
    .local v2, "remainingPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1086
    .local v3, "fullPath":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Converted Windows path to Termux: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1087
    return-object v3

    .line 1089
    .end local v0    # "basePath":Ljava/lang/String;
    .end local v1    # "driveLetter":Ljava/lang/String;
    .end local v2    # "remainingPath":Ljava/lang/String;
    .end local v3    # "fullPath":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private createDefaultIcon(Ljava/io/File;)V
    .locals 1
    .param p1, "iconFile"    # Ljava/io/File;

    .line 1206
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :cond_0
    goto :goto_0

    .line 1209
    :catch_0
    move-exception v0

    .line 1210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1212
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private deleteAppSettings(Ljava/lang/String;)V
    .locals 6
    .param p1, "appName"    # Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const-string v2, "com.termux_preferences"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 183
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 184
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINE_TYPE_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DXVK_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CORES_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    iget-object v3, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings reset for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    iget-object v2, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const-string v3, "Failed to reset settings"

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 194
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private displayDesktopShortcuts(Landroid/widget/GridLayout;)V
    .locals 31
    .param p1, "grid"    # Landroid/widget/GridLayout;

    .line 624
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/termux/app/XoDosShortcuts;->desktopDir:Ljava/io/File;

    new-instance v3, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda24;

    invoke-direct {v3}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 625
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_3

    array-length v0, v3

    if-nez v0, :cond_0

    move-object/from16 v17, v3

    goto/16 :goto_3

    .line 631
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 632
    const/high16 v5, -0x80000000

    invoke-virtual {v2, v5}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 633
    invoke-virtual {v2, v5}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 636
    iget-object v0, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 637
    .local v6, "dm":Landroid/util/DisplayMetrics;
    const/high16 v0, 0x43160000    # 150.0f

    iget v7, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v0

    float-to-int v7, v7

    .line 638
    .local v7, "minColumnWidth":I
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v0, v7

    const/4 v8, 0x2

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 639
    .local v9, "columnCount":I
    invoke-virtual {v2, v9}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 641
    iget v10, v6, Landroid/util/DisplayMetrics;->density:F

    .line 642
    .local v10, "density":F
    const/high16 v0, 0x42a00000    # 80.0f

    mul-float v0, v0, v10

    float-to-int v11, v0

    .line 643
    .local v11, "iconSize":I
    const/high16 v0, 0x42200000    # 40.0f

    mul-float v0, v0, v10

    float-to-int v12, v0

    .line 645
    .local v12, "buttonSize":I
    array-length v13, v3

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_1

    aget-object v15, v3, v14

    .line 646
    .local v15, "f":Ljava/io/File;
    invoke-direct {v1, v15}, Lcom/termux/app/XoDosShortcuts;->parseDesktopFile(Ljava/io/File;)Ljava/util/Map;

    move-result-object v8

    .line 647
    .local v8, "entry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, ".desktop"

    const-string v4, ""

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Name"

    invoke-static {v8, v5, v0}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 648
    .local v5, "name":Ljava/lang/String;
    const-string v0, "Icon"

    invoke-static {v8, v0, v4}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v3

    .end local v3    # "files":[Ljava/io/File;
    .local v17, "files":[Ljava/io/File;
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 649
    .local v3, "iconPath":Ljava/lang/String;
    const-string v0, "Exec"

    invoke-static {v8, v0, v4}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 652
    .local v4, "execPath":Ljava/lang/String;
    new-instance v0, Landroid/widget/LinearLayout;

    move-object/from16 v18, v6

    .end local v6    # "dm":Landroid/util/DisplayMetrics;
    .local v18, "dm":Landroid/util/DisplayMetrics;
    iget-object v6, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v6, v0

    .line 653
    .local v6, "item":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 654
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 655
    const/high16 v19, 0x41000000    # 8.0f

    mul-float v0, v10, v19

    float-to-int v0, v0

    move/from16 v21, v7

    .end local v7    # "minColumnWidth":I
    .local v21, "minColumnWidth":I
    mul-float v7, v10, v19

    float-to-int v7, v7

    move-object/from16 v22, v8

    .end local v8    # "entry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v22, "entry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    mul-float v8, v10, v19

    float-to-int v8, v8

    move/from16 v23, v9

    .end local v9    # "columnCount":I
    .local v23, "columnCount":I
    mul-float v9, v10, v19

    float-to-int v9, v9

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 658
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    move-object v7, v0

    .line 659
    .local v7, "lp":Landroid/widget/GridLayout$LayoutParams;
    const/4 v8, 0x0

    iput v8, v7, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 660
    const/4 v0, -0x2

    iput v0, v7, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 661
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, -0x80000000

    invoke-static {v9, v8}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 662
    invoke-static {v9, v8}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 663
    const/high16 v8, 0x40800000    # 4.0f

    mul-float v0, v10, v8

    float-to-int v0, v0

    mul-float v9, v10, v8

    float-to-int v9, v9

    move/from16 v24, v13

    mul-float v13, v10, v8

    float-to-int v13, v13

    move/from16 v25, v14

    mul-float v14, v10, v8

    float-to-int v14, v14

    invoke-virtual {v7, v0, v9, v13, v14}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 664
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    new-instance v0, Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    .line 668
    .local v9, "icon":Landroid/widget/ImageView;
    invoke-direct {v1, v9, v3, v5}, Lcom/termux/app/XoDosShortcuts;->loadIconWithRefresh(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v13, v0

    .line 670
    .local v13, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x1

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 671
    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    new-instance v0, Landroid/widget/TextView;

    iget-object v14, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v14, v0

    .line 675
    .local v14, "label":Landroid/widget/TextView;
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    const/16 v0, 0x11

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 677
    const/4 v8, 0x2

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 678
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 679
    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 680
    const/high16 v8, 0x40800000    # 4.0f

    mul-float v0, v10, v8

    float-to-int v0, v0

    mul-float v8, v10, v19

    float-to-int v8, v8

    move-object/from16 v19, v3

    const/4 v3, 0x0

    .end local v3    # "iconPath":Ljava/lang/String;
    .local v19, "iconPath":Ljava/lang/String;
    invoke-virtual {v14, v3, v0, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 683
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v8, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v8, v0

    .line 684
    .local v8, "buttonLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 685
    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 686
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v0

    .line 690
    .local v3, "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    new-instance v0, Landroid/widget/ImageButton;

    move-object/from16 v16, v3

    .end local v3    # "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v16, "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    .line 695
    .local v3, "openBtn":Landroid/widget/ImageButton;
    const v0, 0x7f08013e

    :try_start_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    goto :goto_1

    .line 696
    :catch_0
    move-exception v0

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    .local v26, "e":Ljava/lang/Exception;
    const v0, 0x1080024

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 699
    .end local v26    # "e":Ljava/lang/Exception;
    :goto_1
    move-object/from16 v26, v7

    .end local v7    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .local v26, "lp":Landroid/widget/GridLayout$LayoutParams;
    const/high16 v7, -0x1000000

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 701
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v27, v0

    .line 702
    .local v27, "openBtnParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v20, 0x40800000    # 4.0f

    mul-float v0, v10, v20

    float-to-int v0, v0

    move-object/from16 v7, v27

    move/from16 v27, v11

    const/4 v11, 0x0

    .end local v11    # "iconSize":I
    .local v7, "openBtnParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v27, "iconSize":I
    invoke-virtual {v7, v11, v11, v0, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 703
    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 705
    mul-float v0, v10, v20

    float-to-int v0, v0

    mul-float v11, v10, v20

    float-to-int v11, v11

    move-object/from16 v29, v7

    .end local v7    # "openBtnParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v29, "openBtnParams":Landroid/widget/LinearLayout$LayoutParams;
    mul-float v7, v10, v20

    float-to-int v7, v7

    move-object/from16 v30, v13

    .end local v13    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    .local v30, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    mul-float v13, v10, v20

    float-to-int v13, v13

    invoke-virtual {v3, v0, v11, v7, v13}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 706
    new-instance v0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda25;

    invoke-direct {v0, v1, v5, v4}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda25;-><init>(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Open "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 710
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v7, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    move-object v7, v0

    .line 712
    .local v7, "deleteBtn":Landroid/widget/ImageButton;
    const v0, 0x7f080132

    :try_start_1
    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 715
    goto :goto_2

    .line 713
    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 714
    .restart local v0    # "e":Ljava/lang/Exception;
    const v11, 0x108001d

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 716
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const/high16 v11, -0x1000000

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 718
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 719
    .local v0, "deleteBtnParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x40800000    # 4.0f

    mul-float v13, v10, v11

    float-to-int v13, v13

    const/4 v11, 0x0

    invoke-virtual {v0, v13, v11, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 720
    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 722
    const/high16 v11, 0x40800000    # 4.0f

    mul-float v13, v10, v11

    float-to-int v13, v13

    move-object/from16 v20, v0

    .end local v0    # "deleteBtnParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v20, "deleteBtnParams":Landroid/widget/LinearLayout$LayoutParams;
    mul-float v0, v10, v11

    float-to-int v0, v0

    move-object/from16 v28, v4

    .end local v4    # "execPath":Ljava/lang/String;
    .local v28, "execPath":Ljava/lang/String;
    mul-float v4, v10, v11

    float-to-int v4, v4

    mul-float v11, v11, v10

    float-to-int v11, v11

    invoke-virtual {v7, v13, v0, v4, v11}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 723
    new-instance v0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, v15, v2, v5}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda1;-><init>(Lcom/termux/app/XoDosShortcuts;Ljava/io/File;Landroid/widget/GridLayout;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 727
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 728
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 731
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 732
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 733
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 735
    invoke-virtual {v2, v6}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 645
    .end local v3    # "openBtn":Landroid/widget/ImageButton;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "item":Landroid/widget/LinearLayout;
    .end local v7    # "deleteBtn":Landroid/widget/ImageButton;
    .end local v8    # "buttonLayout":Landroid/widget/LinearLayout;
    .end local v9    # "icon":Landroid/widget/ImageView;
    .end local v14    # "label":Landroid/widget/TextView;
    .end local v15    # "f":Ljava/io/File;
    .end local v16    # "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "iconPath":Ljava/lang/String;
    .end local v20    # "deleteBtnParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v22    # "entry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v28    # "execPath":Ljava/lang/String;
    .end local v29    # "openBtnParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v14, v25, 0x1

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    move/from16 v7, v21

    move/from16 v9, v23

    move/from16 v13, v24

    move/from16 v11, v27

    const/high16 v5, -0x80000000

    const/4 v8, 0x2

    goto/16 :goto_0

    .line 738
    .end local v17    # "files":[Ljava/io/File;
    .end local v18    # "dm":Landroid/util/DisplayMetrics;
    .end local v21    # "minColumnWidth":I
    .end local v23    # "columnCount":I
    .end local v27    # "iconSize":I
    .local v3, "files":[Ljava/io/File;
    .local v6, "dm":Landroid/util/DisplayMetrics;
    .local v7, "minColumnWidth":I
    .local v9, "columnCount":I
    .restart local v11    # "iconSize":I
    :cond_1
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move/from16 v21, v7

    move/from16 v23, v9

    move/from16 v27, v11

    .end local v3    # "files":[Ljava/io/File;
    .end local v6    # "dm":Landroid/util/DisplayMetrics;
    .end local v7    # "minColumnWidth":I
    .end local v9    # "columnCount":I
    .end local v11    # "iconSize":I
    .restart local v17    # "files":[Ljava/io/File;
    .restart local v18    # "dm":Landroid/util/DisplayMetrics;
    .restart local v21    # "minColumnWidth":I
    .restart local v23    # "columnCount":I
    .restart local v27    # "iconSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridLayout;->invalidate()V

    .line 739
    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridLayout;->requestLayout()V

    .line 741
    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 742
    .local v0, "parent":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/ScrollView;

    if-eqz v3, :cond_2

    .line 743
    new-instance v3, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 745
    :cond_2
    return-void

    .line 625
    .end local v0    # "parent":Landroid/view/View;
    .end local v10    # "density":F
    .end local v12    # "buttonSize":I
    .end local v17    # "files":[Ljava/io/File;
    .end local v18    # "dm":Landroid/util/DisplayMetrics;
    .end local v21    # "minColumnWidth":I
    .end local v23    # "columnCount":I
    .end local v27    # "iconSize":I
    .restart local v3    # "files":[Ljava/io/File;
    :cond_3
    move-object/from16 v17, v3

    .line 626
    .end local v3    # "files":[Ljava/io/File;
    .restart local v17    # "files":[Ljava/io/File;
    :goto_3
    iget-object v0, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const v3, 0x7f120237

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 627
    return-void
.end method

.method private execShellXoDosStyle(Ljava/lang/String;)Z
    .locals 14
    .param p1, "cmd"    # Ljava/lang/String;

    .line 344
    const-string v0, "ShellCommand"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v2, Ljava/lang/ProcessBuilder;

    const-string v3, "sh"

    const-string v4, "-c"

    filled-new-array {v3, v4, p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 349
    .local v2, "processBuilder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v3

    .line 350
    .local v3, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "PATH"

    const-string v5, "/data/data/com.termux/files/usr/bin:/system/bin"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v4, "LD_LIBRARY_PATH"

    const-string v5, "/data/data/com.termux/files/usr/lib"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v4, "PREFIX"

    const-string v5, "/data/data/com.termux/files/usr"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v4, "HOME"

    const-string v5, "/data/data/com.termux/files/home"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v4, "TMPDIR"

    const-string v5, "/data/data/com.termux/files/usr/tmp"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 359
    .local v4, "process":Ljava/lang/Process;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 360
    .local v5, "stdInput":Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 363
    .local v6, "stdError":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v7, "output":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v8, "error":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v9

    .local v10, "s":Ljava/lang/String;
    const-string v11, "\n"

    if-eqz v9, :cond_0

    .line 367
    :try_start_1
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 370
    :cond_0
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    if-eqz v9, :cond_1

    .line 371
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 374
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v9

    .line 377
    .local v9, "exitCode":I
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 378
    const-string v11, "ShellOutput"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Output: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 381
    const-string v11, "ShellError"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exit code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 385
    if-nez v9, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 387
    .end local v2    # "processBuilder":Ljava/lang/ProcessBuilder;
    .end local v3    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "stdInput":Ljava/io/BufferedReader;
    .end local v6    # "stdError":Ljava/io/BufferedReader;
    .end local v7    # "output":Ljava/lang/StringBuilder;
    .end local v8    # "error":Ljava/lang/StringBuilder;
    .end local v9    # "exitCode":I
    .end local v10    # "s":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 388
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception executing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    return v1
.end method

.method private extractExeFromExecLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "execLine"    # Ljava/lang/String;

    .line 750
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 752
    .local v1, "start":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 753
    .local v0, "end":I
    if-le v0, v1, :cond_0

    .line 754
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 757
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private extractExePath(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p1, "lnkFile"    # Ljava/io/File;

    .line 1216
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1217
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v2, v1

    new-array v1, v2, [B

    .line 1218
    .local v1, "buffer":[B
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 1221
    const-string v2, "UTF-16LE"

    const-string v3, "ISO-8859-1"

    const-string v4, "UTF-8"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 1222
    .local v2, "encodings":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1224
    .local v3, "allCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1226
    .local v6, "encoding":Ljava/lang/String;
    :try_start_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1227
    .local v7, "content":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/termux/app/XoDosShortcuts;->findPathsInContent(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1228
    .local v8, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1231
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 1229
    :catch_0
    move-exception v7

    .line 1224
    .end local v6    # "encoding":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1235
    :cond_0
    :try_start_3
    invoke-direct {p0, v1}, Lcom/termux/app/XoDosShortcuts;->analyzeLnkStructure([B)Ljava/util/List;

    move-result-object v4

    .line 1236
    .local v4, "rawCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1239
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/termux/app/XoDosShortcuts;->selectBestPath(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1241
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1239
    return-object v5

    .line 1216
    .end local v1    # "buffer":[B
    .end local v2    # "encodings":[Ljava/lang/String;
    .end local v3    # "allCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "rawCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "lnkFile":Ljava/io/File;
    :goto_2
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1241
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p1    # "lnkFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 1242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1245
    .end local v0    # "e":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not extract path from LNK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1246
    const/4 v0, 0x0

    return-object v0
.end method

.method private findPathsInContent(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "[A-Z]:\\\\[^\\x00\\s\\|\\>\\<\\*\\?\\\"]+\\.exe"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1255
    .local v1, "exePattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1256
    .local v3, "exeMatcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1257
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 1258
    .local v4, "candidate":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/termux/app/XoDosShortcuts;->isValidPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1259
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    .end local v4    # "candidate":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1264
    :cond_1
    const-string v4, "[A-Z]:\\\\[^\\x00\\s\\|\\>\\<\\*\\?\\\"]+"

    invoke-static {v4, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1265
    .local v2, "pathPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1266
    .local v4, "pathMatcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1267
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 1268
    .local v5, "candidate":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/termux/app/XoDosShortcuts;->isValidPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1269
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    .end local v5    # "candidate":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 1273
    :cond_3
    return-object v0
.end method

.method private generateDesktopFromLnk(Ljava/io/File;Ljava/lang/String;)V
    .locals 10
    .param p1, "lnkFile"    # Ljava/io/File;
    .param p2, "exePath"    # Ljava/lang/String;

    .line 1027
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".lnk"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "baseName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/termux/app/XoDosShortcuts;->getWineType()Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, "wineType":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/termux/app/XoDosShortcuts;->convertToTermuxPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1032
    .local v2, "convertedPath":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/termux/app/XoDosShortcuts;->getWineCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1034
    .local v3, "wineCommand":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Converting path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1037
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/termux/app/XoDosShortcuts;->iconDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1038
    .local v4, "iconFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1039
    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/termux/app/XoDosShortcuts;->generateIcon(Ljava/lang/String;Ljava/io/File;Z)V

    .line 1043
    :cond_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/termux/app/XoDosShortcuts;->desktopDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".desktop"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1044
    .local v5, "desktopFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1045
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    .local v6, "out":Ljava/io/PrintWriter;
    :try_start_1
    const-string v7, "[Desktop Entry]"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    const-string v7, "Type=Application"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exec="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Icon="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    const-string v7, "Terminal=false"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    const-string v7, "Categories=Game;"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Created desktop file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1055
    :try_start_2
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1045
    :catchall_0
    move-exception v7

    :try_start_3
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v8

    :try_start_4
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "lnkFile":Ljava/io/File;
    .end local p2    # "exePath":Ljava/lang/String;
    :goto_0
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1059
    .end local v0    # "baseName":Ljava/lang/String;
    .end local v1    # "wineType":Ljava/lang/String;
    .end local v2    # "convertedPath":Ljava/lang/String;
    .end local v3    # "wineCommand":Ljava/lang/String;
    .end local v4    # "iconFile":Ljava/io/File;
    .end local v5    # "desktopFile":Ljava/io/File;
    .end local v6    # "out":Ljava/io/PrintWriter;
    .restart local p1    # "lnkFile":Ljava/io/File;
    .restart local p2    # "exePath":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_2

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1060
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private generateIcon(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 5
    .param p1, "exePath"    # Ljava/lang/String;
    .param p2, "iconFile"    # Ljava/io/File;
    .param p3, "refreshAfter"    # Z

    .line 1095
    move-object v0, p1

    .line 1096
    .local v0, "finalExePath":Ljava/lang/String;
    move-object v1, p2

    .line 1097
    .local v1, "finalIconFile":Ljava/io/File;
    move v2, p3

    .line 1099
    .local v2, "shouldRefresh":Z
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda20;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda20;-><init>(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1184
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1185
    return-void
.end method

.method private getAppCores(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;

    .line 159
    const-string v0, "0"

    :try_start_0
    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const-string v2, "com.termux_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 160
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CORES_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 161
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    return-object v0
.end method

.method private getAppDriver(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;

    .line 136
    const-string v0, "<none>"

    :try_start_0
    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const-string v2, "com.termux_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 137
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DRIVER_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 138
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    return-object v0
.end method

.method private getAppDxvk(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;

    .line 113
    const-string v0, "<none>"

    :try_start_0
    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const-string v2, "com.termux_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 114
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DXVK_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 115
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    return-object v0
.end method

.method private getAppWineType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const-string v1, "com.termux_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WINE_TYPE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/termux/app/XoDosShortcuts;->getWineType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 92
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    invoke-direct {p0}, Lcom/termux/app/XoDosShortcuts;->getWineType()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCoreSelectionIndex(Ljava/lang/String;)I
    .locals 8
    .param p1, "cores"    # Ljava/lang/String;

    .line 408
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 409
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v1, "8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :pswitch_2
    const-string v1, "7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :pswitch_3
    const-string v1, "6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :pswitch_4
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :pswitch_5
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :pswitch_6
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_7
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 417
    return v0

    .line 416
    :pswitch_8
    const/4 v0, 0x7

    return v0

    .line 415
    :pswitch_9
    return v2

    .line 414
    :pswitch_a
    return v3

    .line 413
    :pswitch_b
    return v4

    .line 412
    :pswitch_c
    return v5

    .line 411
    :pswitch_d
    return v6

    .line 410
    :pswitch_e
    return v7

    .line 408
    :cond_2
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private getCoresValueFromIndex(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 423
    packed-switch p1, :pswitch_data_0

    .line 431
    const-string v0, "0"

    return-object v0

    .line 430
    :pswitch_0
    const-string v0, "8"

    return-object v0

    .line 429
    :pswitch_1
    const-string v0, "7"

    return-object v0

    .line 428
    :pswitch_2
    const-string v0, "6"

    return-object v0

    .line 427
    :pswitch_3
    const-string v0, "4"

    return-object v0

    .line 426
    :pswitch_4
    const-string v0, "3"

    return-object v0

    .line 425
    :pswitch_5
    const-string v0, "2"

    return-object v0

    .line 424
    :pswitch_6
    const-string v0, "1"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getWineCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "wineType"    # Ljava/lang/String;

    .line 1064
    const-string v0, "glibc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    const-string v0, "/data/data/com.termux/files/usr/glibc/opt/scripts/xodos_wine"

    return-object v0

    .line 1067
    :cond_0
    const-string v0, "/data/data/com.termux/files/usr/bin/xbio"

    return-object v0
.end method

.method private getWineType()Ljava/lang/String;
    .locals 4

    .line 79
    const-string v0, "bionic"

    :try_start_0
    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const-string v2, "com.termux_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 80
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "WINE_TYPE"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 81
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    return-object v0
.end method

.method private isValidPath(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 1332
    if-eqz p1, :cond_0

    .line 1333
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 1334
    const-string v0, "@@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1335
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1336
    const-string v0, "^[A-Z]:\\\\[^\\x00\\s\\|\\>\\<\\*\\?\\\"]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1332
    :goto_0
    return v0
.end method

.method static synthetic lambda$displayDesktopShortcuts$12(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 624
    const-string v0, ".desktop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$displayDesktopShortcuts$15(Landroid/view/View;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;

    .line 743
    move-object v0, p0

    check-cast v0, Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method

.method private launchShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "execPath"    # Ljava/lang/String;
    .param p3, "wineType"    # Ljava/lang/String;

    .line 850
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/termux/app/TermuxActivity;

    if-nez v0, :cond_0

    .line 851
    invoke-direct {p0, p1, p2}, Lcom/termux/app/XoDosShortcuts;->launchWithProcessBuilder(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    return-void

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/termux/app/TermuxActivity;

    .line 859
    .local v0, "termuxActivity":Lcom/termux/app/TermuxActivity;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "termux-x11 :0 >/dev/null 2>&1 & pkill -f \'wine\'; sleep 3 && "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > /sdcard/xodos_shortcuts-logs.txt 2>&1\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, "command":Ljava/lang/String;
    const-string v2, "LaunchCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 865
    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->getCurrentStoredSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    .line 866
    .local v2, "session":Lcom/termux/terminal/TerminalSession;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 868
    invoke-virtual {v2, v1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 869
    invoke-direct {p0, v0}, Lcom/termux/app/XoDosShortcuts;->showTerminalView(Lcom/termux/app/TermuxActivity;)V

    .line 870
    iget-object v3, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const v7, 0x7f120185

    invoke-virtual {v4, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 873
    move-object v3, p1

    .line 874
    .local v3, "appNameForToast":Ljava/lang/String;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0, v3}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda12;-><init>(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 935
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 939
    invoke-direct {p0}, Lcom/termux/app/XoDosShortcuts;->closeAndShowTerminal()V

    .line 940
    return-void

    .line 945
    .end local v2    # "session":Lcom/termux/terminal/TerminalSession;
    .end local v3    # "appNameForToast":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/termux/app/XoDosShortcuts;->launchWithProcessBuilder(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    .end local v1    # "command":Ljava/lang/String;
    goto :goto_0

    .line 947
    :catch_0
    move-exception v1

    .line 948
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to launch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LaunchError"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-direct {p0, p1, p2}, Lcom/termux/app/XoDosShortcuts;->launchWithProcessBuilder(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private launchWithProcessBuilder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "execPath"    # Ljava/lang/String;

    .line 955
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p2, p1}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda18;-><init>(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1004
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1005
    return-void
.end method

.method private listArchiveFiles(Ljava/io/File;)Ljava/util/List;
    .locals 7
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "<none>"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 459
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 460
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".7z"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".tar.gz"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 461
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    .end local v4    # "f":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 465
    :cond_2
    return-object v0
.end method

.method private loadDriverListForWine(Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 2
    .param p1, "wineType"    # Ljava/lang/String;
    .param p2, "spinner"    # Landroid/widget/Spinner;
    .param p3, "selectIfFound"    # Ljava/lang/String;

    .line 445
    const-string v0, "glibc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/glibc/opt/libs/mesa"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "driverDir":Ljava/io/File;
    goto :goto_0

    .line 448
    .end local v0    # "driverDir":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/drivers/25"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    .restart local v0    # "driverDir":Ljava/io/File;
    :goto_0
    invoke-direct {p0, v0}, Lcom/termux/app/XoDosShortcuts;->listArchiveFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 451
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2, v1, p3}, Lcom/termux/app/XoDosShortcuts;->updateSpinner(Landroid/widget/Spinner;Ljava/util/List;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method private loadDxvkListForWine(Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 2
    .param p1, "wineType"    # Ljava/lang/String;
    .param p2, "spinner"    # Landroid/widget/Spinner;
    .param p3, "selectIfFound"    # Ljava/lang/String;

    .line 437
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/glibc/opt/libs/d3d"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, "dxvkDir":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/termux/app/XoDosShortcuts;->listArchiveFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 439
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2, v1, p3}, Lcom/termux/app/XoDosShortcuts;->updateSpinner(Landroid/widget/Spinner;Ljava/util/List;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method private loadIconWithRefresh(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "iconPath"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;

    .line 578
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 579
    .local v0, "iconFile":Ljava/io/File;
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const v2, 0x1080053

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 582
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 583
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 586
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 588
    invoke-direct {p0, p3}, Lcom/termux/app/XoDosShortcuts;->regenerateIconForApp(Ljava/lang/String;)V

    .line 590
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    goto :goto_1

    .line 591
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 593
    invoke-direct {p0, p3}, Lcom/termux/app/XoDosShortcuts;->regenerateIconForApp(Ljava/lang/String;)V

    .line 595
    :goto_1
    return-void
.end method

.method private parseDesktopFile(Ljava/io/File;)Ljava/util/Map;
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1341
    const-string v0, "="

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1342
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1344
    .local v4, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1345
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1346
    const/4 v5, 0x2

    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 1347
    .local v5, "parts":[Ljava/lang/String;
    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v5, v2

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1348
    nop

    .end local v5    # "parts":[Ljava/lang/String;
    goto :goto_0

    .line 1350
    .end local v6    # "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1352
    .end local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1342
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p1    # "file":Ljava/io/File;
    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1350
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v3

    const v6, 0x7f120117

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1353
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-object v1
.end method

.method private refreshShortcuts(Landroid/widget/GridLayout;)V
    .locals 2
    .param p1, "grid"    # Landroid/widget/GridLayout;

    .line 532
    new-instance v0, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;

    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->currentDialog:Landroid/app/AlertDialog;

    invoke-direct {v0, p0, p1, v1}, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;-><init>(Lcom/termux/app/XoDosShortcuts;Landroid/widget/GridLayout;Landroid/app/AlertDialog;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 533
    return-void
.end method

.method private regenerateIconForApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;

    .line 599
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda23;-><init>(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 618
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 619
    return-void
.end method

.method private saveAppCores(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "cores"    # Ljava/lang/String;

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const-string v1, "com.termux_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 171
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 172
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CORES_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private saveAppDriver(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "driver"    # Ljava/lang/String;

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const-string v1, "com.termux_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 149
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DRIVER_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private saveAppDxvk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "dxvk"    # Ljava/lang/String;

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const-string v1, "com.termux_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 126
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DXVK_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private saveAppWineType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "wineType"    # Ljava/lang/String;

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const-string v1, "com.termux_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 103
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WINE_TYPE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private saveCoreSettingsToConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "cores"    # Ljava/lang/String;

    .line 763
    const-string v0, "ConfigSave"

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/home/xodwine.cfg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    .local v1, "configFile":Ljava/io/File;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 767
    .local v2, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "="

    if-eqz v3, :cond_3

    .line 768
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 770
    .local v3, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "line":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 771
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 772
    invoke-virtual {v9, v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 773
    .local v8, "parts":[Ljava/lang/String;
    array-length v10, v8

    if-ne v10, v6, :cond_1

    .line 774
    aget-object v10, v8, v5

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v8, v4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 776
    .end local v8    # "parts":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 778
    .end local v9    # "line":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 768
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "appName":Ljava/lang/String;
    .end local p2    # "cores":Ljava/lang/String;
    :goto_1
    throw v4

    .line 782
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local p1    # "appName":Ljava/lang/String;
    .restart local p2    # "cores":Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v3, 0x0

    .line 783
    .local v3, "primaryCores":Ljava/lang/String;
    const/4 v8, 0x0

    .line 785
    .local v8, "secondaryCores":Ljava/lang/String;
    const-string v9, "0"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 786
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_4
    :pswitch_0
    goto :goto_3

    :pswitch_1
    const-string v4, "8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x6

    goto :goto_4

    :pswitch_2
    const-string v4, "7"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    goto :goto_4

    :pswitch_3
    const-string v4, "6"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    goto :goto_4

    :pswitch_4
    const-string v4, "4"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    goto :goto_4

    :pswitch_5
    const-string v4, "3"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    goto :goto_4

    :pswitch_6
    const-string v5, "2"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :pswitch_7
    const-string v4, "1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :goto_3
    const/4 v4, -0x1

    :goto_4
    const-string v5, "0-1"

    packed-switch v4, :pswitch_data_1

    goto :goto_5

    .line 812
    :pswitch_8
    :try_start_6
    const-string v4, "0-7"

    move-object v3, v4

    .line 813
    move-object v8, v5

    goto :goto_5

    .line 808
    :pswitch_9
    const-string v4, "1-7"

    move-object v3, v4

    .line 809
    move-object v8, v5

    .line 810
    goto :goto_5

    .line 804
    :pswitch_a
    const-string v4, "2-7"

    move-object v3, v4

    .line 805
    move-object v8, v5

    .line 806
    goto :goto_5

    .line 800
    :pswitch_b
    const-string v4, "3-7"

    move-object v3, v4

    .line 801
    const-string v4, "0-2"

    move-object v8, v4

    .line 802
    goto :goto_5

    .line 796
    :pswitch_c
    const-string v4, "4-7"

    move-object v3, v4

    .line 797
    const-string v4, "0-3"

    move-object v8, v4

    .line 798
    goto :goto_5

    .line 792
    :pswitch_d
    const-string v4, "5-7"

    move-object v3, v4

    .line 793
    const-string v4, "0-4"

    move-object v8, v4

    .line 794
    goto :goto_5

    .line 788
    :pswitch_e
    const-string v4, "6-7"

    move-object v3, v4

    .line 789
    const-string v4, "0-5"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v8, v4

    .line 790
    nop

    .line 819
    :cond_5
    :goto_5
    const-string v4, "SECONDARY_CORES"

    const-string v5, "PRIMARY_CORES"

    if-eqz v3, :cond_6

    if-eqz v8, :cond_6

    .line 820
    :try_start_7
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 823
    :cond_6
    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :goto_6
    const-string v4, "# APP_CORES_FOR"

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 832
    .local v4, "writer":Ljava/io/FileWriter;
    :try_start_8
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 833
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const-string v10, "\n"

    if-eqz v9, :cond_7

    .line 834
    :try_start_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_8

    .line 836
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 838
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_8
    goto :goto_7

    .line 839
    :cond_8
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    .line 841
    .end local v4    # "writer":Ljava/io/FileWriter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Core settings saved to xodwine.cfg for app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 845
    nop

    .end local v1    # "configFile":Ljava/io/File;
    .end local v2    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "primaryCores":Ljava/lang/String;
    .end local v8    # "secondaryCores":Ljava/lang/String;
    goto :goto_a

    .line 831
    .restart local v1    # "configFile":Ljava/io/File;
    .restart local v2    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "primaryCores":Ljava/lang/String;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    .restart local v8    # "secondaryCores":Ljava/lang/String;
    :catchall_2
    move-exception v5

    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v6

    :try_start_c
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "appName":Ljava/lang/String;
    .end local p2    # "cores":Ljava/lang/String;
    :goto_9
    throw v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 843
    .end local v1    # "configFile":Ljava/io/File;
    .end local v2    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "primaryCores":Ljava/lang/String;
    .end local v4    # "writer":Ljava/io/FileWriter;
    .end local v8    # "secondaryCores":Ljava/lang/String;
    .restart local p1    # "appName":Ljava/lang/String;
    .restart local p2    # "cores":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 844
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save core settings to xodwine.cfg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private selectBestPath(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p2, "lnkName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1314
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1317
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1318
    .local v1, "candidate":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".exe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1319
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected EXE path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1320
    return-object v1

    .line 1322
    .end local v1    # "candidate":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1325
    :cond_2
    new-instance v0, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparing(Lj$/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1326
    .local v0, "longest":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected longest path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1327
    return-object v0
.end method

.method private setSpinnerSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .line 395
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 396
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 397
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 398
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 400
    return-void

    .line 397
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private showAppSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "execPath"    # Ljava/lang/String;

    .line 198
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0026

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 200
    .local v9, "view":Landroid/view/View;
    const v0, 0x7f090184

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Spinner;

    .line 201
    .local v10, "dxvkSpinner":Landroid/widget/Spinner;
    const v0, 0x7f090182

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Spinner;

    .line 202
    .local v11, "driverSpinner":Landroid/widget/Spinner;
    const v0, 0x7f090154

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Spinner;

    .line 205
    .local v12, "coresSpinner":Landroid/widget/Spinner;
    invoke-direct/range {p0 .. p1}, Lcom/termux/app/XoDosShortcuts;->getAppWineType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 206
    .local v13, "currentWine":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/termux/app/XoDosShortcuts;->getAppDxvk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 207
    .local v14, "currentDxvk":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/termux/app/XoDosShortcuts;->getAppDriver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 208
    .local v15, "currentDriver":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/termux/app/XoDosShortcuts;->getAppCores(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "currentCores":Ljava/lang/String;
    const-string v22, "cores 6 only (1-7)"

    const-string v23, "cores 7 only (0-7)"

    const-string v16, "No core restriction"

    const-string v17, "cores 1 only (6-7)"

    const-string v18, "cores 2 only (5-7)"

    const-string v19, "cores 3 only (4-7)"

    const-string v20, "cores 4 only (3-7)"

    const-string v21, "cores 6 only (2-7)"

    filled-new-array/range {v16 .. v23}, [Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 221
    .local v4, "coreOptions":[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, v6, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object v3, v0

    .line 223
    .local v3, "coresAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v12, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 224
    invoke-direct {v6, v5}, Lcom/termux/app/XoDosShortcuts;->getCoreSelectionIndex(Ljava/lang/String;)I

    move-result v2

    .line 225
    .local v2, "coreSelection":I
    invoke-virtual {v12, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 228
    invoke-direct {v6, v13, v10, v14}, Lcom/termux/app/XoDosShortcuts;->loadDxvkListForWine(Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 229
    invoke-direct {v6, v13, v11, v15}, Lcom/termux/app/XoDosShortcuts;->loadDriverListForWine(Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 231
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, v6, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, v6, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v7, v8, v17

    .line 232
    move/from16 v17, v2

    .end local v2    # "coreSelection":I
    .local v17, "coreSelection":I
    const v2, 0x7f120050

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v2, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda9;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v18, v9

    move-object v9, v2

    .end local v9    # "view":Landroid/view/View;
    .local v18, "view":Landroid/view/View;
    move-object v2, v10

    move-object/from16 v19, v3

    .end local v3    # "coresAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v19, "coresAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object v3, v11

    move-object/from16 v20, v4

    .end local v4    # "coreOptions":[Ljava/lang/String;
    .local v20, "coreOptions":[Ljava/lang/String;
    move-object v4, v12

    move-object/from16 v21, v5

    .end local v5    # "currentCores":Ljava/lang/String;
    .local v21, "currentCores":Ljava/lang/String;
    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda9;-><init>(Lcom/termux/app/XoDosShortcuts;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 234
    const v0, 0x7f1202df

    invoke-virtual {v8, v0, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 247
    const v1, 0x7f12008d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda10;

    invoke-direct {v1, v6, v7}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda10;-><init>(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;)V

    .line 248
    const v2, 0x7f1202d7

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 253
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 1358
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1359
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1360
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1361
    const v1, 0x7f120242

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda13;-><init>(Lcom/termux/app/XoDosShortcuts;)V

    .line 1362
    const v2, 0x7f120391

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1366
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1367
    return-void
.end method

.method private showLaunchConfirmation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "execPath"    # Ljava/lang/String;

    .line 479
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosShortcuts;->getAppWineType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "wineType":Ljava/lang/String;
    const-string v1, "glibc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const v2, 0x7f12039f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const v2, 0x7f12039e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 484
    .local v1, "wineTypeDisplay":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosShortcuts;->getAppDxvk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, "dxvk":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosShortcuts;->getAppDriver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, "driver":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosShortcuts;->getAppCores(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, "cores":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .local v5, "message":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const v10, 0x7f12017f

    invoke-virtual {v6, v10, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v6, "<none>"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 492
    const-string v8, "\n\u2022 DXVK: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 495
    const-string v6, "\n\u2022 Driver: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_2
    const-string v6, "0"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 498
    const-string v6, "\n\u2022 Cores: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_3
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v9

    .line 502
    const v9, 0x7f12017d

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 503
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0, p1, v0, p2}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda6;-><init>(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const v8, 0x7f12017c

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 521
    const v7, 0x7f12008d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0, p1, p2}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda7;-><init>(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const v8, 0x7f1202fa

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 527
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 528
    return-void
.end method

.method private showShortcutGrid()V
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0902b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridLayout;

    .line 59
    .local v1, "grid":Landroid/widget/GridLayout;
    iput-object v1, p0, Lcom/termux/app/XoDosShortcuts;->currentGrid:Landroid/widget/GridLayout;

    .line 62
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    const v4, 0x7f1200cc

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 64
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 65
    const v4, 0x7f1200a0

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0, v1}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda21;-><init>(Lcom/termux/app/XoDosShortcuts;Landroid/widget/GridLayout;)V

    .line 66
    const v4, 0x7f1202cd

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 69
    .local v2, "dialog":Landroid/app/AlertDialog;
    iput-object v2, p0, Lcom/termux/app/XoDosShortcuts;->currentDialog:Landroid/app/AlertDialog;

    .line 70
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 71
    new-instance v3, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0, v1}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda22;-><init>(Lcom/termux/app/XoDosShortcuts;Landroid/widget/GridLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridLayout;->post(Ljava/lang/Runnable;)Z

    .line 73
    new-instance v3, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;

    invoke-direct {v3, p0, v1, v2}, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;-><init>(Lcom/termux/app/XoDosShortcuts;Landroid/widget/GridLayout;Landroid/app/AlertDialog;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void
.end method

.method private showTerminalView(Lcom/termux/app/TermuxActivity;)V
    .locals 2
    .param p1, "termuxActivity"    # Lcom/termux/app/TermuxActivity;

    .line 1009
    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getMainContentView()Lcom/termux/app/terminal/DisplaySlidingWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1010
    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getMainContentView()Lcom/termux/app/terminal/DisplaySlidingWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->setTerminalViewSwitchSlider(Z)V

    .line 1012
    :cond_0
    return-void
.end method

.method private tryAlternativePaths(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "originalPath"    # Ljava/lang/String;

    .line 1189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    .local v0, "alternatives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "/usr/glibc/xod9.9/.wine/dosdevices/"

    const-string v2, "/home/.wine/dosdevices/"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1197
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/com.termux/files/usr/glibc/xod9.9/.wine/dosdevices/c:/windows/system32/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/com.termux/files/home/.wine/dosdevices/c:/windows/system32/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private updateSpinner(Landroid/widget/Spinner;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p3, "selectIfFound"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 470
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 472
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 473
    invoke-direct {p0, p1, p3}, Lcom/termux/app/XoDosShortcuts;->setSpinnerSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 474
    return-void
.end method


# virtual methods
.method synthetic lambda$applyAppSpecificSettings$4$com-termux-app-XoDosShortcuts()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->extractionProgressDialog:Lcom/termux/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lcom/termux/app/ProgressDialog;

    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/termux/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/app/XoDosShortcuts;->extractionProgressDialog:Lcom/termux/app/ProgressDialog;

    .line 269
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->extractionProgressDialog:Lcom/termux/app/ProgressDialog;

    const-string v1, "Applying settings..."

    invoke-virtual {v0, v1}, Lcom/termux/app/ProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->extractionProgressDialog:Lcom/termux/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/app/ProgressDialog;->setCancelable(Z)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->extractionProgressDialog:Lcom/termux/app/ProgressDialog;

    invoke-virtual {v0}, Lcom/termux/app/ProgressDialog;->show()V

    .line 273
    return-void
.end method

.method synthetic lambda$applyAppSpecificSettings$5$com-termux-app-XoDosShortcuts()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->extractionProgressDialog:Lcom/termux/app/ProgressDialog;

    const-string v1, "Extracting DXVK..."

    invoke-virtual {v0, v1}, Lcom/termux/app/ProgressDialog;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$applyAppSpecificSettings$6$com-termux-app-XoDosShortcuts()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->extractionProgressDialog:Lcom/termux/app/ProgressDialog;

    const-string v1, "Extracting driver..."

    invoke-virtual {v0, v1}, Lcom/termux/app/ProgressDialog;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$applyAppSpecificSettings$7$com-termux-app-XoDosShortcuts()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->extractionProgressDialog:Lcom/termux/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->extractionProgressDialog:Lcom/termux/app/ProgressDialog;

    invoke-virtual {v0}, Lcom/termux/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->extractionProgressDialog:Lcom/termux/app/ProgressDialog;

    invoke-virtual {v0}, Lcom/termux/app/ProgressDialog;->dismiss()V

    .line 328
    :cond_0
    return-void
.end method

.method synthetic lambda$applyAppSpecificSettings$8$com-termux-app-XoDosShortcuts(Ljava/lang/String;Ljava/lang/String;Lcom/termux/app/XoDosShortcuts$ExtractionCallback;)V
    .locals 21
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "wineType"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/termux/app/XoDosShortcuts$ExtractionCallback;

    .line 258
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "<none>"

    const/4 v4, 0x1

    .line 259
    .local v4, "success":Z
    invoke-direct/range {p0 .. p1}, Lcom/termux/app/XoDosShortcuts;->getAppDxvk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "dxvk":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/termux/app/XoDosShortcuts;->getAppDriver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "driver":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting background extraction for app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "ExtractionDebug"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DXVK: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", Driver: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v7, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    new-instance v10, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda14;

    invoke-direct {v10, v1}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda14;-><init>(Lcom/termux/app/XoDosShortcuts;)V

    invoke-virtual {v7, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    :try_start_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v10, "succeeded"

    const-string v11, "failed"

    const-string v14, "\' -y"

    const-string v15, "\' -o\'"

    const-string v12, "/data/data/com.termux/files/usr/bin/7z x \'"

    const-string v13, "glibc"

    if-nez v7, :cond_3

    .line 278
    :try_start_1
    iget-object v7, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    new-instance v8, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda15;

    invoke-direct {v8, v1}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda15;-><init>(Lcom/termux/app/XoDosShortcuts;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.termux/files/usr/glibc/opt/libs/d3d/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, "dxvkSrc":Ljava/lang/String;
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v8, :cond_0

    .line 283
    :try_start_2
    const-string v8, "/data/data/com.termux/files/usr/glibc/xod9.9/.wine"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 324
    .end local v7    # "dxvkSrc":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v5

    goto/16 :goto_a

    .line 319
    :catch_0
    move-exception v0

    move-object/from16 v16, v5

    goto/16 :goto_8

    .line 284
    .restart local v7    # "dxvkSrc":Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string v8, "/data/data/com.termux/files/home/.wine"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    nop

    .line 285
    .local v8, "winePrefix":Ljava/lang/String;
    move-object/from16 v16, v5

    .end local v5    # "dxvk":Ljava/lang/String;
    .local v16, "dxvk":Ljava/lang/String;
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v17, v8

    .end local v8    # "winePrefix":Ljava/lang/String;
    .local v17, "winePrefix":Ljava/lang/String;
    const-string v8, "/drive_c/windows"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, "dxvkExtractPath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, "dxvkCommand":Ljava/lang/String;
    invoke-direct {v1, v8}, Lcom/termux/app/XoDosShortcuts;->execShellXoDosStyle(Ljava/lang/String;)Z

    move-result v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 289
    .local v18, "dxvkSuccess":Z
    if-eqz v4, :cond_1

    if-eqz v18, :cond_1

    const/16 v19, 0x1

    goto :goto_1

    :cond_1
    const/16 v19, 0x0

    :goto_1
    move/from16 v4, v19

    .line 291
    move/from16 v19, v4

    .end local v4    # "success":Z
    .local v19, "success":Z
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v5

    .end local v5    # "dxvkExtractPath":Ljava/lang/String;
    .local v20, "dxvkExtractPath":Ljava/lang/String;
    const-string v5, "DXVK extraction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v18, :cond_2

    move-object v5, v10

    goto :goto_2

    :cond_2
    move-object v5, v11

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v4, v19

    goto :goto_3

    .line 324
    .end local v7    # "dxvkSrc":Ljava/lang/String;
    .end local v8    # "dxvkCommand":Ljava/lang/String;
    .end local v17    # "winePrefix":Ljava/lang/String;
    .end local v18    # "dxvkSuccess":Z
    .end local v20    # "dxvkExtractPath":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move/from16 v4, v19

    goto/16 :goto_a

    .line 319
    :catch_1
    move-exception v0

    move/from16 v4, v19

    goto/16 :goto_8

    .line 277
    .end local v16    # "dxvk":Ljava/lang/String;
    .end local v19    # "success":Z
    .restart local v4    # "success":Z
    .local v5, "dxvk":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v5

    .line 295
    .end local v5    # "dxvk":Ljava/lang/String;
    .restart local v16    # "dxvk":Ljava/lang/String;
    :goto_3
    :try_start_6
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 296
    iget-object v0, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v5, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda16;

    invoke-direct {v5, v1}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda16;-><init>(Lcom/termux/app/XoDosShortcuts;)V

    invoke-virtual {v0, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 301
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.termux/files/usr/glibc/opt/libs/mesa/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "driverSrc":Ljava/lang/String;
    const-string v5, "/data/data/com.termux/files/usr/glibc"

    .local v5, "driverExtractPath":Ljava/lang/String;
    goto :goto_4

    .line 305
    .end local v0    # "driverSrc":Ljava/lang/String;
    .end local v5    # "driverExtractPath":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.termux/files/usr/drivers/25/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    .restart local v0    # "driverSrc":Ljava/lang/String;
    const-string v5, "/data/data/com.termux/files/usr/drivers/mesa-242"

    .line 309
    .restart local v5    # "driverExtractPath":Ljava/lang/String;
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, "driverCommand":Ljava/lang/String;
    invoke-direct {v1, v7}, Lcom/termux/app/XoDosShortcuts;->execShellXoDosStyle(Ljava/lang/String;)Z

    move-result v8

    .line 311
    .local v8, "driverSuccess":Z
    if-eqz v4, :cond_5

    if-eqz v8, :cond_5

    const/4 v12, 0x1

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    :goto_5
    move v4, v12

    .line 313
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Driver extraction "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move-object v10, v11

    :goto_6
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v0    # "driverSrc":Ljava/lang/String;
    .end local v5    # "driverExtractPath":Ljava/lang/String;
    .end local v7    # "driverCommand":Ljava/lang/String;
    .end local v8    # "driverSuccess":Z
    :cond_7
    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 324
    iget-object v0, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v5, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda17;

    invoke-direct {v5, v1}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda17;-><init>(Lcom/termux/app/XoDosShortcuts;)V

    :goto_7
    invoke-virtual {v0, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 331
    invoke-interface {v3, v4}, Lcom/termux/app/XoDosShortcuts$ExtractionCallback;->onExtractionComplete(Z)V

    .line 332
    goto :goto_9

    .line 319
    :catch_2
    move-exception v0

    goto :goto_8

    .line 324
    .end local v16    # "dxvk":Ljava/lang/String;
    .local v5, "dxvk":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v5

    .end local v5    # "dxvk":Ljava/lang/String;
    .restart local v16    # "dxvk":Ljava/lang/String;
    goto :goto_a

    .line 319
    .end local v16    # "dxvk":Ljava/lang/String;
    .restart local v5    # "dxvk":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v16, v5

    .line 320
    .end local v5    # "dxvk":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "dxvk":Ljava/lang/String;
    :goto_8
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extraction error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 321
    const/4 v4, 0x0

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v5, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda17;

    invoke-direct {v5, v1}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda17;-><init>(Lcom/termux/app/XoDosShortcuts;)V

    goto :goto_7

    .line 333
    :goto_9
    return-void

    .line 324
    :catchall_3
    move-exception v0

    :goto_a
    iget-object v5, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    new-instance v7, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda17;

    invoke-direct {v7, v1}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda17;-><init>(Lcom/termux/app/XoDosShortcuts;)V

    invoke-virtual {v5, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 331
    invoke-interface {v3, v4}, Lcom/termux/app/XoDosShortcuts$ExtractionCallback;->onExtractionComplete(Z)V

    .line 332
    throw v0
.end method

.method synthetic lambda$confirmDelete$24$com-termux-app-XoDosShortcuts(Ljava/io/File;Ljava/lang/String;Landroid/widget/GridLayout;Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "grid"    # Landroid/widget/GridLayout;
    .param p4, "d"    # Landroid/content/DialogInterface;
    .param p5, "w"    # I

    .line 1375
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1377
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".desktop"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1378
    .local v0, "baseName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/termux/app/XoDosShortcuts;->desktopDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".lnk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1379
    .local v2, "lnkFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1380
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1383
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/termux/app/XoDosShortcuts;->desktopDir2:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1384
    .local v3, "lnkFile2":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1385
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1388
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/termux/app/XoDosShortcuts;->iconDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1389
    .local v4, "iconFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1390
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1394
    :cond_2
    invoke-direct {p0, p2}, Lcom/termux/app/XoDosShortcuts;->deleteAppSettings(Ljava/lang/String;)V

    .line 1396
    iget-object v5, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const v6, 0x7f1200ca

    invoke-static {v5, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1397
    invoke-direct {p0, p3}, Lcom/termux/app/XoDosShortcuts;->displayDesktopShortcuts(Landroid/widget/GridLayout;)V

    .line 1398
    .end local v0    # "baseName":Ljava/lang/String;
    .end local v2    # "lnkFile":Ljava/io/File;
    .end local v3    # "lnkFile2":Ljava/io/File;
    .end local v4    # "iconFile":Ljava/io/File;
    goto :goto_0

    .line 1399
    :cond_3
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const v2, 0x7f1200c6

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1401
    :goto_0
    return-void
.end method

.method synthetic lambda$displayDesktopShortcuts$13$com-termux-app-XoDosShortcuts(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "execPath"    # Ljava/lang/String;
    .param p3, "v"    # Landroid/view/View;

    .line 706
    invoke-direct {p0, p1, p2}, Lcom/termux/app/XoDosShortcuts;->showLaunchConfirmation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$displayDesktopShortcuts$14$com-termux-app-XoDosShortcuts(Ljava/io/File;Landroid/widget/GridLayout;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "f"    # Ljava/io/File;
    .param p2, "grid"    # Landroid/widget/GridLayout;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "v"    # Landroid/view/View;

    .line 723
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/app/XoDosShortcuts;->confirmDelete(Ljava/io/File;Landroid/widget/GridLayout;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$generateIcon$21$com-termux-app-XoDosShortcuts()V
    .locals 1

    .line 1159
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->currentGrid:Landroid/widget/GridLayout;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->currentGrid:Landroid/widget/GridLayout;

    invoke-direct {p0, v0}, Lcom/termux/app/XoDosShortcuts;->displayDesktopShortcuts(Landroid/widget/GridLayout;)V

    .line 1162
    :cond_0
    return-void
.end method

.method synthetic lambda$generateIcon$22$com-termux-app-XoDosShortcuts(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 17
    .param p1, "finalExePath"    # Ljava/lang/String;
    .param p2, "finalIconFile"    # Ljava/io/File;
    .param p3, "shouldRefresh"    # Z

    .line 1100
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "IconGen"

    move-object/from16 v4, p1

    .line 1101
    .local v4, "currentExePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 1104
    .local v5, "currentExeFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1105
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXE file does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1107
    invoke-direct {v1, v4}, Lcom/termux/app/XoDosShortcuts;->tryAlternativePaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "alternativePaths":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v0, v7

    .line 1109
    .local v8, "altPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1110
    .local v9, "altFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1111
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found alternative path: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1112
    move-object v4, v8

    .line 1113
    move-object v5, v9

    .line 1114
    goto :goto_1

    .line 1108
    .end local v8    # "altPath":Ljava/lang/String;
    .end local v9    # "altFile":Ljava/io/File;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1119
    .end local v0    # "alternativePaths":[Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wrestool -x --type=14 \""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\" 2>/dev/null | magick ico:- \""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\" 2>/dev/null"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1121
    .local v0, "cmd":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Running icon command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1124
    new-instance v6, Ljava/lang/ProcessBuilder;

    const-string v7, "sh"

    const-string v8, "-c"

    filled-new-array {v7, v8, v0}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 1127
    .local v6, "processBuilder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v7

    .line 1128
    .local v7, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "PATH"

    const-string v9, "/data/data/com.termux/files/usr/bin:/system/bin"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    const-string v8, "LD_LIBRARY_PATH"

    const-string v9, "/data/data/com.termux/files/usr/lib"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    const-string v8, "PREFIX"

    const-string v9, "/data/data/com.termux/files/usr"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    const-string v8, "HOME"

    const-string v9, "/data/data/com.termux/files/home"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    const-string v8, "TMPDIR"

    const-string v9, "/data/data/com.termux/files/usr/tmp"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v8

    .line 1137
    .local v8, "process":Ljava/lang/Process;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1138
    .local v9, "stdInput":Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1141
    .local v10, "stdError":Ljava/io/BufferedReader;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1142
    .local v11, "output":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1144
    .local v12, "error":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v13

    .local v14, "line":Ljava/lang/String;
    const-string v15, "\n"

    if-eqz v13, :cond_2

    .line 1145
    :try_start_1
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1147
    :cond_2
    :goto_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    move-object v14, v13

    if-eqz v13, :cond_3

    .line 1148
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1151
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    move-result v13

    .line 1152
    .local v13, "exitCode":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "cmd":Ljava/lang/String;
    .local v16, "cmd":Ljava/lang/String;
    const-string v0, "Process finished with exit code: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    if-nez v13, :cond_4

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Icon generated successfully: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    if-eqz p3, :cond_7

    iget-object v0, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 1158
    iget-object v0, v1, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v15, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda3;

    invoke-direct {v15, v1}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda3;-><init>(Lcom/termux/app/XoDosShortcuts;)V

    invoke-virtual {v0, v15}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 1165
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Icon generation failed with exit code: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "IconGenOutput"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "IconGenError"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_6
    invoke-direct {v1, v2}, Lcom/termux/app/XoDosShortcuts;->createDefaultIcon(Ljava/io/File;)V

    .line 1170
    .end local v6    # "processBuilder":Ljava/lang/ProcessBuilder;
    .end local v7    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "process":Ljava/lang/Process;
    .end local v9    # "stdInput":Ljava/io/BufferedReader;
    .end local v10    # "stdError":Ljava/io/BufferedReader;
    .end local v11    # "output":Ljava/lang/StringBuilder;
    .end local v12    # "error":Ljava/lang/StringBuilder;
    .end local v13    # "exitCode":I
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "cmd":Ljava/lang/String;
    :cond_7
    :goto_4
    goto :goto_5

    .line 1171
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot generate icon, EXE not found: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-direct {v1, v2}, Lcom/termux/app/XoDosShortcuts;->createDefaultIcon(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1183
    :goto_5
    goto :goto_6

    .line 1175
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1176
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error generating icon: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1179
    :try_start_2
    invoke-direct {v1, v2}, Lcom/termux/app/XoDosShortcuts;->createDefaultIcon(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1182
    goto :goto_6

    .line 1180
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 1181
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1184
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method synthetic lambda$launchShortcut$16$com-termux-app-XoDosShortcuts(Ljava/lang/String;)V
    .locals 5
    .param p1, "appNameForToast"    # Ljava/lang/String;

    .line 925
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 926
    const v4, 0x7f120141

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 925
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 927
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 925
    return-void
.end method

.method synthetic lambda$launchShortcut$17$com-termux-app-XoDosShortcuts(Ljava/lang/String;)V
    .locals 13
    .param p1, "appNameForToast"    # Ljava/lang/String;

    .line 876
    const-string v0, "LaunchMonitor"

    const/16 v1, 0x1388

    .line 877
    .local v1, "CHECK_INTERVAL_MS":I
    const/4 v2, 0x6

    .line 878
    .local v2, "MAX_CHECKS":I
    const/4 v3, 0x0

    .line 880
    .local v3, "appVisible":Z
    :try_start_0
    iget-object v4, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/termux/app/TermuxActivity;

    .line 881
    .local v4, "termuxActivityLocal":Lcom/termux/app/TermuxActivity;
    const/4 v5, 0x0

    .line 882
    .local v5, "sessionLocal":Lcom/termux/terminal/TerminalSession;
    invoke-virtual {v4}, Lcom/termux/app/TermuxActivity;->getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 883
    invoke-virtual {v4}, Lcom/termux/app/TermuxActivity;->getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->getCurrentStoredSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v6

    .line 886
    :cond_0
    const-string v6, "X11Check"

    if-eqz v5, :cond_6

    :try_start_1
    invoke-virtual {v5}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_5

    .line 891
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v8, 0x6

    if-ge v7, v8, :cond_4

    .line 892
    const-wide/16 v8, 0x1388

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 895
    const-string v8, "DISPLAY=:0 xdotool search --onlyvisible --name . > /sdcard/exe_check.txt 2>/dev/null\n"

    invoke-virtual {v5, v8}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 896
    const-wide/16 v8, 0x7d0

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 899
    new-instance v8, Ljava/io/File;

    const-string v9, "/sdcard/exe_check.txt"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 900
    .local v8, "checkFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v9, :cond_3

    .line 901
    :try_start_2
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 902
    .local v9, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 903
    .local v10, "line":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Check #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " visible window id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 905
    const/4 v3, 0x1

    .line 906
    const-string v11, "\u2705 Window detected inside Termux, stopping monitor thread."

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 909
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 907
    goto :goto_3

    .line 909
    .end local v10    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 911
    .end local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 901
    .restart local v9    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v10

    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v11

    :try_start_6
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "CHECK_INTERVAL_MS":I
    .end local v2    # "MAX_CHECKS":I
    .end local v3    # "appVisible":Z
    .end local v4    # "termuxActivityLocal":Lcom/termux/app/TermuxActivity;
    .end local v5    # "sessionLocal":Lcom/termux/terminal/TerminalSession;
    .end local v7    # "i":I
    .end local v8    # "checkFile":Ljava/io/File;
    .end local p1    # "appNameForToast":Ljava/lang/String;
    :goto_1
    throw v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    .line 909
    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "CHECK_INTERVAL_MS":I
    .restart local v2    # "MAX_CHECKS":I
    .restart local v3    # "appVisible":Z
    .restart local v4    # "termuxActivityLocal":Lcom/termux/app/TermuxActivity;
    .restart local v5    # "sessionLocal":Lcom/termux/terminal/TerminalSession;
    .restart local v7    # "i":I
    .restart local v8    # "checkFile":Ljava/io/File;
    .restart local p1    # "appNameForToast":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 910
    .local v9, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error reading /tmp/x11_check.txt: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    .end local v8    # "checkFile":Ljava/io/File;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 915
    .end local v7    # "i":I
    :cond_4
    :goto_3
    if-nez v3, :cond_5

    .line 916
    const-string v6, "No visible window detected within timeout; closing termux-x11"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    .line 918
    :try_start_8
    const-string v6, "pkill -f termux.x11 || pkill -f termux-x11\n"

    invoke-virtual {v5, v6}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2

    .line 921
    goto :goto_4

    .line 919
    :catch_1
    move-exception v6

    .line 920
    .local v6, "e":Ljava/lang/Exception;
    :try_start_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to kill termux.x11 from Termux session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_4
    iget-object v6, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_5

    .line 924
    iget-object v6, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    new-instance v7, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda8;

    invoke-direct {v7, p0, p1}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda8;-><init>(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 934
    .end local v1    # "CHECK_INTERVAL_MS":I
    .end local v2    # "MAX_CHECKS":I
    .end local v3    # "appVisible":Z
    .end local v4    # "termuxActivityLocal":Lcom/termux/app/TermuxActivity;
    .end local v5    # "sessionLocal":Lcom/termux/terminal/TerminalSession;
    :cond_5
    goto :goto_6

    .line 887
    .restart local v1    # "CHECK_INTERVAL_MS":I
    .restart local v2    # "MAX_CHECKS":I
    .restart local v3    # "appVisible":Z
    .restart local v4    # "termuxActivityLocal":Lcom/termux/app/TermuxActivity;
    .restart local v5    # "sessionLocal":Lcom/termux/terminal/TerminalSession;
    :cond_6
    :goto_5
    const-string v7, "No active Termux session to run visibility checks."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2

    .line 888
    return-void

    .line 932
    .end local v1    # "CHECK_INTERVAL_MS":I
    .end local v2    # "MAX_CHECKS":I
    .end local v3    # "appVisible":Z
    .end local v4    # "termuxActivityLocal":Lcom/termux/app/TermuxActivity;
    .end local v5    # "sessionLocal":Lcom/termux/terminal/TerminalSession;
    :catch_2
    move-exception v1

    .line 933
    .local v1, "ie":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Monitor interrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :goto_6
    return-void
.end method

.method synthetic lambda$launchWithProcessBuilder$18$com-termux-app-XoDosShortcuts(ILjava/lang/String;)V
    .locals 5
    .param p1, "exitCode"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 987
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 988
    iget-object v2, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const v4, 0x7f120183

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 990
    :cond_0
    iget-object v2, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v0

    const v0, 0x7f120182

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 992
    :goto_0
    return-void
.end method

.method synthetic lambda$launchWithProcessBuilder$19$com-termux-app-XoDosShortcuts(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 999
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const v1, 0x7f120180

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    .line 1000
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v3, v4, v2

    const v2, 0x7f120181

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 999
    invoke-direct {p0, v0, v1}, Lcom/termux/app/XoDosShortcuts;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$launchWithProcessBuilder$20$com-termux-app-XoDosShortcuts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "execPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 957
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "termux-x11 :0 >/dev/null 2>&1 & pkill -f \'wine\'; sleep 3 && "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "fullCommand":Ljava/lang/String;
    const-string v1, "LaunchCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fallback executing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    new-instance v1, Ljava/lang/ProcessBuilder;

    const-string v2, "sh"

    const-string v3, "-c"

    filled-new-array {v2, v3, v0}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 964
    .local v1, "processBuilder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v2

    .line 965
    .local v2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "PATH"

    const-string v4, "/data/data/com.termux/files/usr/bin:/system/bin"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    const-string v3, "LD_LIBRARY_PATH"

    const-string v4, "/data/data/com.termux/files/usr/lib"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    const-string v3, "PREFIX"

    const-string v4, "/data/data/com.termux/files/usr"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    const-string v3, "HOME"

    const-string v4, "/data/data/com.termux/files/home"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string v3, "TMPDIR"

    const-string v4, "/data/data/com.termux/files/usr/tmp"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 972
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 975
    .local v3, "process":Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 977
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 978
    const-string v5, "WineOutput"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 981
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v5

    .line 982
    .local v5, "exitCode":I
    const-string v7, "Launch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exit code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v7, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    instance-of v7, v7, Landroid/app/Activity;

    if-eqz v7, :cond_1

    .line 986
    iget-object v7, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    new-instance v8, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda4;

    invoke-direct {v8, p0, v5, p2}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda4;-><init>(Lcom/termux/app/XoDosShortcuts;ILjava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    .end local v0    # "fullCommand":Ljava/lang/String;
    .end local v1    # "processBuilder":Ljava/lang/ProcessBuilder;
    .end local v2    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "process":Ljava/lang/Process;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "exitCode":I
    .end local v6    # "line":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fallback also failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LaunchError"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 998
    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2, v0}, Lcom/termux/app/XoDosShortcuts$$ExternalSyntheticLambda5;-><init>(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1004
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method synthetic lambda$regenerateIconForApp$11$com-termux-app-XoDosShortcuts(Ljava/lang/String;)V
    .locals 8
    .param p1, "appName"    # Ljava/lang/String;

    .line 602
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts;->desktopDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".desktop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 603
    .local v0, "desktopFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    invoke-direct {p0, v0}, Lcom/termux/app/XoDosShortcuts;->parseDesktopFile(Ljava/io/File;)Ljava/util/Map;

    move-result-object v1

    .line 605
    .local v1, "entry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Exec"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 606
    .local v2, "execPath":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 608
    invoke-direct {p0, v2}, Lcom/termux/app/XoDosShortcuts;->extractExeFromExecLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, "exePath":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 610
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/termux/app/XoDosShortcuts;->iconDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 611
    .local v4, "iconFile":Ljava/io/File;
    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/termux/app/XoDosShortcuts;->generateIcon(Ljava/lang/String;Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    .end local v0    # "desktopFile":Ljava/io/File;
    .end local v1    # "entry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "execPath":Ljava/lang/String;
    .end local v3    # "exePath":Ljava/lang/String;
    .end local v4    # "iconFile":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to regenerate icon for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconRefresh"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method synthetic lambda$showAppSettings$2$com-termux-app-XoDosShortcuts(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dxvkSpinner"    # Landroid/widget/Spinner;
    .param p2, "driverSpinner"    # Landroid/widget/Spinner;
    .param p3, "coresSpinner"    # Landroid/widget/Spinner;
    .param p4, "appName"    # Ljava/lang/String;
    .param p5, "dialog"    # Landroid/content/DialogInterface;
    .param p6, "which"    # I

    .line 236
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "selectedDxvk":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "selectedDriver":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 239
    .local v2, "selectedCoresIndex":I
    invoke-direct {p0, v2}, Lcom/termux/app/XoDosShortcuts;->getCoresValueFromIndex(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "selectedCores":Ljava/lang/String;
    invoke-direct {p0, p4, v0}, Lcom/termux/app/XoDosShortcuts;->saveAppDxvk(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0, p4, v1}, Lcom/termux/app/XoDosShortcuts;->saveAppDriver(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, p4, v3}, Lcom/termux/app/XoDosShortcuts;->saveAppCores(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, p4, v3}, Lcom/termux/app/XoDosShortcuts;->saveCoreSettingsToConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const v5, 0x7f1202fb

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 246
    return-void
.end method

.method synthetic lambda$showAppSettings$3$com-termux-app-XoDosShortcuts(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 250
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosShortcuts;->deleteAppSettings(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method synthetic lambda$showErrorDialog$23$com-termux-app-XoDosShortcuts(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 1364
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts;->mContext:Landroid/content/Context;

    const v1, 0x7f120097

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1365
    return-void
.end method

.method synthetic lambda$showLaunchConfirmation$10$com-termux-app-XoDosShortcuts(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "execPath"    # Ljava/lang/String;
    .param p3, "d"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/termux/app/XoDosShortcuts;->showAppSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method synthetic lambda$showLaunchConfirmation$9$com-termux-app-XoDosShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wineType"    # Ljava/lang/String;
    .param p3, "execPath"    # Ljava/lang/String;
    .param p4, "d"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 506
    new-instance v0, Lcom/termux/app/XoDosShortcuts$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/termux/app/XoDosShortcuts$1;-><init>(Lcom/termux/app/XoDosShortcuts;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/termux/app/XoDosShortcuts;->applyAppSpecificSettings(Ljava/lang/String;Ljava/lang/String;Lcom/termux/app/XoDosShortcuts$ExtractionCallback;)V

    .line 520
    return-void
.end method

.method synthetic lambda$showShortcutGrid$0$com-termux-app-XoDosShortcuts(Landroid/widget/GridLayout;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "grid"    # Landroid/widget/GridLayout;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "w"    # I

    .line 66
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosShortcuts;->refreshShortcuts(Landroid/widget/GridLayout;)V

    return-void
.end method

.method synthetic lambda$showShortcutGrid$1$com-termux-app-XoDosShortcuts(Landroid/widget/GridLayout;)V
    .locals 0
    .param p1, "grid"    # Landroid/widget/GridLayout;

    .line 71
    invoke-direct {p0, p1}, Lcom/termux/app/XoDosShortcuts;->displayDesktopShortcuts(Landroid/widget/GridLayout;)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/termux/app/XoDosShortcuts;->showShortcutGrid()V

    .line 53
    return-void
.end method

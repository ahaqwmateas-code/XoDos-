.class Lcom/termux/app/TermuxInstaller$2;
.super Ljava/lang/Thread;
.source "TermuxInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxInstaller;->setupStorageSymlinks(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .line 565
    move-object/from16 v1, p0

    const-string v2, "## Termux Setup Storage Error\n\n"

    const-string v0, "\"."

    const-string v3, "termux-storage"

    :try_start_0
    sget-object v5, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_STORAGE_HOME_DIR:Ljava/io/File;

    .line 567
    .local v5, "storageDir":Ljava/io/File;
    const-string v6, "~/storage"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/termux/shared/file/FileUtils;->clearDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v6

    .line 568
    .local v6, "error":Lcom/termux/shared/errors/Error;
    if-eqz v6, :cond_0

    .line 569
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$2;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/termux/shared/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v3, v7}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setup Storage Error\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v7, v1, Lcom/termux/app/TermuxInstaller$2;->val$context:Landroid/content/Context;

    const-string v8, "termux-storage"

    const-string v9, "Termux Setup Storage Error"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    invoke-static {v6}, Lcom/termux/shared/errors/Error;->getErrorMarkdownString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v14, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->TERMUX_PACKAGE:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    .line 571
    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x1

    invoke-static/range {v7 .. v15}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZLcom/termux/shared/termux/TermuxUtils$AppInfoMode;Z)V

    .line 574
    return-void

    .line 577
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting up storage symlinks at ~/storage/shared, ~/storage/downloads, ~/storage/dcim, ~/storage/pictures, ~/storage/music and ~/storage/movies for directories in \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 581
    .local v7, "sharedDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    const-string v10, "shared"

    invoke-direct {v9, v5, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 584
    .local v8, "documentsDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    const-string v11, "documents"

    invoke-direct {v10, v5, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    sget-object v9, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 587
    .local v9, "downloadsDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    const-string v12, "downloads"

    invoke-direct {v11, v5, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    sget-object v10, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 590
    .local v10, "dcimDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/io/File;

    const-string v13, "dcim"

    invoke-direct {v12, v5, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    sget-object v11, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v11}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 593
    .local v11, "picturesDir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/io/File;

    const-string v14, "pictures"

    invoke-direct {v13, v5, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    sget-object v12, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v12}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 596
    .local v12, "musicDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/io/File;

    const-string v15, "music"

    invoke-direct {v14, v5, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    sget-object v13, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v13}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 599
    .local v13, "moviesDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/io/File;

    const-string v4, "movies"

    invoke-direct {v15, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    sget-object v4, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 602
    .local v4, "podcastsDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/io/File;

    move-object/from16 v16, v4

    .end local v4    # "podcastsDir":Ljava/io/File;
    .local v16, "podcastsDir":Ljava/io/File;
    const-string v4, "podcasts"

    invoke-direct {v15, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1d

    if-lt v4, v14, :cond_1

    .line 605
    sget-object v4, Landroid/os/Environment;->DIRECTORY_AUDIOBOOKS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 606
    .local v4, "audiobooksDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/io/File;

    move-object/from16 v17, v4

    .end local v4    # "audiobooksDir":Ljava/io/File;
    .local v17, "audiobooksDir":Ljava/io/File;
    const-string v4, "audiobooks"

    invoke-direct {v15, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .end local v17    # "audiobooksDir":Ljava/io/File;
    :cond_1
    iget-object v4, v1, Lcom/termux/app/TermuxInstaller$2;->val$context:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    .local v4, "dirs":[Ljava/io/File;
    const-string v14, " for \""

    const-string v15, "Setting up storage symlinks at ~/storage/"

    if-eqz v4, :cond_5

    move-object/from16 v17, v6

    .end local v6    # "error":Lcom/termux/shared/errors/Error;
    .local v17, "error":Lcom/termux/shared/errors/Error;
    :try_start_1
    array-length v6, v4

    if-lez v6, :cond_4

    .line 619
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v18, v7

    .end local v7    # "sharedDir":Ljava/io/File;
    .local v18, "sharedDir":Ljava/io/File;
    array-length v7, v4

    if-ge v6, v7, :cond_3

    .line 620
    aget-object v7, v4, v6

    .line 621
    .local v7, "dir":Ljava/io/File;
    if-nez v7, :cond_2

    move-object/from16 v19, v4

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto :goto_1

    .line 622
    :cond_2
    move-object/from16 v19, v4

    .end local v4    # "dirs":[Ljava/io/File;
    .local v19, "dirs":[Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v8

    .end local v8    # "documentsDir":Ljava/io/File;
    .local v20, "documentsDir":Ljava/io/File;
    const-string v8, "external-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 623
    .local v4, "symlinkName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v21, v9

    .end local v9    # "downloadsDir":Ljava/io/File;
    .local v21, "downloadsDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .end local v4    # "symlinkName":Ljava/lang/String;
    .end local v7    # "dir":Ljava/io/File;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, v18

    move-object/from16 v4, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    goto :goto_0

    .end local v19    # "dirs":[Ljava/io/File;
    .end local v20    # "documentsDir":Ljava/io/File;
    .end local v21    # "downloadsDir":Ljava/io/File;
    .local v4, "dirs":[Ljava/io/File;
    .restart local v8    # "documentsDir":Ljava/io/File;
    .restart local v9    # "downloadsDir":Ljava/io/File;
    :cond_3
    move-object/from16 v19, v4

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .end local v4    # "dirs":[Ljava/io/File;
    .end local v8    # "documentsDir":Ljava/io/File;
    .end local v9    # "downloadsDir":Ljava/io/File;
    .restart local v19    # "dirs":[Ljava/io/File;
    .restart local v20    # "documentsDir":Ljava/io/File;
    .restart local v21    # "downloadsDir":Ljava/io/File;
    goto :goto_2

    .line 618
    .end local v6    # "i":I
    .end local v18    # "sharedDir":Ljava/io/File;
    .end local v19    # "dirs":[Ljava/io/File;
    .end local v20    # "documentsDir":Ljava/io/File;
    .end local v21    # "downloadsDir":Ljava/io/File;
    .restart local v4    # "dirs":[Ljava/io/File;
    .local v7, "sharedDir":Ljava/io/File;
    .restart local v8    # "documentsDir":Ljava/io/File;
    .restart local v9    # "downloadsDir":Ljava/io/File;
    :cond_4
    move-object/from16 v19, v4

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .end local v4    # "dirs":[Ljava/io/File;
    .end local v7    # "sharedDir":Ljava/io/File;
    .end local v8    # "documentsDir":Ljava/io/File;
    .end local v9    # "downloadsDir":Ljava/io/File;
    .restart local v18    # "sharedDir":Ljava/io/File;
    .restart local v19    # "dirs":[Ljava/io/File;
    .restart local v20    # "documentsDir":Ljava/io/File;
    .restart local v21    # "downloadsDir":Ljava/io/File;
    goto :goto_2

    .end local v17    # "error":Lcom/termux/shared/errors/Error;
    .end local v18    # "sharedDir":Ljava/io/File;
    .end local v19    # "dirs":[Ljava/io/File;
    .end local v20    # "documentsDir":Ljava/io/File;
    .end local v21    # "downloadsDir":Ljava/io/File;
    .restart local v4    # "dirs":[Ljava/io/File;
    .local v6, "error":Lcom/termux/shared/errors/Error;
    .restart local v7    # "sharedDir":Ljava/io/File;
    .restart local v8    # "documentsDir":Ljava/io/File;
    .restart local v9    # "downloadsDir":Ljava/io/File;
    :cond_5
    move-object/from16 v19, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .line 629
    .end local v4    # "dirs":[Ljava/io/File;
    .end local v6    # "error":Lcom/termux/shared/errors/Error;
    .end local v7    # "sharedDir":Ljava/io/File;
    .end local v8    # "documentsDir":Ljava/io/File;
    .end local v9    # "downloadsDir":Ljava/io/File;
    .restart local v17    # "error":Lcom/termux/shared/errors/Error;
    .restart local v18    # "sharedDir":Ljava/io/File;
    .restart local v19    # "dirs":[Ljava/io/File;
    .restart local v20    # "documentsDir":Ljava/io/File;
    .restart local v21    # "downloadsDir":Ljava/io/File;
    :goto_2
    iget-object v4, v1, Lcom/termux/app/TermuxInstaller$2;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v4

    .line 630
    .end local v19    # "dirs":[Ljava/io/File;
    .restart local v4    # "dirs":[Ljava/io/File;
    if-eqz v4, :cond_8

    array-length v6, v4

    if-lez v6, :cond_8

    .line 631
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    array-length v7, v4

    if-ge v6, v7, :cond_7

    .line 632
    aget-object v7, v4, v6

    .line 633
    .local v7, "dir":Ljava/io/File;
    if-nez v7, :cond_6

    move-object/from16 v19, v4

    goto :goto_4

    .line 634
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "media-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 635
    .local v8, "symlinkName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v19, v4

    .end local v4    # "dirs":[Ljava/io/File;
    .restart local v19    # "dirs":[Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .end local v7    # "dir":Ljava/io/File;
    .end local v8    # "symlinkName":Ljava/lang/String;
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v19

    goto :goto_3

    .end local v19    # "dirs":[Ljava/io/File;
    .restart local v4    # "dirs":[Ljava/io/File;
    :cond_7
    move-object/from16 v19, v4

    .end local v4    # "dirs":[Ljava/io/File;
    .restart local v19    # "dirs":[Ljava/io/File;
    goto :goto_5

    .line 630
    .end local v6    # "i":I
    .end local v19    # "dirs":[Ljava/io/File;
    .restart local v4    # "dirs":[Ljava/io/File;
    :cond_8
    move-object/from16 v19, v4

    .line 640
    .end local v4    # "dirs":[Ljava/io/File;
    .restart local v19    # "dirs":[Ljava/io/File;
    :goto_5
    const-string v0, "Storage symlinks created successfully."

    invoke-static {v3, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 647
    .end local v5    # "storageDir":Ljava/io/File;
    .end local v10    # "dcimDir":Ljava/io/File;
    .end local v11    # "picturesDir":Ljava/io/File;
    .end local v12    # "musicDir":Ljava/io/File;
    .end local v13    # "moviesDir":Ljava/io/File;
    .end local v16    # "podcastsDir":Ljava/io/File;
    .end local v17    # "error":Lcom/termux/shared/errors/Error;
    .end local v18    # "sharedDir":Ljava/io/File;
    .end local v19    # "dirs":[Ljava/io/File;
    .end local v20    # "documentsDir":Ljava/io/File;
    .end local v21    # "downloadsDir":Ljava/io/File;
    goto :goto_6

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, v1, Lcom/termux/app/TermuxInstaller$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v4, "Setup Storage Error: Error setting up link"

    invoke-static {v3, v4, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 644
    iget-object v5, v1, Lcom/termux/app/TermuxInstaller$2;->val$context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 645
    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lcom/termux/shared/logger/Logger;->getStackTracesMarkdownString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v12, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->TERMUX_PACKAGE:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    .line 644
    const-string v6, "termux-storage"

    const-string v7, "Termux Setup Storage Error"

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x1

    invoke-static/range {v5 .. v13}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZLcom/termux/shared/termux/TermuxUtils$AppInfoMode;Z)V

    .line 648
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

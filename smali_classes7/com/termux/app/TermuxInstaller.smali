.class final Lcom/termux/app/TermuxInstaller;
.super Ljava/lang/Object;
.source "TermuxInstaller.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxInstaller"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;)Lcom/termux/shared/errors/Error;
    .locals 1
    .param p0, "x0"    # Ljava/io/File;

    .line 75
    invoke-static {p0}, Lcom/termux/app/TermuxInstaller;->ensureDirectoryExists(Ljava/io/File;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .line 75
    invoke-static {p0, p1, p2}, Lcom/termux/app/TermuxInstaller;->startXoDosInstallation(Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static ensureDirectoryExists(Ljava/io/File;)Lcom/termux/shared/errors/Error;
    .locals 1
    .param p0, "directory"    # Ljava/io/File;

    .line 653
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static native getZip()[B
.end method

.method static synthetic lambda$showBootstrapErrorDialog$15(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 530
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 531
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 532
    return-void
.end method

.method static synthetic lambda$showBootstrapErrorDialog$16(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "whenDone"    # Ljava/lang/Runnable;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 534
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 535
    const-string v0, "/data/data/com.termux/files/usr"

    const/4 v1, 0x1

    const-string v2, "termux prefix directory"

    invoke-static {v2, v0, v1}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    .line 536
    invoke-static {p0, p1}, Lcom/termux/app/TermuxInstaller;->setupBootstrapIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 537
    return-void
.end method

.method static synthetic lambda$showBootstrapErrorDialog$17(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "whenDone"    # Ljava/lang/Runnable;

    .line 528
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120064

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda6;-><init>(Landroid/app/Activity;)V

    .line 529
    const v2, 0x7f120063

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda7;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 533
    const v2, 0x7f120068

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 541
    :goto_0
    return-void
.end method

.method static synthetic lambda$showXoDosErrorDialog$12(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 499
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 500
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 501
    return-void
.end method

.method static synthetic lambda$showXoDosErrorDialog$13(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "whenDone"    # Ljava/lang/Runnable;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 503
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 505
    invoke-static {p0}, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;->writeEnvironmentToFile(Landroid/content/Context;)V

    .line 506
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 507
    return-void
.end method

.method static synthetic lambda$showXoDosErrorDialog$14(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "whenDone"    # Ljava/lang/Runnable;

    .line 495
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "XoDos Installation Error"

    .line 496
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\nDo you want to continue without XoDos?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Exit"

    new-instance v2, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda10;-><init>(Landroid/app/Activity;)V

    .line 498
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Continue"

    new-instance v2, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p2}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda11;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 502
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 508
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    invoke-static {p0}, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;->writeEnvironmentToFile(Landroid/content/Context;)V

    .line 513
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 515
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$startXoDosInstallation$0(Landroid/app/ProgressDialog;)V
    .locals 1
    .param p0, "extractionProgressDialog"    # Landroid/app/ProgressDialog;

    .line 326
    const-string v0, "Copying XoDos file..."

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$startXoDosInstallation$1(Landroid/app/ProgressDialog;I)V
    .locals 0
    .param p0, "extractionProgressDialog"    # Landroid/app/ProgressDialog;
    .param p1, "progress"    # I

    .line 346
    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$startXoDosInstallation$10(Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "extractionProgressDialog"    # Landroid/app/ProgressDialog;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "whenDone"    # Ljava/lang/Runnable;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 467
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XoDos installation failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/termux/app/TermuxInstaller;->showXoDosErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method static synthetic lambda$startXoDosInstallation$11(Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V
    .locals 43
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "extractionProgressDialog"    # Landroid/app/ProgressDialog;
    .param p2, "whenDone"    # Ljava/lang/Runnable;

    .line 286
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "PATH"

    const-string v4, "sh"

    const-string v5, "fix"

    const-string v6, "Failed to delete script file in finally"

    const-string v7, "Failed to delete temp file in finally"

    const-string v8, "TermuxInstaller"

    const/4 v9, 0x0

    .line 287
    .local v9, "process":Ljava/lang/Process;
    const/4 v10, 0x0

    .line 288
    .local v10, "outFile":Ljava/io/File;
    const/4 v11, 0x0

    .line 292
    .local v11, "scriptFile":Ljava/io/File;
    :try_start_0
    new-instance v12, Ljava/io/File;

    const-string v13, "/data/data/com.termux/files/home/WALLPAPERS"

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v12, "wallpaperFolder":Ljava/io/File;
    const-wide/16 v13, 0x0

    .line 294
    .local v13, "folderSize":J
    const-wide/32 v15, 0x500000

    .line 295
    .local v15, "sizeLimit":J
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_11

    move-object/from16 v18, v9

    .end local v9    # "process":Ljava/lang/Process;
    .local v18, "process":Ljava/lang/Process;
    if-eqz v17, :cond_0

    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    .line 472
    .end local v12    # "wallpaperFolder":Ljava/io/File;
    .end local v13    # "folderSize":J
    .end local v15    # "sizeLimit":J
    :catchall_0
    move-exception v0

    move-object v14, v6

    move-object v13, v7

    move-object/from16 v9, v18

    goto/16 :goto_c

    .line 464
    :catch_0
    move-exception v0

    move-object v14, v6

    move-object v13, v7

    move-object/from16 v9, v18

    goto/16 :goto_a

    .line 295
    .restart local v12    # "wallpaperFolder":Ljava/io/File;
    .restart local v13    # "folderSize":J
    .restart local v15    # "sizeLimit":J
    :cond_0
    const/16 v17, 0x0

    .line 297
    .local v17, "folderExists":Z
    :goto_0
    if-eqz v17, :cond_7

    .line 298
    :try_start_2
    new-instance v20, Ljava/util/Stack;

    invoke-direct/range {v20 .. v20}, Ljava/util/Stack;-><init>()V

    move-object/from16 v21, v20

    .line 299
    .local v21, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/File;>;"
    move-object/from16 v9, v21

    .end local v21    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/File;>;"
    .local v9, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/File;>;"
    invoke-virtual {v9, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :goto_1
    invoke-virtual {v9}, Ljava/util/Stack;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_6

    .line 303
    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/io/File;

    .line 304
    .local v21, "current":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v22
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v23, v22

    .line 305
    .local v23, "files":[Ljava/io/File;
    move-object/from16 v22, v10

    move-object/from16 v10, v23

    .end local v23    # "files":[Ljava/io/File;
    .local v10, "files":[Ljava/io/File;
    .local v22, "outFile":Ljava/io/File;
    if-nez v10, :cond_1

    move-object/from16 v10, v22

    goto :goto_1

    .line 307
    :cond_1
    move-object/from16 v23, v11

    .end local v11    # "scriptFile":Ljava/io/File;
    .local v23, "scriptFile":Ljava/io/File;
    :try_start_3
    array-length v11, v10

    move-object/from16 v24, v12

    const/4 v12, 0x0

    .end local v12    # "wallpaperFolder":Ljava/io/File;
    .local v24, "wallpaperFolder":Ljava/io/File;
    :goto_2
    if-ge v12, v11, :cond_5

    aget-object v25, v10, v12

    move-object/from16 v26, v25

    .line 308
    .local v26, "file":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->isFile()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 309
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v27

    add-long v13, v13, v27

    .line 310
    cmp-long v25, v13, v15

    if-lez v25, :cond_2

    .line 311
    goto :goto_4

    .line 310
    :cond_2
    move-object/from16 v25, v10

    goto :goto_3

    .line 313
    :cond_3
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->isDirectory()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 314
    move-object/from16 v25, v10

    move-object/from16 v10, v26

    .end local v26    # "file":Ljava/io/File;
    .local v10, "file":Ljava/io/File;
    .local v25, "files":[Ljava/io/File;
    invoke-virtual {v9, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 313
    .end local v25    # "files":[Ljava/io/File;
    .local v10, "files":[Ljava/io/File;
    .restart local v26    # "file":Ljava/io/File;
    :cond_4
    move-object/from16 v25, v10

    move-object/from16 v10, v26

    .line 307
    .end local v10    # "files":[Ljava/io/File;
    .end local v26    # "file":Ljava/io/File;
    .restart local v25    # "files":[Ljava/io/File;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, v25

    goto :goto_2

    .end local v25    # "files":[Ljava/io/File;
    .restart local v10    # "files":[Ljava/io/File;
    :cond_5
    move-object/from16 v25, v10

    .line 317
    .end local v10    # "files":[Ljava/io/File;
    .end local v21    # "current":Ljava/io/File;
    move-object/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    goto :goto_1

    .line 302
    .end local v22    # "outFile":Ljava/io/File;
    .end local v23    # "scriptFile":Ljava/io/File;
    .end local v24    # "wallpaperFolder":Ljava/io/File;
    .local v10, "outFile":Ljava/io/File;
    .restart local v11    # "scriptFile":Ljava/io/File;
    .restart local v12    # "wallpaperFolder":Ljava/io/File;
    :cond_6
    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    .end local v10    # "outFile":Ljava/io/File;
    .end local v11    # "scriptFile":Ljava/io/File;
    .end local v12    # "wallpaperFolder":Ljava/io/File;
    .restart local v22    # "outFile":Ljava/io/File;
    .restart local v23    # "scriptFile":Ljava/io/File;
    .restart local v24    # "wallpaperFolder":Ljava/io/File;
    goto :goto_4

    .line 472
    .end local v9    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/File;>;"
    .end local v13    # "folderSize":J
    .end local v15    # "sizeLimit":J
    .end local v17    # "folderExists":Z
    .end local v22    # "outFile":Ljava/io/File;
    .end local v23    # "scriptFile":Ljava/io/File;
    .end local v24    # "wallpaperFolder":Ljava/io/File;
    .restart local v10    # "outFile":Ljava/io/File;
    .restart local v11    # "scriptFile":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object v14, v6

    move-object v13, v7

    move-object/from16 v9, v18

    .end local v10    # "outFile":Ljava/io/File;
    .end local v11    # "scriptFile":Ljava/io/File;
    .restart local v22    # "outFile":Ljava/io/File;
    .restart local v23    # "scriptFile":Ljava/io/File;
    goto/16 :goto_c

    .line 464
    .end local v22    # "outFile":Ljava/io/File;
    .end local v23    # "scriptFile":Ljava/io/File;
    .restart local v10    # "outFile":Ljava/io/File;
    .restart local v11    # "scriptFile":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object v14, v6

    move-object v13, v7

    move-object/from16 v9, v18

    .end local v10    # "outFile":Ljava/io/File;
    .end local v11    # "scriptFile":Ljava/io/File;
    .restart local v22    # "outFile":Ljava/io/File;
    .restart local v23    # "scriptFile":Ljava/io/File;
    goto/16 :goto_a

    .line 297
    .end local v22    # "outFile":Ljava/io/File;
    .end local v23    # "scriptFile":Ljava/io/File;
    .restart local v10    # "outFile":Ljava/io/File;
    .restart local v11    # "scriptFile":Ljava/io/File;
    .restart local v12    # "wallpaperFolder":Ljava/io/File;
    .restart local v13    # "folderSize":J
    .restart local v15    # "sizeLimit":J
    .restart local v17    # "folderExists":Z
    :cond_7
    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    .line 321
    .end local v10    # "outFile":Ljava/io/File;
    .end local v11    # "scriptFile":Ljava/io/File;
    .end local v12    # "wallpaperFolder":Ljava/io/File;
    .restart local v22    # "outFile":Ljava/io/File;
    .restart local v23    # "scriptFile":Ljava/io/File;
    .restart local v24    # "wallpaperFolder":Ljava/io/File;
    :goto_4
    if-eqz v17, :cond_8

    cmp-long v9, v13, v15

    if-lez v9, :cond_8

    .line 322
    const-string v9, "xodos0.tar.xz"

    goto :goto_5

    .line 323
    :cond_8
    const-string v9, "xodos.tar.xz"

    :goto_5
    nop

    .line 326
    .local v9, "assetName":Ljava/lang/String;
    new-instance v10, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda13;

    invoke-direct {v10, v2}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda13;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 329
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    .line 330
    .local v10, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v10, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 331
    .local v11, "in":Ljava/io/InputStream;
    new-instance v12, Ljava/io/File;

    move-wide/from16 v25, v13

    .end local v13    # "folderSize":J
    .local v25, "folderSize":J
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-direct {v12, v13, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_10

    .line 332
    .end local v22    # "outFile":Ljava/io/File;
    .local v12, "outFile":Ljava/io/File;
    :try_start_4
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 335
    .local v13, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v10, v9}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v21

    .line 336
    .local v21, "totalBytes":J
    const-wide/16 v27, 0x0

    .line 337
    .local v27, "copiedBytes":J
    const/high16 v14, 0x20000

    new-array v14, v14, [B

    .line 340
    .local v14, "copybuffer":[B
    :goto_6
    move-object/from16 v29, v9

    .end local v9    # "assetName":Ljava/lang/String;
    .local v29, "assetName":Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/io/InputStream;->read([B)I

    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_f

    move/from16 v30, v9

    move-wide/from16 v31, v15

    .end local v15    # "sizeLimit":J
    .local v30, "bytesRead":I
    .local v31, "sizeLimit":J
    const/4 v15, -0x1

    if-eq v9, v15, :cond_9

    .line 341
    move/from16 v9, v30

    const/4 v15, 0x0

    .end local v30    # "bytesRead":I
    .local v9, "bytesRead":I
    :try_start_5
    invoke-virtual {v13, v14, v15, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 342
    move-object/from16 v16, v6

    move-object/from16 v30, v7

    int-to-long v6, v9

    add-long v27, v27, v6

    .line 345
    const-wide/16 v6, 0x32

    mul-long v6, v6, v27

    :try_start_6
    div-long v6, v6, v21

    long-to-int v7, v6

    .line 346
    .local v7, "progress":I
    new-instance v6, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda14;

    invoke-direct {v6, v2, v7}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda14;-><init>(Landroid/app/ProgressDialog;I)V

    invoke-virtual {v1, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 347
    .end local v7    # "progress":I
    move-object/from16 v6, v16

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-wide/from16 v15, v31

    goto :goto_6

    .line 472
    .end local v9    # "bytesRead":I
    .end local v10    # "assetManager":Landroid/content/res/AssetManager;
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .end local v14    # "copybuffer":[B
    .end local v17    # "folderExists":Z
    .end local v21    # "totalBytes":J
    .end local v24    # "wallpaperFolder":Ljava/io/File;
    .end local v25    # "folderSize":J
    .end local v27    # "copiedBytes":J
    .end local v29    # "assetName":Ljava/lang/String;
    .end local v31    # "sizeLimit":J
    :catchall_2
    move-exception v0

    move-object v10, v12

    move-object/from16 v14, v16

    move-object/from16 v9, v18

    move-object/from16 v11, v23

    move-object/from16 v13, v30

    goto/16 :goto_c

    .line 464
    :catch_2
    move-exception v0

    move-object v10, v12

    move-object/from16 v14, v16

    move-object/from16 v9, v18

    move-object/from16 v11, v23

    move-object/from16 v13, v30

    goto/16 :goto_a

    .line 472
    :catchall_3
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v30, v7

    move-object v10, v12

    move-object/from16 v14, v16

    move-object/from16 v9, v18

    move-object/from16 v11, v23

    move-object/from16 v13, v30

    goto/16 :goto_c

    .line 464
    :catch_3
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v30, v7

    move-object v10, v12

    move-object/from16 v14, v16

    move-object/from16 v9, v18

    move-object/from16 v11, v23

    move-object/from16 v13, v30

    goto/16 :goto_a

    .line 349
    .restart local v10    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v14    # "copybuffer":[B
    .restart local v17    # "folderExists":Z
    .restart local v21    # "totalBytes":J
    .restart local v24    # "wallpaperFolder":Ljava/io/File;
    .restart local v25    # "folderSize":J
    .restart local v27    # "copiedBytes":J
    .restart local v29    # "assetName":Ljava/lang/String;
    .restart local v30    # "bytesRead":I
    .restart local v31    # "sizeLimit":J
    :cond_9
    move-object/from16 v16, v6

    move/from16 v9, v30

    move-object/from16 v30, v7

    .end local v30    # "bytesRead":I
    .restart local v9    # "bytesRead":I
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 350
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 353
    invoke-virtual {v10, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 354
    .local v6, "scriptIn":Ljava/io/InputStream;
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-direct {v7, v15, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_e

    move-object v5, v7

    .line 355
    .end local v23    # "scriptFile":Ljava/io/File;
    .local v5, "scriptFile":Ljava/io/File;
    :try_start_8
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 357
    .local v7, "scriptOut":Ljava/io/FileOutputStream;
    :goto_7
    invoke-virtual {v6, v14}, Ljava/io/InputStream;->read([B)I

    move-result v15
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_d

    move v9, v15

    move-object/from16 v34, v10

    const/4 v10, -0x1

    .end local v10    # "assetManager":Landroid/content/res/AssetManager;
    .local v34, "assetManager":Landroid/content/res/AssetManager;
    if-eq v15, v10, :cond_a

    .line 358
    const/4 v15, 0x0

    :try_start_9
    invoke-virtual {v7, v14, v15, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v10, v34

    goto :goto_7

    .line 472
    .end local v6    # "scriptIn":Ljava/io/InputStream;
    .end local v7    # "scriptOut":Ljava/io/FileOutputStream;
    .end local v9    # "bytesRead":I
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .end local v14    # "copybuffer":[B
    .end local v17    # "folderExists":Z
    .end local v21    # "totalBytes":J
    .end local v24    # "wallpaperFolder":Ljava/io/File;
    .end local v25    # "folderSize":J
    .end local v27    # "copiedBytes":J
    .end local v29    # "assetName":Ljava/lang/String;
    .end local v31    # "sizeLimit":J
    .end local v34    # "assetManager":Landroid/content/res/AssetManager;
    :catchall_4
    move-exception v0

    move-object v11, v5

    move-object v10, v12

    move-object/from16 v14, v16

    move-object/from16 v9, v18

    move-object/from16 v13, v30

    goto/16 :goto_c

    .line 464
    :catch_4
    move-exception v0

    move-object v11, v5

    move-object v10, v12

    move-object/from16 v14, v16

    move-object/from16 v9, v18

    move-object/from16 v13, v30

    goto/16 :goto_a

    .line 361
    .restart local v6    # "scriptIn":Ljava/io/InputStream;
    .restart local v7    # "scriptOut":Ljava/io/FileOutputStream;
    .restart local v9    # "bytesRead":I
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v14    # "copybuffer":[B
    .restart local v17    # "folderExists":Z
    .restart local v21    # "totalBytes":J
    .restart local v24    # "wallpaperFolder":Ljava/io/File;
    .restart local v25    # "folderSize":J
    .restart local v27    # "copiedBytes":J
    .restart local v29    # "assetName":Ljava/lang/String;
    .restart local v31    # "sizeLimit":J
    .restart local v34    # "assetManager":Landroid/content/res/AssetManager;
    :cond_a
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 362
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 363
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/io/File;->setExecutable(Z)Z

    .line 366
    new-instance v10, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda15;

    invoke-direct {v10, v2}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda15;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 367
    const-wide/16 v35, 0x5dc

    invoke-static/range {v35 .. v36}, Ljava/lang/Thread;->sleep(J)V

    .line 370
    const/16 v10, 0x200

    .line 371
    .local v10, "bytesPerRecord":I
    const/16 v15, 0xfa

    .line 374
    .local v15, "targetCheckpoints":I
    move-object/from16 v19, v6

    move-object/from16 v23, v7

    .end local v6    # "scriptIn":Ljava/io/InputStream;
    .end local v7    # "scriptOut":Ljava/io/FileOutputStream;
    .local v19, "scriptIn":Ljava/io/InputStream;
    .local v23, "scriptOut":Ljava/io/FileOutputStream;
    int-to-long v6, v10

    add-long v6, v21, v6

    const-wide/16 v35, 0x1

    sub-long v6, v6, v35

    move-object/from16 v33, v13

    move-object/from16 v35, v14

    .end local v13    # "out":Ljava/io/FileOutputStream;
    .end local v14    # "copybuffer":[B
    .local v33, "out":Ljava/io/FileOutputStream;
    .local v35, "copybuffer":[B
    int-to-long v13, v10

    div-long/2addr v6, v13

    .line 375
    .local v6, "totalRecords":J
    int-to-long v13, v15

    div-long v13, v6, v13

    long-to-int v14, v13

    const/4 v13, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 377
    .local v13, "recordsPerCheckpoint":I
    new-instance v14, Ljava/lang/ProcessBuilder;

    move/from16 v20, v9

    .end local v9    # "bytesRead":I
    .local v20, "bytesRead":I
    const-string v9, "-c"

    move/from16 v36, v10

    .end local v10    # "bytesPerRecord":I
    .local v36, "bytesPerRecord":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v37, v11

    .end local v11    # "in":Ljava/io/InputStream;
    .local v37, "in":Ljava/io/InputStream;
    const-string v11, "tar -xf "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 379
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -C /data/data/com.termux/files --preserve-permissions --warning=no-file-ignored --checkpoint="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " --checkpoint-action=echo=CHECKPOINT --totals 2>&1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v4, v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v14, v9}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    move-object v9, v14

    .line 387
    .local v9, "processBuilder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v9}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v10

    .line 388
    .local v10, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/data/data/com.termux/files/usr/bin:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v0, "LD_LIBRARY_PATH"

    const-string v11, "/data/data/com.termux/files/usr/lib"

    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-virtual {v9}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    move-object v11, v0

    .line 395
    .end local v18    # "process":Ljava/lang/Process;
    .local v11, "process":Ljava/lang/Process;
    :try_start_b
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    move-object/from16 v38, v9

    .end local v9    # "processBuilder":Ljava/lang/ProcessBuilder;
    .local v38, "processBuilder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v11}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v14, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 398
    .local v0, "reader":Ljava/io/BufferedReader;
    move-object v14, v10

    .end local v10    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    long-to-double v9, v6

    move-wide/from16 v39, v6

    .end local v6    # "totalRecords":J
    .local v39, "totalRecords":J
    int-to-double v6, v13

    div-double/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 401
    .local v6, "estimatedTotalCheckpoints":I
    const/4 v7, 0x0

    .line 404
    .local v7, "checkpointCount":I
    :goto_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    move-object v10, v9

    .local v10, "line":Ljava/lang/String;
    if-eqz v9, :cond_d

    .line 405
    :try_start_c
    const-string v9, "CHECKPOINT"

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 406
    add-int/lit8 v7, v7, 0x1

    .line 409
    move v9, v13

    move-object/from16 v18, v14

    .end local v13    # "recordsPerCheckpoint":I
    .end local v14    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v9, "recordsPerCheckpoint":I
    .local v18, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    int-to-double v13, v7

    const-wide/high16 v41, 0x4049000000000000L    # 50.0

    mul-double v13, v13, v41

    div-double v13, v13, v41

    double-to-int v13, v13

    add-int/lit8 v13, v13, 0x32

    .line 410
    .local v13, "progress":I
    const/16 v14, 0x63

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    move v13, v14

    .line 413
    nop

    .line 414
    .local v14, "finalProgress":I
    move-object/from16 v41, v0

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .local v41, "reader":Ljava/io/BufferedReader;
    new-instance v0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda16;

    invoke-direct {v0, v2, v14}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda16;-><init>(Landroid/app/ProgressDialog;I)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 416
    .end local v13    # "progress":I
    .end local v14    # "finalProgress":I
    move v13, v9

    move-object/from16 v14, v18

    move-object/from16 v0, v41

    goto :goto_8

    .end local v9    # "recordsPerCheckpoint":I
    .end local v18    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v41    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    .local v13, "recordsPerCheckpoint":I
    .local v14, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    move-object/from16 v41, v0

    move v9, v13

    move-object/from16 v18, v14

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "recordsPerCheckpoint":I
    .end local v14    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "recordsPerCheckpoint":I
    .restart local v18    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v41    # "reader":Ljava/io/BufferedReader;
    const-string v0, "Total bytes read:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Tar: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 404
    .end local v10    # "line":Ljava/lang/String;
    :cond_c
    move v13, v9

    move-object/from16 v14, v18

    move-object/from16 v0, v41

    goto :goto_8

    .line 472
    .end local v6    # "estimatedTotalCheckpoints":I
    .end local v7    # "checkpointCount":I
    .end local v9    # "recordsPerCheckpoint":I
    .end local v15    # "targetCheckpoints":I
    .end local v17    # "folderExists":Z
    .end local v18    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "scriptIn":Ljava/io/InputStream;
    .end local v20    # "bytesRead":I
    .end local v21    # "totalBytes":J
    .end local v23    # "scriptOut":Ljava/io/FileOutputStream;
    .end local v24    # "wallpaperFolder":Ljava/io/File;
    .end local v25    # "folderSize":J
    .end local v27    # "copiedBytes":J
    .end local v29    # "assetName":Ljava/lang/String;
    .end local v31    # "sizeLimit":J
    .end local v33    # "out":Ljava/io/FileOutputStream;
    .end local v34    # "assetManager":Landroid/content/res/AssetManager;
    .end local v35    # "copybuffer":[B
    .end local v36    # "bytesPerRecord":I
    .end local v37    # "in":Ljava/io/InputStream;
    .end local v38    # "processBuilder":Ljava/lang/ProcessBuilder;
    .end local v39    # "totalRecords":J
    .end local v41    # "reader":Ljava/io/BufferedReader;
    :catchall_5
    move-exception v0

    move-object v9, v11

    move-object v10, v12

    move-object/from16 v14, v16

    move-object/from16 v13, v30

    move-object v11, v5

    goto/16 :goto_c

    .line 464
    :catch_5
    move-exception v0

    move-object v9, v11

    move-object v10, v12

    move-object/from16 v14, v16

    move-object/from16 v13, v30

    move-object v11, v5

    goto/16 :goto_a

    .line 422
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "estimatedTotalCheckpoints":I
    .restart local v7    # "checkpointCount":I
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v13    # "recordsPerCheckpoint":I
    .restart local v14    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "targetCheckpoints":I
    .restart local v17    # "folderExists":Z
    .restart local v19    # "scriptIn":Ljava/io/InputStream;
    .restart local v20    # "bytesRead":I
    .restart local v21    # "totalBytes":J
    .restart local v23    # "scriptOut":Ljava/io/FileOutputStream;
    .restart local v24    # "wallpaperFolder":Ljava/io/File;
    .restart local v25    # "folderSize":J
    .restart local v27    # "copiedBytes":J
    .restart local v29    # "assetName":Ljava/lang/String;
    .restart local v31    # "sizeLimit":J
    .restart local v33    # "out":Ljava/io/FileOutputStream;
    .restart local v34    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v35    # "copybuffer":[B
    .restart local v36    # "bytesPerRecord":I
    .restart local v37    # "in":Ljava/io/InputStream;
    .restart local v38    # "processBuilder":Ljava/lang/ProcessBuilder;
    .restart local v39    # "totalRecords":J
    :cond_d
    move-object/from16 v41, v0

    move v9, v13

    move-object/from16 v18, v14

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "recordsPerCheckpoint":I
    .end local v14    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "recordsPerCheckpoint":I
    .restart local v18    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v41    # "reader":Ljava/io/BufferedReader;
    :try_start_d
    invoke-virtual {v11}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 423
    .local v0, "exitCode":I
    if-nez v0, :cond_13

    .line 428
    new-instance v13, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda17;

    invoke-direct {v13, v2}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda17;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v13}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 429
    new-instance v13, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda1;

    invoke-direct {v13, v2}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda1;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v13}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 432
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v13
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    if-nez v13, :cond_e

    .line 433
    :try_start_e
    const-string v13, "Failed to delete temp file"

    invoke-static {v8, v13}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 437
    :cond_e
    :try_start_f
    new-instance v13, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda2;

    invoke-direct {v13, v2}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda2;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v13}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 439
    new-instance v13, Ljava/lang/ProcessBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v4, v14}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    .line 440
    .end local v11    # "process":Ljava/lang/Process;
    .local v4, "process":Ljava/lang/Process;
    :try_start_10
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v11
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 441
    .local v11, "scriptExitCode":I
    if-nez v11, :cond_12

    .line 445
    :try_start_11
    new-instance v13, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda3;

    invoke-direct {v13, v2}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda3;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v13}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 448
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v13
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    if-nez v13, :cond_f

    .line 449
    :try_start_12
    const-string v13, "Failed to delete script file"

    invoke-static {v8, v13}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_9

    .line 472
    .end local v0    # "exitCode":I
    .end local v6    # "estimatedTotalCheckpoints":I
    .end local v7    # "checkpointCount":I
    .end local v9    # "recordsPerCheckpoint":I
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "scriptExitCode":I
    .end local v15    # "targetCheckpoints":I
    .end local v17    # "folderExists":Z
    .end local v18    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "scriptIn":Ljava/io/InputStream;
    .end local v20    # "bytesRead":I
    .end local v21    # "totalBytes":J
    .end local v23    # "scriptOut":Ljava/io/FileOutputStream;
    .end local v24    # "wallpaperFolder":Ljava/io/File;
    .end local v25    # "folderSize":J
    .end local v27    # "copiedBytes":J
    .end local v29    # "assetName":Ljava/lang/String;
    .end local v31    # "sizeLimit":J
    .end local v33    # "out":Ljava/io/FileOutputStream;
    .end local v34    # "assetManager":Landroid/content/res/AssetManager;
    .end local v35    # "copybuffer":[B
    .end local v36    # "bytesPerRecord":I
    .end local v37    # "in":Ljava/io/InputStream;
    .end local v38    # "processBuilder":Ljava/lang/ProcessBuilder;
    .end local v39    # "totalRecords":J
    .end local v41    # "reader":Ljava/io/BufferedReader;
    :catchall_6
    move-exception v0

    move-object v9, v4

    move-object v11, v5

    move-object v10, v12

    move-object/from16 v14, v16

    move-object/from16 v13, v30

    goto/16 :goto_c

    .line 464
    :catch_6
    move-exception v0

    move-object v9, v4

    move-object v11, v5

    move-object v10, v12

    move-object/from16 v14, v16

    move-object/from16 v13, v30

    goto/16 :goto_a

    .line 453
    .restart local v0    # "exitCode":I
    .restart local v6    # "estimatedTotalCheckpoints":I
    .restart local v7    # "checkpointCount":I
    .restart local v9    # "recordsPerCheckpoint":I
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v11    # "scriptExitCode":I
    .restart local v15    # "targetCheckpoints":I
    .restart local v17    # "folderExists":Z
    .restart local v18    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "scriptIn":Ljava/io/InputStream;
    .restart local v20    # "bytesRead":I
    .restart local v21    # "totalBytes":J
    .restart local v23    # "scriptOut":Ljava/io/FileOutputStream;
    .restart local v24    # "wallpaperFolder":Ljava/io/File;
    .restart local v25    # "folderSize":J
    .restart local v27    # "copiedBytes":J
    .restart local v29    # "assetName":Ljava/lang/String;
    .restart local v31    # "sizeLimit":J
    .restart local v33    # "out":Ljava/io/FileOutputStream;
    .restart local v34    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v35    # "copybuffer":[B
    .restart local v36    # "bytesPerRecord":I
    .restart local v37    # "in":Ljava/io/InputStream;
    .restart local v38    # "processBuilder":Ljava/lang/ProcessBuilder;
    .restart local v39    # "totalRecords":J
    .restart local v41    # "reader":Ljava/io/BufferedReader;
    :cond_f
    :goto_9
    :try_start_13
    new-instance v13, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda4;

    invoke-direct {v13, v2, v1, v3}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda4;-><init>(Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v13}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 472
    .end local v0    # "exitCode":I
    .end local v6    # "estimatedTotalCheckpoints":I
    .end local v7    # "checkpointCount":I
    .end local v9    # "recordsPerCheckpoint":I
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "scriptExitCode":I
    .end local v15    # "targetCheckpoints":I
    .end local v17    # "folderExists":Z
    .end local v18    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "scriptIn":Ljava/io/InputStream;
    .end local v20    # "bytesRead":I
    .end local v21    # "totalBytes":J
    .end local v23    # "scriptOut":Ljava/io/FileOutputStream;
    .end local v24    # "wallpaperFolder":Ljava/io/File;
    .end local v25    # "folderSize":J
    .end local v27    # "copiedBytes":J
    .end local v29    # "assetName":Ljava/lang/String;
    .end local v31    # "sizeLimit":J
    .end local v33    # "out":Ljava/io/FileOutputStream;
    .end local v34    # "assetManager":Landroid/content/res/AssetManager;
    .end local v35    # "copybuffer":[B
    .end local v36    # "bytesPerRecord":I
    .end local v37    # "in":Ljava/io/InputStream;
    .end local v38    # "processBuilder":Ljava/lang/ProcessBuilder;
    .end local v39    # "totalRecords":J
    .end local v41    # "reader":Ljava/io/BufferedReader;
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    .line 473
    :cond_10
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 474
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_11

    .line 475
    move-object/from16 v13, v30

    invoke-static {v8, v13}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_11
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 479
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_17

    .line 480
    move-object/from16 v14, v16

    invoke-static {v8, v14}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 472
    :catchall_7
    move-exception v0

    move-object/from16 v14, v16

    move-object/from16 v13, v30

    move-object v9, v4

    move-object v11, v5

    move-object v10, v12

    goto/16 :goto_c

    .line 464
    :catch_7
    move-exception v0

    move-object/from16 v14, v16

    move-object/from16 v13, v30

    move-object v9, v4

    move-object v11, v5

    move-object v10, v12

    goto/16 :goto_a

    .line 442
    .restart local v0    # "exitCode":I
    .restart local v6    # "estimatedTotalCheckpoints":I
    .restart local v7    # "checkpointCount":I
    .restart local v9    # "recordsPerCheckpoint":I
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v11    # "scriptExitCode":I
    .restart local v15    # "targetCheckpoints":I
    .restart local v17    # "folderExists":Z
    .restart local v18    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "scriptIn":Ljava/io/InputStream;
    .restart local v20    # "bytesRead":I
    .restart local v21    # "totalBytes":J
    .restart local v23    # "scriptOut":Ljava/io/FileOutputStream;
    .restart local v24    # "wallpaperFolder":Ljava/io/File;
    .restart local v25    # "folderSize":J
    .restart local v27    # "copiedBytes":J
    .restart local v29    # "assetName":Ljava/lang/String;
    .restart local v31    # "sizeLimit":J
    .restart local v33    # "out":Ljava/io/FileOutputStream;
    .restart local v34    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v35    # "copybuffer":[B
    .restart local v36    # "bytesPerRecord":I
    .restart local v37    # "in":Ljava/io/InputStream;
    .restart local v38    # "processBuilder":Ljava/lang/ProcessBuilder;
    .restart local v39    # "totalRecords":J
    .restart local v41    # "reader":Ljava/io/BufferedReader;
    :cond_12
    move-object/from16 v14, v16

    move-object/from16 v13, v30

    move-object/from16 v16, v4

    .end local v4    # "process":Ljava/lang/Process;
    .local v16, "process":Ljava/lang/Process;
    :try_start_14
    new-instance v4, Ljava/io/IOException;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    move-object/from16 v30, v5

    .end local v5    # "scriptFile":Ljava/io/File;
    .local v30, "scriptFile":Ljava/io/File;
    :try_start_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v42, v6

    .end local v6    # "estimatedTotalCheckpoints":I
    .local v42, "estimatedTotalCheckpoints":I
    const-string v6, "Fix script failed with code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v12    # "outFile":Ljava/io/File;
    .end local v16    # "process":Ljava/lang/Process;
    .end local v30    # "scriptFile":Ljava/io/File;
    .end local p0    # "activity":Landroid/app/Activity;
    .end local p1    # "extractionProgressDialog":Landroid/app/ProgressDialog;
    .end local p2    # "whenDone":Ljava/lang/Runnable;
    throw v4
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 472
    .end local v0    # "exitCode":I
    .end local v7    # "checkpointCount":I
    .end local v9    # "recordsPerCheckpoint":I
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "scriptExitCode":I
    .end local v15    # "targetCheckpoints":I
    .end local v17    # "folderExists":Z
    .end local v18    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "scriptIn":Ljava/io/InputStream;
    .end local v20    # "bytesRead":I
    .end local v21    # "totalBytes":J
    .end local v23    # "scriptOut":Ljava/io/FileOutputStream;
    .end local v24    # "wallpaperFolder":Ljava/io/File;
    .end local v25    # "folderSize":J
    .end local v27    # "copiedBytes":J
    .end local v29    # "assetName":Ljava/lang/String;
    .end local v31    # "sizeLimit":J
    .end local v33    # "out":Ljava/io/FileOutputStream;
    .end local v34    # "assetManager":Landroid/content/res/AssetManager;
    .end local v35    # "copybuffer":[B
    .end local v36    # "bytesPerRecord":I
    .end local v37    # "in":Ljava/io/InputStream;
    .end local v38    # "processBuilder":Ljava/lang/ProcessBuilder;
    .end local v39    # "totalRecords":J
    .end local v41    # "reader":Ljava/io/BufferedReader;
    .end local v42    # "estimatedTotalCheckpoints":I
    .restart local v12    # "outFile":Ljava/io/File;
    .restart local v16    # "process":Ljava/lang/Process;
    .restart local v30    # "scriptFile":Ljava/io/File;
    .restart local p0    # "activity":Landroid/app/Activity;
    .restart local p1    # "extractionProgressDialog":Landroid/app/ProgressDialog;
    .restart local p2    # "whenDone":Ljava/lang/Runnable;
    :catchall_8
    move-exception v0

    move-object v10, v12

    move-object/from16 v9, v16

    move-object/from16 v11, v30

    goto/16 :goto_c

    .line 464
    :catch_8
    move-exception v0

    move-object v10, v12

    move-object/from16 v9, v16

    move-object/from16 v11, v30

    goto/16 :goto_a

    .line 472
    .end local v30    # "scriptFile":Ljava/io/File;
    .restart local v5    # "scriptFile":Ljava/io/File;
    :catchall_9
    move-exception v0

    move-object/from16 v30, v5

    move-object v10, v12

    move-object/from16 v9, v16

    move-object/from16 v11, v30

    .end local v5    # "scriptFile":Ljava/io/File;
    .restart local v30    # "scriptFile":Ljava/io/File;
    goto/16 :goto_c

    .line 464
    .end local v30    # "scriptFile":Ljava/io/File;
    .restart local v5    # "scriptFile":Ljava/io/File;
    :catch_9
    move-exception v0

    move-object/from16 v30, v5

    move-object v10, v12

    move-object/from16 v9, v16

    move-object/from16 v11, v30

    .end local v5    # "scriptFile":Ljava/io/File;
    .restart local v30    # "scriptFile":Ljava/io/File;
    goto/16 :goto_a

    .line 472
    .end local v16    # "process":Ljava/lang/Process;
    .end local v30    # "scriptFile":Ljava/io/File;
    .restart local v4    # "process":Ljava/lang/Process;
    .restart local v5    # "scriptFile":Ljava/io/File;
    :catchall_a
    move-exception v0

    move-object/from16 v14, v16

    move-object/from16 v13, v30

    move-object/from16 v16, v4

    move-object/from16 v30, v5

    move-object v10, v12

    move-object/from16 v9, v16

    move-object/from16 v11, v30

    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "scriptFile":Ljava/io/File;
    .restart local v16    # "process":Ljava/lang/Process;
    .restart local v30    # "scriptFile":Ljava/io/File;
    goto/16 :goto_c

    .line 464
    .end local v16    # "process":Ljava/lang/Process;
    .end local v30    # "scriptFile":Ljava/io/File;
    .restart local v4    # "process":Ljava/lang/Process;
    .restart local v5    # "scriptFile":Ljava/io/File;
    :catch_a
    move-exception v0

    move-object/from16 v14, v16

    move-object/from16 v13, v30

    move-object/from16 v16, v4

    move-object/from16 v30, v5

    move-object v10, v12

    move-object/from16 v9, v16

    move-object/from16 v11, v30

    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "scriptFile":Ljava/io/File;
    .restart local v16    # "process":Ljava/lang/Process;
    .restart local v30    # "scriptFile":Ljava/io/File;
    goto/16 :goto_a

    .line 424
    .end local v16    # "process":Ljava/lang/Process;
    .end local v30    # "scriptFile":Ljava/io/File;
    .restart local v0    # "exitCode":I
    .restart local v5    # "scriptFile":Ljava/io/File;
    .restart local v6    # "estimatedTotalCheckpoints":I
    .restart local v7    # "checkpointCount":I
    .restart local v9    # "recordsPerCheckpoint":I
    .restart local v10    # "line":Ljava/lang/String;
    .local v11, "process":Ljava/lang/Process;
    .restart local v15    # "targetCheckpoints":I
    .restart local v17    # "folderExists":Z
    .restart local v18    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "scriptIn":Ljava/io/InputStream;
    .restart local v20    # "bytesRead":I
    .restart local v21    # "totalBytes":J
    .restart local v23    # "scriptOut":Ljava/io/FileOutputStream;
    .restart local v24    # "wallpaperFolder":Ljava/io/File;
    .restart local v25    # "folderSize":J
    .restart local v27    # "copiedBytes":J
    .restart local v29    # "assetName":Ljava/lang/String;
    .restart local v31    # "sizeLimit":J
    .restart local v33    # "out":Ljava/io/FileOutputStream;
    .restart local v34    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v35    # "copybuffer":[B
    .restart local v36    # "bytesPerRecord":I
    .restart local v37    # "in":Ljava/io/InputStream;
    .restart local v38    # "processBuilder":Ljava/lang/ProcessBuilder;
    .restart local v39    # "totalRecords":J
    .restart local v41    # "reader":Ljava/io/BufferedReader;
    :cond_13
    move/from16 v42, v6

    move-object/from16 v14, v16

    move-object/from16 v13, v30

    move-object/from16 v30, v5

    .end local v5    # "scriptFile":Ljava/io/File;
    .end local v6    # "estimatedTotalCheckpoints":I
    .restart local v30    # "scriptFile":Ljava/io/File;
    .restart local v42    # "estimatedTotalCheckpoints":I
    :try_start_16
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tar extraction failed with code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v11    # "process":Ljava/lang/Process;
    .end local v12    # "outFile":Ljava/io/File;
    .end local v30    # "scriptFile":Ljava/io/File;
    .end local p0    # "activity":Landroid/app/Activity;
    .end local p1    # "extractionProgressDialog":Landroid/app/ProgressDialog;
    .end local p2    # "whenDone":Ljava/lang/Runnable;
    throw v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 472
    .end local v0    # "exitCode":I
    .end local v7    # "checkpointCount":I
    .end local v9    # "recordsPerCheckpoint":I
    .end local v10    # "line":Ljava/lang/String;
    .end local v15    # "targetCheckpoints":I
    .end local v17    # "folderExists":Z
    .end local v18    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "scriptIn":Ljava/io/InputStream;
    .end local v20    # "bytesRead":I
    .end local v21    # "totalBytes":J
    .end local v23    # "scriptOut":Ljava/io/FileOutputStream;
    .end local v24    # "wallpaperFolder":Ljava/io/File;
    .end local v25    # "folderSize":J
    .end local v27    # "copiedBytes":J
    .end local v29    # "assetName":Ljava/lang/String;
    .end local v31    # "sizeLimit":J
    .end local v33    # "out":Ljava/io/FileOutputStream;
    .end local v34    # "assetManager":Landroid/content/res/AssetManager;
    .end local v35    # "copybuffer":[B
    .end local v36    # "bytesPerRecord":I
    .end local v37    # "in":Ljava/io/InputStream;
    .end local v38    # "processBuilder":Ljava/lang/ProcessBuilder;
    .end local v39    # "totalRecords":J
    .end local v41    # "reader":Ljava/io/BufferedReader;
    .end local v42    # "estimatedTotalCheckpoints":I
    .restart local v11    # "process":Ljava/lang/Process;
    .restart local v12    # "outFile":Ljava/io/File;
    .restart local v30    # "scriptFile":Ljava/io/File;
    .restart local p0    # "activity":Landroid/app/Activity;
    .restart local p1    # "extractionProgressDialog":Landroid/app/ProgressDialog;
    .restart local p2    # "whenDone":Ljava/lang/Runnable;
    :catchall_b
    move-exception v0

    move-object v9, v11

    move-object v10, v12

    move-object/from16 v11, v30

    goto/16 :goto_c

    .line 464
    :catch_b
    move-exception v0

    move-object v9, v11

    move-object v10, v12

    move-object/from16 v11, v30

    goto/16 :goto_a

    .line 472
    .end local v30    # "scriptFile":Ljava/io/File;
    .restart local v5    # "scriptFile":Ljava/io/File;
    :catchall_c
    move-exception v0

    move-object/from16 v14, v16

    move-object/from16 v13, v30

    move-object/from16 v30, v5

    move-object v9, v11

    move-object v10, v12

    move-object/from16 v11, v30

    .end local v5    # "scriptFile":Ljava/io/File;
    .restart local v30    # "scriptFile":Ljava/io/File;
    goto/16 :goto_c

    .line 464
    .end local v30    # "scriptFile":Ljava/io/File;
    .restart local v5    # "scriptFile":Ljava/io/File;
    :catch_c
    move-exception v0

    move-object/from16 v14, v16

    move-object/from16 v13, v30

    move-object/from16 v30, v5

    move-object v9, v11

    move-object v10, v12

    move-object/from16 v11, v30

    .end local v5    # "scriptFile":Ljava/io/File;
    .restart local v30    # "scriptFile":Ljava/io/File;
    goto/16 :goto_a

    .line 472
    .end local v11    # "process":Ljava/lang/Process;
    .end local v30    # "scriptFile":Ljava/io/File;
    .restart local v5    # "scriptFile":Ljava/io/File;
    .local v18, "process":Ljava/lang/Process;
    :catchall_d
    move-exception v0

    move-object/from16 v14, v16

    move-object/from16 v13, v30

    move-object/from16 v30, v5

    move-object v10, v12

    move-object/from16 v9, v18

    move-object/from16 v11, v30

    .end local v5    # "scriptFile":Ljava/io/File;
    .restart local v30    # "scriptFile":Ljava/io/File;
    goto/16 :goto_c

    .line 464
    .end local v30    # "scriptFile":Ljava/io/File;
    .restart local v5    # "scriptFile":Ljava/io/File;
    :catch_d
    move-exception v0

    move-object/from16 v14, v16

    move-object/from16 v13, v30

    move-object/from16 v30, v5

    move-object v10, v12

    move-object/from16 v9, v18

    move-object/from16 v11, v30

    .end local v5    # "scriptFile":Ljava/io/File;
    .restart local v30    # "scriptFile":Ljava/io/File;
    goto/16 :goto_a

    .line 472
    .end local v30    # "scriptFile":Ljava/io/File;
    .local v23, "scriptFile":Ljava/io/File;
    :catchall_e
    move-exception v0

    move-object/from16 v14, v16

    move-object/from16 v13, v30

    move-object v10, v12

    move-object/from16 v9, v18

    move-object/from16 v11, v23

    goto/16 :goto_c

    .line 464
    :catch_e
    move-exception v0

    move-object/from16 v14, v16

    move-object/from16 v13, v30

    move-object v10, v12

    move-object/from16 v9, v18

    move-object/from16 v11, v23

    goto :goto_a

    .line 472
    :catchall_f
    move-exception v0

    move-object v14, v6

    move-object v13, v7

    move-object v10, v12

    move-object/from16 v9, v18

    move-object/from16 v11, v23

    goto/16 :goto_c

    .line 464
    :catch_f
    move-exception v0

    move-object v14, v6

    move-object v13, v7

    move-object v10, v12

    move-object/from16 v9, v18

    move-object/from16 v11, v23

    goto :goto_a

    .line 472
    .end local v12    # "outFile":Ljava/io/File;
    .restart local v22    # "outFile":Ljava/io/File;
    :catchall_10
    move-exception v0

    move-object v14, v6

    move-object v13, v7

    move-object/from16 v9, v18

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    goto/16 :goto_c

    .line 464
    :catch_10
    move-exception v0

    move-object v14, v6

    move-object v13, v7

    move-object/from16 v9, v18

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    goto :goto_a

    .line 472
    .end local v18    # "process":Ljava/lang/Process;
    .end local v22    # "outFile":Ljava/io/File;
    .end local v23    # "scriptFile":Ljava/io/File;
    .local v9, "process":Ljava/lang/Process;
    .local v10, "outFile":Ljava/io/File;
    .local v11, "scriptFile":Ljava/io/File;
    :catchall_11
    move-exception v0

    move-object v14, v6

    move-object v13, v7

    move-object/from16 v18, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    .end local v9    # "process":Ljava/lang/Process;
    .end local v10    # "outFile":Ljava/io/File;
    .end local v11    # "scriptFile":Ljava/io/File;
    .restart local v18    # "process":Ljava/lang/Process;
    .restart local v22    # "outFile":Ljava/io/File;
    .restart local v23    # "scriptFile":Ljava/io/File;
    goto :goto_c

    .line 464
    .end local v18    # "process":Ljava/lang/Process;
    .end local v22    # "outFile":Ljava/io/File;
    .end local v23    # "scriptFile":Ljava/io/File;
    .restart local v9    # "process":Ljava/lang/Process;
    .restart local v10    # "outFile":Ljava/io/File;
    .restart local v11    # "scriptFile":Ljava/io/File;
    :catch_11
    move-exception v0

    move-object v14, v6

    move-object v13, v7

    move-object/from16 v18, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    :goto_a
    :try_start_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XoDos extraction error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    new-instance v4, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda5;

    invoke-direct {v4, v2, v1, v3, v0}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda5;-><init>(Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Exception;)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_12

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_14

    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V

    .line 473
    :cond_14
    if-eqz v10, :cond_15

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 474
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_15

    .line 475
    invoke-static {v8, v13}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_15
    if-eqz v11, :cond_16

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 479
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_16

    .line 480
    invoke-static {v8, v14}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_16
    move-object v4, v9

    move-object v12, v10

    move-object v5, v11

    .end local v9    # "process":Ljava/lang/Process;
    .end local v10    # "outFile":Ljava/io/File;
    .end local v11    # "scriptFile":Ljava/io/File;
    .restart local v4    # "process":Ljava/lang/Process;
    .restart local v5    # "scriptFile":Ljava/io/File;
    .restart local v12    # "outFile":Ljava/io/File;
    :cond_17
    :goto_b
    return-void

    .line 472
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "scriptFile":Ljava/io/File;
    .end local v12    # "outFile":Ljava/io/File;
    .restart local v9    # "process":Ljava/lang/Process;
    .restart local v10    # "outFile":Ljava/io/File;
    .restart local v11    # "scriptFile":Ljava/io/File;
    :catchall_12
    move-exception v0

    :goto_c
    if-eqz v9, :cond_18

    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V

    .line 473
    :cond_18
    if-eqz v10, :cond_19

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 474
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_19

    .line 475
    invoke-static {v8, v13}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_19
    if-eqz v11, :cond_1a

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 479
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 480
    invoke-static {v8, v14}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_1a
    throw v0
.end method

.method static synthetic lambda$startXoDosInstallation$2(Landroid/app/ProgressDialog;)V
    .locals 1
    .param p0, "extractionProgressDialog"    # Landroid/app/ProgressDialog;

    .line 366
    const-string v0, "Installing XoDos system..."

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$startXoDosInstallation$3(Landroid/app/ProgressDialog;I)V
    .locals 0
    .param p0, "extractionProgressDialog"    # Landroid/app/ProgressDialog;
    .param p1, "finalProgress"    # I

    .line 414
    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$startXoDosInstallation$4(Landroid/app/ProgressDialog;)V
    .locals 1
    .param p0, "extractionProgressDialog"    # Landroid/app/ProgressDialog;

    .line 428
    const-string v0, "XoDos installed successfully..."

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$startXoDosInstallation$5(Landroid/app/ProgressDialog;)V
    .locals 1
    .param p0, "extractionProgressDialog"    # Landroid/app/ProgressDialog;

    .line 429
    const/16 v0, 0x63

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$startXoDosInstallation$6(Landroid/app/ProgressDialog;)V
    .locals 1
    .param p0, "extractionProgressDialog"    # Landroid/app/ProgressDialog;

    .line 437
    const-string v0, "Finalizing and fixing installation..."

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$startXoDosInstallation$7(Landroid/app/ProgressDialog;)V
    .locals 1
    .param p0, "extractionProgressDialog"    # Landroid/app/ProgressDialog;

    .line 445
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$startXoDosInstallation$8(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "whenDone"    # Ljava/lang/Runnable;

    .line 459
    invoke-static {p0}, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;->writeEnvironmentToFile(Landroid/content/Context;)V

    .line 460
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 461
    return-void
.end method

.method static synthetic lambda$startXoDosInstallation$9(Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "extractionProgressDialog"    # Landroid/app/ProgressDialog;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "whenDone"    # Ljava/lang/Runnable;

    .line 454
    const-string v0, "Installation complete!"

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 455
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 457
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    return-void
.end method

.method public static loadZipBytes()[B
    .locals 1

    .line 658
    const-string v0, "termux-bootstrap"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lcom/termux/app/TermuxInstaller;->getZip()[B

    move-result-object v0

    return-object v0
.end method

.method private static sendBootstrapCrashReportNotification(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;

    .line 545
    const-string v0, "Termux Bootstrap Error"

    .line 549
    .local v0, "title":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "## Termux Bootstrap Error\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 551
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxDebugMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->TERMUX_AND_PLUGIN_PACKAGES:Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    .line 549
    const-string v3, "TermuxInstaller"

    const-string v4, "Termux Bootstrap Error"

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZLcom/termux/shared/termux/TermuxUtils$AppInfoMode;Z)V

    .line 553
    return-void
.end method

.method static setupBootstrapIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "whenDone"    # Ljava/lang/Runnable;

    .line 86
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/termux/shared/termux/file/TermuxFileUtils;->isTermuxFilesDirectoryAccessible(Landroid/content/Context;ZZ)Lcom/termux/shared/errors/Error;

    move-result-object v1

    .line 87
    .local v1, "filesDirectoryAccessibleError":Lcom/termux/shared/errors/Error;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 91
    .local v3, "isFilesDirectoryAccessible":Z
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    const v6, 0x7f120067

    const-string v7, "/data/data/com.termux/files/usr"

    const-string v8, "TermuxInstaller"

    if-lt v4, v5, :cond_1

    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->isCurrentUserThePrimaryUser(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 92
    nop

    .line 93
    invoke-static {v7, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v2

    .line 92
    const v2, 0x7f120066

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "bootstrapErrorMessage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFilesDirectoryAccessible: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v8, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {p0, v0}, Lcom/termux/app/TermuxInstaller;->sendBootstrapCrashReportNotification(Landroid/app/Activity;Ljava/lang/String;)V

    .line 97
    nop

    .line 98
    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {p0, v2, v0}, Lcom/termux/shared/interact/MessageDialogUtils;->exitAppWithErrorMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 103
    .end local v0    # "bootstrapErrorMessage":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 104
    invoke-static {v1}, Lcom/termux/shared/errors/Error;->getMinimalErrorString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "bootstrapErrorMessage":Ljava/lang/String;
    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->isAppInstalledOnExternalStorage(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "^/data/user/0/"

    const-string v11, "/data/data/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "/data/data/com.termux/files"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 108
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 109
    invoke-static {v7, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v7, v0, v2

    .line 108
    const v2, 0x7f120065

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    :cond_2
    invoke-static {v8, v5}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p0, v5}, Lcom/termux/app/TermuxInstaller;->sendBootstrapCrashReportNotification(Landroid/app/Activity;Ljava/lang/String;)V

    .line 114
    nop

    .line 115
    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {p0, v0, v5, v4}, Lcom/termux/shared/interact/MessageDialogUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 117
    return-void

    .line 121
    .end local v5    # "bootstrapErrorMessage":Ljava/lang/String;
    :cond_3
    invoke-static {v7, v0}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 122
    invoke-static {}, Lcom/termux/shared/termux/file/TermuxFileUtils;->isTermuxPrefixDirectoryEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 123
    const-string v5, "The termux prefix directory \"/data/data/com.termux/files/usr\" exists but is empty or only contains specific unimportant files."

    invoke-static {v8, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 126
    return-void

    .line 128
    :cond_5
    invoke-static {v7, v2}, Lcom/termux/shared/file/FileUtils;->fileExists(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 129
    const-string v5, "The termux prefix directory \"/data/data/com.termux/files/usr\" does not exist but another file exists at its destination."

    invoke-static {v8, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_6
    :goto_1
    const v5, 0x7f12006a

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v0, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    .line 135
    .local v4, "progress":Landroid/app/ProgressDialog;
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 136
    .local v5, "extractionProgressDialog":Landroid/app/ProgressDialog;
    const-string v6, "Installing XoDos system"

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    const-string v6, "Please wait for XoDos first Install ..."

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 139
    const/16 v0, 0x64

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 140
    invoke-virtual {v5, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 142
    new-instance v0, Lcom/termux/app/TermuxInstaller$1;

    invoke-direct {v0, p0, p1, v5, v4}, Lcom/termux/app/TermuxInstaller$1;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/app/ProgressDialog;)V

    .line 278
    invoke-virtual {v0}, Lcom/termux/app/TermuxInstaller$1;->start()V

    .line 279
    return-void
.end method

.method static setupStorageSymlinks(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 556
    const-string v0, "termux-storage"

    .line 557
    .local v0, "LOG_TAG":Ljava/lang/String;
    const-string v1, "Termux Setup Storage Error"

    .line 559
    .local v1, "title":Ljava/lang/String;
    const-string v2, "termux-storage"

    const-string v3, "Setting up storage symlinks."

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v2, Lcom/termux/app/TermuxInstaller$2;

    invoke-direct {v2, p0}, Lcom/termux/app/TermuxInstaller$2;-><init>(Landroid/content/Context;)V

    .line 649
    invoke-virtual {v2}, Lcom/termux/app/TermuxInstaller$2;->start()V

    .line 650
    return-void
.end method

.method public static showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "whenDone"    # Ljava/lang/Runnable;
    .param p2, "message"    # Ljava/lang/String;

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bootstrap Error:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxInstaller"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-static {p0, p2}, Lcom/termux/app/TermuxInstaller;->sendBootstrapCrashReportNotification(Landroid/app/Activity;Ljava/lang/String;)V

    .line 526
    new-instance v0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda9;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 542
    return-void
.end method

.method private static showXoDosErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "whenDone"    # Ljava/lang/Runnable;
    .param p2, "message"    # Ljava/lang/String;

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XoDos Installation Error:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxInstaller"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    new-instance v0, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2, p1}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda8;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 516
    return-void
.end method

.method private static startXoDosInstallation(Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "extractionProgressDialog"    # Landroid/app/ProgressDialog;
    .param p2, "whenDone"    # Ljava/lang/Runnable;

    .line 285
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lcom/termux/app/TermuxInstaller$$ExternalSyntheticLambda12;-><init>(Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 484
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 485
    return-void
.end method

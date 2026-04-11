.class Lcom/termux/app/TermuxActivity$1;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Lcom/termux/x11/LoriePreferences$TermuxActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/TermuxActivity;

    .line 424
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$collectProcessorInfo$1(Ljava/lang/String;Ljava/util/List;)V
    .locals 18
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "processInfoList"    # Ljava/util/List;

    .line 511
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "/data/data/com.termux/files/usr/tmp"

    aput-object v3, v1, v2

    const-string v3, "%s/process_info"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    filled-new-array/range {p0 .. p0}, [Ljava/lang/String;

    move-result-object v5

    .line 513
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 512
    const-string v5, "collect_process_info"

    const-string v6, "/home/"

    invoke-static {v3, v5, v4, v6}, Lcom/termux/app/terminal/utils/CommandUtils;->execInPath(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 514
    const-string v3, "1"

    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 515
    return-void

    .line 517
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    .local v3, "processorFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 519
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 520
    .local v6, "temp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 522
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v7

    .line 523
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    if-eqz v7, :cond_7

    .line 524
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 525
    .local v7, "strs":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x4

    if-ge v8, v9, :cond_1

    .line 526
    move-object/from16 v10, p1

    goto :goto_0

    .line 528
    :cond_1
    const/4 v8, 0x3

    aget-object v9, v7, v8

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 529
    .local v9, "lastIndex":I
    aget-object v8, v7, v8

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 530
    .local v13, "fileName":Ljava/lang/String;
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v10, "PID"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 531
    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v10, "PS"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 532
    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v10, "SORT"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 533
    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v10, "HEAD"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 534
    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v10, "AWK"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 535
    move-object/from16 v10, p1

    goto :goto_0

    .line 538
    :cond_2
    new-instance v8, Lcom/termux/x11/controller/winhandler/ProcessInfo;

    aget-object v10, v7, v2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aget-object v10, v7, v0

    .line 539
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const/16 v16, 0xf

    const/16 v17, 0x0

    move-object v11, v8

    invoke-direct/range {v11 .. v17}, Lcom/termux/x11/controller/winhandler/ProcessInfo;-><init>(ILjava/lang/String;JIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    .local v8, "processInfo":Lcom/termux/x11/controller/winhandler/ProcessInfo;
    move-object/from16 v10, p1

    :try_start_1
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 541
    nop

    .end local v7    # "strs":[Ljava/lang/String;
    .end local v8    # "processInfo":Lcom/termux/x11/controller/winhandler/ProcessInfo;
    .end local v9    # "lastIndex":I
    .end local v13    # "fileName":Ljava/lang/String;
    goto/16 :goto_0

    .line 542
    :catch_0
    move-exception v0

    goto :goto_1

    .line 533
    .restart local v7    # "strs":[Ljava/lang/String;
    .restart local v9    # "lastIndex":I
    .restart local v13    # "fileName":Ljava/lang/String;
    :cond_3
    move-object/from16 v10, p1

    goto/16 :goto_0

    .line 532
    :cond_4
    move-object/from16 v10, p1

    goto/16 :goto_0

    .line 531
    :cond_5
    move-object/from16 v10, p1

    goto/16 :goto_0

    .line 530
    :cond_6
    move-object/from16 v10, p1

    goto/16 :goto_0

    .line 545
    .end local v7    # "strs":[Ljava/lang/String;
    .end local v9    # "lastIndex":I
    .end local v13    # "fileName":Ljava/lang/String;
    :cond_7
    move-object/from16 v10, p1

    .line 547
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 550
    goto :goto_4

    .line 548
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 549
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 545
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    move-object/from16 v10, p1

    goto :goto_2

    .line 542
    :catch_2
    move-exception v0

    move-object/from16 v10, p1

    .line 543
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "path":Ljava/lang/String;
    .end local v3    # "processorFile":Ljava/io/File;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "temp":Ljava/lang/String;
    .end local p0    # "tag":Ljava/lang/String;
    .end local p1    # "processInfoList":Ljava/util/List;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 545
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v3    # "processorFile":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "temp":Ljava/lang/String;
    .restart local p0    # "tag":Ljava/lang/String;
    .restart local p1    # "processInfoList":Ljava/util/List;
    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v5, :cond_8

    .line 547
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 550
    goto :goto_3

    .line 548
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 549
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 552
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    :goto_3
    throw v0

    .line 520
    :cond_9
    move-object/from16 v10, p1

    .line 554
    :goto_4
    return-void
.end method

.method static synthetic lambda$reInstallX11StartScript$0(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 448
    const-string v0, "install"

    invoke-static {p0, v0}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 449
    const-string v1, "xodos.tar.xz"

    invoke-static {p0, v1}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 450
    const-string v1, "setup"

    invoke-static {p0, v1}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 451
    const-string v1, "installproot"

    invoke-static {p0, v1}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 452
    const-string v1, "installkali"

    invoke-static {p0, v1}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 453
    const-string v1, "switch"

    invoke-static {p0, v1}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 454
    const-string v1, "fix"

    invoke-static {p0, v1}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 455
    const-string v1, "collect_process_info"

    invoke-static {p0, v1}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 456
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "/data/data/com.termux/files/home/install"

    const-string v3, "+x"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "chmod"

    invoke-static {p0, v2, v1}, Lcom/termux/app/terminal/utils/CommandUtils;->exec(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 457
    new-instance v1, Ljava/util/ArrayList;

    const-string v4, "/data/data/com.termux/files/home/collect_process_info"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v2, v1}, Lcom/termux/app/terminal/utils/CommandUtils;->exec(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 458
    const-string v1, "termux-x11-nightly-1.03.10-0-all.deb"

    invoke-static {p0, v1}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 459
    const-string v1, "xkeyboard-config_2.45_all.deb"

    invoke-static {p0, v1}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 460
    const/4 v1, 0x0

    const-string v2, "/home/"

    invoke-static {p0, v0, v1, v2}, Lcom/termux/app/terminal/utils/CommandUtils;->execInPath(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 461
    return-void
.end method


# virtual methods
.method public changePreference(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 502
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0, p1}, Lcom/termux/app/TermuxActivity;->access$500(Lcom/termux/app/TermuxActivity;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public collectProcessorInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/termux/x11/controller/winhandler/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v0, "processInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/termux/x11/controller/winhandler/ProcessInfo;>;"
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    new-instance v2, Lcom/termux/app/TermuxActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/termux/app/TermuxActivity$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/termux/app/TermuxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 555
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method synthetic lambda$setFloatBallMenu$2$com-termux-app-TermuxActivity$1()V
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    new-instance v1, Lcom/termux/app/terminal/FloatBallMenuClient;

    iget-object v2, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {v1, v2}, Lcom/termux/app/terminal/FloatBallMenuClient;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-static {v0, v1}, Lcom/termux/app/TermuxActivity;->access$202(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 571
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->access$200(Lcom/termux/app/TermuxActivity;)Lcom/termux/app/terminal/FloatBallMenuClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->onCreate()V

    .line 572
    return-void
.end method

.method public onChangeOrientation(I)V
    .locals 2
    .param p1, "landscape"    # I

    .line 440
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->access$000(Lcom/termux/app/TermuxActivity;)Lcom/termux/app/terminal/DisplaySlidingWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->changeLayoutOrientation(I)V

    .line 441
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->hideInputControls()V

    .line 442
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->access$300(Lcom/termux/app/TermuxActivity;)Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->loadProfiles(Z)V

    .line 443
    return-void
.end method

.method public onExitApp()V
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->access$600(Lcom/termux/app/TermuxActivity;)V

    .line 607
    return-void
.end method

.method public onX11PreferenceSwitchChange(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    .line 427
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->access$000(Lcom/termux/app/TermuxActivity;)Lcom/termux/app/terminal/DisplaySlidingWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->setX11PreferenceSwitchSlider(Z)V

    .line 428
    return-void
.end method

.method public openSoftwareKeyboard()V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/x11/MainActivity;->toggleKeyboardVisibility(Landroid/content/Context;)V

    .line 493
    return-void
.end method

.method public reInstallX11StartScript(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 447
    new-instance v0, Lcom/termux/app/TermuxActivity$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/termux/app/TermuxActivity$1$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method public releaseSlider(Z)V
    .locals 1
    .param p1, "open"    # Z

    .line 432
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->access$100(Lcom/termux/app/TermuxActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    .line 433
    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->access$200(Lcom/termux/app/TermuxActivity;)Lcom/termux/app/terminal/FloatBallMenuClient;

    move-result-object v0

    if-nez v0, :cond_1

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->access$000(Lcom/termux/app/TermuxActivity;)Lcom/termux/app/terminal/DisplaySlidingWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->releaseSlider(Z)V

    .line 436
    :cond_1
    return-void
.end method

.method public setFloatBallMenu(ZZ)V
    .locals 4
    .param p1, "enableFloatBallMenu"    # Z
    .param p2, "enableGlobalFloatBallMenu"    # Z

    .line 560
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->access$200(Lcom/termux/app/TermuxActivity;)Lcom/termux/app/terminal/FloatBallMenuClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 561
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v1}, Lcom/termux/app/TermuxActivity;->access$200(Lcom/termux/app/TermuxActivity;)Lcom/termux/app/terminal/FloatBallMenuClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->onDestroy()V

    .line 563
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v1, v0}, Lcom/termux/app/TermuxActivity;->access$202(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/terminal/FloatBallMenuClient;

    goto :goto_0

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v1}, Lcom/termux/app/TermuxActivity;->access$200(Lcom/termux/app/TermuxActivity;)Lcom/termux/app/terminal/FloatBallMenuClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->isGlobalFloatBallMenu()Z

    move-result v1

    if-eq p2, v1, :cond_2

    .line 566
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v1}, Lcom/termux/app/TermuxActivity;->access$200(Lcom/termux/app/TermuxActivity;)Lcom/termux/app/terminal/FloatBallMenuClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->onDestroy()V

    .line 567
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v1, v0}, Lcom/termux/app/TermuxActivity;->access$202(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 568
    if-eqz p1, :cond_2

    .line 569
    sget-object v0, Lcom/termux/x11/LoriePreferences;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/app/TermuxActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/termux/app/TermuxActivity$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 578
    :cond_1
    if-eqz p1, :cond_2

    .line 579
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    new-instance v1, Lcom/termux/app/terminal/FloatBallMenuClient;

    iget-object v2, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {v1, v2}, Lcom/termux/app/terminal/FloatBallMenuClient;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-static {v0, v1}, Lcom/termux/app/TermuxActivity;->access$202(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 580
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->access$200(Lcom/termux/app/TermuxActivity;)Lcom/termux/app/terminal/FloatBallMenuClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->onCreate()V

    .line 583
    :cond_2
    :goto_0
    return-void
.end method

.method public showProcessManager()V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->showProcessManagerDialog()V

    .line 498
    return-void
.end method

.method public stopDesktop()V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->access$400(Lcom/termux/app/TermuxActivity;)V

    .line 488
    return-void
.end method

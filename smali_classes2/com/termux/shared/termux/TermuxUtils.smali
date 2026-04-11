.class public Lcom/termux/shared/termux/TermuxUtils;
.super Ljava/lang/Object;
.source "TermuxUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static geAPTInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;

    .line 590
    const-string v1, "TermuxUtils"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/termux/shared/R$raw;->apt_info_script:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 592
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .local v0, "aptInfoScript":Ljava/lang/String;
    nop

    .line 598
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 600
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 605
    :cond_0
    const-string v4, "@TERMUX_PREFIX@"

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/data/com.termux/files/usr"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    new-instance v4, Lcom/termux/shared/shell/command/ExecutionCommand;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v5, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    .line 609
    invoke-virtual {v5}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const-string v8, "/data/data/com.termux/files/usr/bin/bash"

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    move-object v10, v0

    invoke-direct/range {v6 .. v13}, Lcom/termux/shared/shell/command/ExecutionCommand;-><init>(Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 610
    .local v4, "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    const-string v5, "APT Info Command"

    iput-object v5, v4, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 611
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    .line 612
    new-instance v17, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;

    invoke-direct/range {v17 .. v17}, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v16, 0x0

    move-object/from16 v14, p0

    move-object v15, v4

    invoke-static/range {v14 .. v19}, Lcom/termux/shared/shell/command/runner/app/AppShell;->execute(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;Lcom/termux/shared/shell/command/environment/IShellEnvironment;Ljava/util/HashMap;Z)Lcom/termux/shared/shell/command/runner/app/AppShell;

    move-result-object v5

    .line 613
    .local v5, "appShell":Lcom/termux/shared/shell/command/runner/app/AppShell;
    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/termux/shared/shell/command/ExecutionCommand;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v6, v6, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 618
    :cond_1
    iget-object v3, v4, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v3, v3, Lcom/termux/shared/shell/command/result/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 619
    invoke-virtual {v4}, Lcom/termux/shared/shell/command/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    .local v1, "markdownString":Ljava/lang/StringBuilder;
    const-string v3, "## "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "Termux"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " APT Info\n\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object v3, v4, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v3, v3, Lcom/termux/shared/shell/command/result/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    const-string v3, "\n##\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 614
    .end local v1    # "markdownString":Ljava/lang/StringBuilder;
    :cond_3
    :goto_0
    invoke-virtual {v4}, Lcom/termux/shared/shell/command/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return-object v3

    .line 601
    .end local v4    # "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    .end local v5    # "appShell":Lcom/termux/shared/shell/command/runner/app/AppShell;
    :cond_4
    :goto_1
    const-string v4, "The APT info script is null or empty"

    invoke-static {v1, v4}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-object v3

    .line 593
    .end local v0    # "aptInfoScript":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get APT info script: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    return-object v3
.end method

.method public static getAPKRelease(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "signingCertificateSHA256Digest"    # Ljava/lang/String;

    .line 702
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 704
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "F7A038EB551F1BE8FDF388686B784ABAB4552A5D82DF423E3D8F1B5CBE1C69AE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "738F0A30A04D3C8A1BE304AF18D0779BCF3EA88FB60808F657A3521861C2EBF9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "B6DA01480EEFD5FBF2CD3771B8D1021EC791304BDD6C4BF41D3FAABAD48EE5E1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "228FB2CFE90831C1499EC3CCAF61E96E8E1CE70766B9474672CE427334D41C42"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 714
    const-string v0, "Unknown"

    return-object v0

    .line 712
    :pswitch_0
    const-string v0, "Termux Devs"

    return-object v0

    .line 710
    :pswitch_1
    const-string v0, "Google Play Store"

    return-object v0

    .line 708
    :pswitch_2
    const-string v0, "Github"

    return-object v0

    .line 706
    :pswitch_3
    const-string v0, "F-Droid"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x51543647 -> :sswitch_3
        -0x3dd0a505 -> :sswitch_2
        -0x3828258c -> :sswitch_1
        0x3cc58cb7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAppInfoMarkdownString(Landroid/content/Context;Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;)Ljava/lang/String;
    .locals 1
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "appInfoMode"    # Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;

    .line 319
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppInfoMarkdownString(Landroid/content/Context;Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "appInfoMode"    # Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;
    .param p2, "callingPackageName"    # Ljava/lang/String;

    .line 336
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 338
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v1, "appInfo":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/termux/shared/termux/TermuxUtils$1;->$SwitchMap$com$termux$shared$termux$TermuxUtils$AppInfoMode:[I

    invoke-virtual {p1}, Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 383
    return-object v0

    .line 358
    :pswitch_0
    invoke-static {p0, v3}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-static {p2}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "callingPackageAppInfo":Ljava/lang/String;
    sget-object v2, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PLUGIN_APP_PACKAGE_NAMES_LIST:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    invoke-static {p0, p2}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 363
    .local v2, "termuxPluginAppContext":Landroid/content/Context;
    if-eqz v2, :cond_1

    .line 364
    invoke-static {v2, v3}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 366
    :cond_1
    invoke-static {p0, p2}, Lcom/termux/shared/android/AndroidUtils;->getAppInfoMarkdownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .end local v2    # "termuxPluginAppContext":Landroid/content/Context;
    :goto_0
    goto :goto_1

    .line 368
    :cond_2
    invoke-static {p0, p2}, Lcom/termux/shared/android/AndroidUtils;->getAppInfoMarkdownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    :goto_1
    if-eqz v0, :cond_3

    .line 372
    invoke-static {p0, p2}, Lcom/termux/shared/android/PackageUtils;->getApplicationInfoForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 373
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_3

    .line 374
    const-string v3, "\n\n## "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0, v2}, Lcom/termux/shared/android/PackageUtils;->getAppNameForPackage(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " App Info\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string v3, "\n##\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .end local v0    # "callingPackageAppInfo":Ljava/lang/String;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 355
    :pswitch_1
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPluginAppsInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :pswitch_2
    invoke-static {p0, v3}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPluginAppsInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "termuxPluginAppsInfo":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 351
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 344
    .end local v0    # "termuxPluginAppsInfo":Ljava/lang/String;
    :pswitch_3
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 341
    :pswitch_4
    invoke-static {p0, v3}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 10
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "returnTermuxPackageInfoToo"    # Z

    .line 432
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 438
    .local v1, "termuxPackageContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 439
    .local v2, "termuxPackageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 440
    .local v3, "termuxAppName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 441
    invoke-static {v1}, Lcom/termux/shared/android/PackageUtils;->getPackageNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-static {v1}, Lcom/termux/shared/android/PackageUtils;->getAppNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 445
    :cond_1
    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getPackageNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, "currentPackageName":Ljava/lang/String;
    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getAppNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 448
    .local v5, "currentAppName":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 451
    .local v6, "isTermuxPackage":Z
    :goto_0
    const-string v7, " App Info\n"

    const-string v8, "## "

    if-eqz p1, :cond_3

    if-nez v6, :cond_3

    .line 452
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " App Info (Current)\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 454
    :cond_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :goto_1
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownStringInner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v8, "\n##\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    if-nez v6, :cond_4

    .line 459
    const-string v9, "\n\n## "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-static {v1}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownStringInner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getAppInfoMarkdownStringInner(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/termux/shared/android/AndroidUtils;->getAppInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.termux"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    const-string v1, "TERMUX_APP_PACKAGE_MANAGER"

    sget-object v2, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_MANAGER:Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    invoke-static {v0, v1, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    const-string v1, "TERMUX_APP_PACKAGE_VARIANT"

    sget-object v2, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_VARIANT:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    invoke-static {v0, v1, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1, v1}, Lcom/termux/shared/termux/file/TermuxFileUtils;->isTermuxFilesDirectoryAccessible(Landroid/content/Context;ZZ)Lcom/termux/shared/errors/Error;

    move-result-object v1

    .line 486
    .local v1, "error":Lcom/termux/shared/errors/Error;
    if-eqz v1, :cond_1

    .line 487
    const-string v2, "TERMUX_FILES_DIR"

    const-string v3, "/data/data/com.termux/files"

    invoke-static {v0, v2, v3}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "false - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/termux/shared/errors/Error;->getMinimalErrorString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IS_TERMUX_FILES_DIR_ACCESSIBLE"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    :cond_1
    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getSigningCertificateSHA256DigestForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "signingCertificateSHA256Digest":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 493
    const-string v3, "APK_RELEASE"

    invoke-static {v2}, Lcom/termux/shared/termux/TermuxUtils;->getAPKRelease(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    const-string v3, "SIGNING_CERTIFICATE_SHA256_DIGEST"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 497
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getContextForPackageOrExitApp(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "exitAppOnError"    # Z

    .line 140
    const-string v0, "https://github.com/termux/termux-app"

    invoke-static {p0, p1, p2, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackageOrExitApp(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getImportantLinksMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 545
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 547
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    const-string v1, "## Important Links"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v1, "\n\n### GitHub\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "https://github.com/termux/termux-app"

    const-string v4, "Termux"

    invoke-static {v4, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Termux:API"

    const-string v6, "https://github.com/termux/termux-api"

    invoke-static {v5, v6}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Termux:Boot"

    const-string v6, "https://github.com/termux/termux-boot"

    invoke-static {v5, v6}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Termux:Float"

    const-string v6, "https://github.com/termux/termux-float"

    invoke-static {v5, v6}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Termux:Styling"

    const-string v6, "https://github.com/termux/termux-styling"

    invoke-static {v5, v6}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Termux:Tasker"

    const-string v6, "https://github.com/termux/termux-tasker"

    invoke-static {v5, v6}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Termux:Widget"

    const-string v6, "https://github.com/termux/termux-widget"

    invoke-static {v5, v6}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "https://github.com/termux/termux-packages"

    const-string v6, "termux-packages"

    invoke-static {v6, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string v2, "\n\n### Email\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "support@termux.dev"

    const-string v7, "mailto:support@termux.dev"

    invoke-static {v5, v7}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string v2, "\n\n### Reddit\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "r/termux"

    const-string v7, "https://www.reddit.com/r/termux"

    invoke-static {v5, v7}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const-string v2, "\n\n### Wiki\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Termux Wiki"

    const-string v7, "https://wiki.termux.com"

    invoke-static {v5, v7}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "https://github.com/termux/termux-app/wiki"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "https://github.com/termux/termux-packages/wiki"

    invoke-static {v6, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string v1, "\n##\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLogcatDumpMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .line 663
    const-string v0, "/system/bin/logcat -d -t 3000 2>&1"

    .line 667
    .local v0, "logcatScript":Ljava/lang/String;
    new-instance v9, Lcom/termux/shared/shell/command/ExecutionCommand;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "\n"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    .line 668
    invoke-virtual {v1}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const-string v3, "/system/bin/sh"

    const/4 v4, 0x0

    const-string v6, "/"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/termux/shared/shell/command/ExecutionCommand;-><init>(Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 669
    .local v1, "executionCommand":Lcom/termux/shared/shell/command/ExecutionCommand;
    const-string v2, "Logcat dump command"

    iput-object v2, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 670
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    .line 671
    new-instance v14, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;

    invoke-direct {v14}, Lcom/termux/shared/termux/shell/command/environment/TermuxShellEnvironment;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/4 v13, 0x0

    move-object/from16 v11, p0

    move-object v12, v1

    invoke-static/range {v11 .. v16}, Lcom/termux/shared/shell/command/runner/app/AppShell;->execute(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;Lcom/termux/shared/shell/command/runner/app/AppShell$AppShellClient;Lcom/termux/shared/shell/command/environment/IShellEnvironment;Ljava/util/HashMap;Z)Lcom/termux/shared/shell/command/runner/app/AppShell;

    move-result-object v2

    .line 672
    .local v2, "appShell":Lcom/termux/shared/shell/command/runner/app/AppShell;
    const-string v3, "TermuxUtils"

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/termux/shared/shell/command/ExecutionCommand;->isSuccessful()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 678
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    .local v4, "logcatOutput":Ljava/lang/StringBuilder;
    const-string v5, "$ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v6, v6, Lcom/termux/shared/shell/command/result/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    iget-object v5, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v5, v5, Lcom/termux/shared/shell/command/result/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 683
    .local v5, "stderrSet":Z
    iget-object v7, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v7, v7, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_1

    if-eqz v5, :cond_3

    .line 684
    :cond_1
    invoke-virtual {v1}, Lcom/termux/shared/shell/command/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    if-eqz v5, :cond_2

    .line 686
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v7, v7, Lcom/termux/shared/shell/command/result/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_2
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "exit code: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v1, Lcom/termux/shared/shell/command/ExecutionCommand;->resultData:Lcom/termux/shared/shell/command/result/ResultData;

    iget-object v7, v7, Lcom/termux/shared/shell/command/result/ResultData;->exitCode:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    .local v3, "markdownString":Ljava/lang/StringBuilder;
    const-string v7, "## Logcat Dump\n\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    const-string v7, "\n\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    const-string v6, "\n##\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 673
    .end local v3    # "markdownString":Ljava/lang/StringBuilder;
    .end local v4    # "logcatOutput":Ljava/lang/StringBuilder;
    .end local v5    # "stderrSet":Z
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lcom/termux/shared/shell/command/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getReportIssueMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 507
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    const-string v1, "## Where To Report An Issue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/termux/shared/R$string;->msg_report_issue:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "https://wiki.termux.com"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string v1, "\n\n### Email\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "support@termux.dev"

    const-string v4, "mailto:support@termux.dev"

    invoke-static {v3, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const-string v1, "\n\n### Reddit\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "r/termux"

    const-string v5, "https://www.reddit.com/r/termux"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string v1, "\n\n### GitHub Issues for Termux apps\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Termux"

    const-string v5, "https://github.com/termux/termux-app/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Termux:API"

    const-string v5, "https://github.com/termux/termux-api/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Termux:Boot"

    const-string v5, "https://github.com/termux/termux-boot/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Termux:Float"

    const-string v5, "https://github.com/termux/termux-float/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Termux:Styling"

    const-string v5, "https://github.com/termux/termux-styling/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Termux:Tasker"

    const-string v5, "https://github.com/termux/termux-tasker/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Termux:Widget"

    const-string v5, "https://github.com/termux/termux-widget/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string v1, "\n\n### GitHub Issues for Termux packages\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "termux-packages"

    const-string v4, "https://github.com/termux/termux-packages/issues"

    invoke-static {v2, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, "\n##\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTermuxAPIPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    const-string v0, "com.termux.api"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxAppAPKBuildConfigClassField(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 238
    const-string v0, "com.termux.BuildConfig"

    invoke-static {p0, v0, p1}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxAppAPKClassField(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxAppAPKClassField(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 263
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContextWithCode(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 264
    .local v1, "termuxPackageContext":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 265
    return-object v0

    .line 267
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 268
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, p2, v0}, Lcom/termux/shared/reflection/ReflectionUtils;->invokeField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;

    move-result-object v3

    iget-object v0, v3, Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 269
    .end local v1    # "termuxPackageContext":Landroid/content/Context;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" value from \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TermuxUtils"

    invoke-static {v3, v2, v1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    return-object v0
.end method

.method public static getTermuxAppPID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 727
    const-string v0, "com.termux"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getPackagePID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxBootPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 94
    const-string v0, "com.termux.boot"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxDebugMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 637
    invoke-static {p0}, Lcom/termux/shared/termux/file/TermuxFileUtils;->getTermuxFilesStatMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "statInfo":Ljava/lang/String;
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getLogcatDumpMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, "logcatInfo":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 642
    :cond_0
    if-eqz v0, :cond_1

    .line 643
    return-object v0

    .line 645
    :cond_1
    return-object v1
.end method

.method public static getTermuxFloatPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 104
    const-string v0, "com.termux.window"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    const-string v0, "com.termux"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxPackageContextWithCode(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 74
    const-string v0, "com.termux"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxPluginAppsInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "currentPackageContext"    # Landroid/content/Context;

    .line 395
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PLUGIN_APP_PACKAGE_NAMES_LIST:Ljava/util/List;

    .line 401
    .local v1, "termuxPluginAppPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 402
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 403
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 404
    .local v3, "termuxPluginAppPackageName":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    .line 406
    .local v4, "termuxPluginAppContext":Landroid/content/Context;
    if-eqz v4, :cond_2

    .line 407
    if-eqz v2, :cond_1

    .line 408
    const-string v5, "\n\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_1
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .end local v3    # "termuxPluginAppPackageName":Ljava/lang/String;
    .end local v4    # "termuxPluginAppContext":Landroid/content/Context;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 415
    const/4 v2, 0x0

    return-object v2

    .line 417
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTermuxStylingPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 114
    const-string v0, "com.termux.styling"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxTaskerPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 124
    const-string v0, "com.termux.tasker"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxWidgetPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 134
    const-string v0, "com.termux.widget"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static isTermuxAPIAppInstalled(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 180
    const-string v0, "Termux:API"

    const-string v1, "com.termux.api"

    invoke-static {p0, v0, v1}, Lcom/termux/shared/android/PackageUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isTermuxAppAccessible(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "currentPackageContext"    # Landroid/content/Context;

    .line 199
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->isTermuxAppInstalled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "errmsg":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 201
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    .line 203
    .local v3, "termuxPackageContext":Landroid/content/Context;
    if-nez v3, :cond_0

    .line 204
    sget v4, Lcom/termux/shared/R$string;->error_termux_app_package_context_not_accessible:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_0
    if-nez v0, :cond_1

    .line 208
    invoke-static {v2, v2}, Lcom/termux/shared/termux/file/TermuxFileUtils;->isTermuxPrefixDirectoryAccessible(ZZ)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 209
    .local v4, "error":Lcom/termux/shared/errors/Error;
    if-eqz v4, :cond_1

    .line 210
    sget v5, Lcom/termux/shared/R$string;->error_termux_prefix_dir_path_not_accessible:I

    .line 211
    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getAppNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v2

    .line 210
    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .end local v3    # "termuxPackageContext":Landroid/content/Context;
    .end local v4    # "error":Lcom/termux/shared/errors/Error;
    :cond_1
    if-eqz v0, :cond_2

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/termux/shared/R$string;->msg_termux_app_required_by_app:I

    .line 217
    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getAppNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    .line 216
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 219
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isTermuxAppInstalled(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 168
    const-string v0, "Termux"

    const-string v1, "com.termux"

    invoke-static {p0, v0, v1}, Lcom/termux/shared/android/PackageUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isUriDataForTermuxOrPluginPackage(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "data"    # Landroid/net/Uri;

    .line 279
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package:com.termux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package:com.termux."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 279
    :goto_1
    return v0
.end method

.method public static isUriDataForTermuxPluginPackage(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "data"    # Landroid/net/Uri;

    .line 285
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package:com.termux."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static sendTermuxOpenedBroadcast(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.termux.app.OPENED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "broadcast":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 300
    .local v1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 301
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 302
    .local v4, "explicitBroadcast":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .local v5, "cname":Landroid/content/ComponentName;
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "explicitBroadcast":Landroid/content/Intent;
    .end local v5    # "cname":Landroid/content/ComponentName;
    goto :goto_0

    .line 307
    :cond_0
    return-void
.end method

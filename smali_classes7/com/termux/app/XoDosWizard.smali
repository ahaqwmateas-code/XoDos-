.class public Lcom/termux/app/XoDosWizard;
.super Ljava/lang/Object;
.source "XoDosWizard.java"


# static fields
.field private static final HOME_PREFIX:Ljava/lang/String; = "/data/data/com.termux/files/home"

.field private static final PREF_FILE:Ljava/lang/String; = "com.termux_preferences"

.field private static final USR_PREFIX:Ljava/lang/String; = "/data/data/com.termux/files/usr"


# instance fields
.field private androidChoice:Ljava/lang/String;

.field private coresSpinner:Landroid/widget/Spinner;

.field private cpuChoice:Ljava/lang/String;

.field private driverChoice:Ljava/lang/String;

.field private driverSpinner:Landroid/widget/Spinner;

.field private dxvkChoice:Ljava/lang/String;

.field private dxvkSpinner:Landroid/widget/Spinner;

.field private final mActivity:Landroid/app/Activity;

.field private primaryCores:Ljava/lang/String;

.field private secondaryCores:Ljava/lang/String;

.field private wineChoice:Ljava/lang/String;

.field private winePrefixFromConf:Ljava/lang/String;

.field private wineSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/app/XoDosWizard;->primaryCores:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/termux/app/XoDosWizard;->secondaryCores:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/termux/app/XoDosWizard;->winePrefixFromConf:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    .line 56
    return-void
.end method

.method private ShowPhantomKillerWarning()V
    .locals 6

    .line 80
    iget-object v0, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    const-string v1, "com.termux_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "phantom_warning_shown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 83
    .local v2, "shown":Z
    if-nez v2, :cond_0

    .line 84
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    const v4, 0x7f120266

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 86
    const v4, 0x7f120265

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda0;-><init>(Lcom/termux/app/XoDosWizard;)V

    .line 87
    const v5, 0x7f12014f

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda1;-><init>(Lcom/termux/app/XoDosWizard;)V

    .line 90
    const v5, 0x7f120319

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda2;-><init>(Lcom/termux/app/XoDosWizard;)V

    .line 93
    const v5, 0x7f1203a8

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/termux/app/XoDosWizard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/XoDosWizard;

    .line 31
    iget-object v0, p0, Lcom/termux/app/XoDosWizard;->wineChoice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/termux/app/XoDosWizard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/XoDosWizard;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/termux/app/XoDosWizard;->wineChoice:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/termux/app/XoDosWizard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/XoDosWizard;

    .line 31
    iget-object v0, p0, Lcom/termux/app/XoDosWizard;->dxvkChoice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/termux/app/XoDosWizard;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/XoDosWizard;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/termux/app/XoDosWizard;->loadDxvkListForWine(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/termux/app/XoDosWizard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/XoDosWizard;

    .line 31
    iget-object v0, p0, Lcom/termux/app/XoDosWizard;->driverChoice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/termux/app/XoDosWizard;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/XoDosWizard;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/termux/app/XoDosWizard;->loadDriverListForWine(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/termux/app/XoDosWizard;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/XoDosWizard;

    .line 31
    invoke-direct {p0}, Lcom/termux/app/XoDosWizard;->loadWinePathConf()V

    return-void
.end method

.method static synthetic access$600(Lcom/termux/app/XoDosWizard;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/XoDosWizard;
    .param p1, "x1"    # Landroid/widget/Spinner;
    .param p2, "x2"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/termux/app/XoDosWizard;->setSpinnerSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private detectAndroidVersion(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "androidVersionLabel"    # Landroid/widget/TextView;

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    .local v0, "sdkInt":I
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 68
    .local v1, "release":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (SDK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    .line 72
    const-string v2, "above11"

    iput-object v2, p0, Lcom/termux/app/XoDosWizard;->androidChoice:Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lcom/termux/app/XoDosWizard;->ShowPhantomKillerWarning()V

    goto :goto_0

    .line 75
    :cond_0
    const-string v2, "under 11"

    iput-object v2, p0, Lcom/termux/app/XoDosWizard;->androidChoice:Ljava/lang/String;

    .line 77
    :goto_0
    return-void
.end method

.method private detectCpu()V
    .locals 8

    .line 117
    const-string v0, "mediatek"

    const-string v1, "exynos"

    const-string v2, "qualcomm"

    const-string v3, "snapdragon"

    const-string v4, "other"

    iput-object v4, p0, Lcom/termux/app/XoDosWizard;->cpuChoice:Ljava/lang/String;

    .line 119
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v4, "br":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 122
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, "hardware"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 123
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, "implementer"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 124
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, "vendor"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 127
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 131
    iput-object v1, p0, Lcom/termux/app/XoDosWizard;->cpuChoice:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    return-void

    .line 133
    :cond_3
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    iput-object v0, p0, Lcom/termux/app/XoDosWizard;->cpuChoice:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 135
    return-void

    .line 128
    :cond_4
    :goto_0
    :try_start_5
    iput-object v3, p0, Lcom/termux/app/XoDosWizard;->cpuChoice:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 139
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 129
    return-void

    .line 139
    .end local v6    # "line":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 119
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 139
    .end local v4    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 141
    :goto_2
    :try_start_9
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v4, "/proc/device-tree/model"

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 143
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_6
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .local v4, "line":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 145
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 146
    :cond_7
    iput-object v3, p0, Lcom/termux/app/XoDosWizard;->cpuChoice:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 150
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 147
    return-void

    .line 150
    .end local v4    # "line":Ljava/lang/String;
    :cond_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    .line 141
    :catchall_2
    move-exception v1

    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    .line 150
    .end local v0    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 152
    :goto_4
    const-string v0, "os.arch"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "arch":Ljava/lang/String;
    return-void
.end method

.method private execShell(Ljava/lang/String;)V
    .locals 9
    .param p1, "cmd"    # Ljava/lang/String;

    .line 375
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "sh"

    const-string v2, "-c"

    filled-new-array {v1, v2, p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 378
    .local v0, "process":Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 379
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 380
    .local v1, "stdInput":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 381
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 384
    .local v2, "stdError":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v3, "output":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v4, "error":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v5

    .local v6, "s":Ljava/lang/String;
    const-string v7, "\n"

    if-eqz v5, :cond_0

    .line 388
    :try_start_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 391
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    if-eqz v5, :cond_1

    .line 392
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 395
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 398
    const-string v5, "ShellCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Output: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 408
    nop

    .end local v0    # "process":Ljava/lang/Process;
    .end local v1    # "stdInput":Ljava/io/BufferedReader;
    .end local v2    # "stdError":Ljava/io/BufferedReader;
    .end local v3    # "output":Ljava/lang/StringBuilder;
    .end local v4    # "error":Ljava/lang/StringBuilder;
    .end local v6    # "s":Ljava/lang/String;
    goto :goto_3

    .line 405
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 409
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private extractArchives()V
    .locals 9

    .line 350
    iget-object v0, p0, Lcom/termux/app/XoDosWizard;->dxvkChoice:Ljava/lang/String;

    const-string v1, "<none>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "\' -y"

    const-string v3, "\' -o\'"

    const-string v4, "/data/data/com.termux/files/usr/bin/7z x \'"

    const-string v5, "glibc"

    if-nez v0, :cond_2

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.termux/files/usr/glibc/opt/libs/d3d/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/termux/app/XoDosWizard;->dxvkChoice:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "dxvkSrc":Ljava/lang/String;
    iget-object v6, p0, Lcom/termux/app/XoDosWizard;->wineChoice:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "/data/data/com.termux/files/home/.wine"

    if-eqz v6, :cond_0

    .line 353
    iget-object v6, p0, Lcom/termux/app/XoDosWizard;->winePrefixFromConf:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/termux/app/XoDosWizard;->winePrefixFromConf:Ljava/lang/String;

    goto :goto_0

    .line 354
    :cond_0
    nop

    :cond_1
    :goto_0
    move-object v6, v7

    .line 355
    .local v6, "winePrefix":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/drive_c/windows"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 356
    .local v7, "dxvkExtractPath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/termux/app/XoDosWizard;->execShell(Ljava/lang/String;)V

    .line 359
    .end local v0    # "dxvkSrc":Ljava/lang/String;
    .end local v6    # "winePrefix":Ljava/lang/String;
    .end local v7    # "dxvkExtractPath":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/termux/app/XoDosWizard;->driverChoice:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 362
    iget-object v0, p0, Lcom/termux/app/XoDosWizard;->wineChoice:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.termux/files/usr/glibc/opt/libs/mesa/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosWizard;->driverChoice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "driverSrc":Ljava/lang/String;
    const-string v1, "/data/data/com.termux/files/usr/glibc"

    .local v1, "driverExtractPath":Ljava/lang/String;
    goto :goto_1

    .line 366
    .end local v0    # "driverSrc":Ljava/lang/String;
    .end local v1    # "driverExtractPath":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.termux/files/usr/drivers/25/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/XoDosWizard;->driverChoice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    .restart local v0    # "driverSrc":Ljava/lang/String;
    const-string v1, "/data/data/com.termux/files/usr/drivers/mesa-242"

    .line 369
    .restart local v1    # "driverExtractPath":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/termux/app/XoDosWizard;->execShell(Ljava/lang/String;)V

    .line 371
    .end local v0    # "driverSrc":Ljava/lang/String;
    .end local v1    # "driverExtractPath":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private getCoreSelectionIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "primary"    # Ljava/lang/String;
    .param p2, "secondary"    # Ljava/lang/String;

    .line 329
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    .line 330
    :cond_0
    const-string v1, "6-7"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0-5"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 331
    :cond_1
    const-string v1, "5-7"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "0-4"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    return v0

    .line 332
    :cond_2
    const-string v1, "4-7"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "0-3"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    return v0

    .line 333
    :cond_3
    const-string v1, "3-7"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "0-2"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    return v0

    .line 334
    :cond_4
    const-string v1, "2-7"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "0-1"

    if-eqz v1, :cond_5

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x5

    return v0

    .line 335
    :cond_5
    const-string v1, "1-7"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x6

    return v0

    .line 336
    :cond_6
    const-string v1, "0-7"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x7

    return v0

    .line 337
    :cond_7
    return v0
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

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 527
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 528
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

    .line 529
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    .end local v4    # "f":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 533
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "<none>"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_3
    return-object v0
.end method

.method private loadDriverListForWine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "wineType"    # Ljava/lang/String;
    .param p2, "selectIfFound"    # Ljava/lang/String;

    .line 515
    const-string v0, "glibc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/glibc/opt/libs/mesa"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "driverDir":Ljava/io/File;
    goto :goto_0

    .line 518
    .end local v0    # "driverDir":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/drivers/25"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 520
    .restart local v0    # "driverDir":Ljava/io/File;
    :goto_0
    invoke-direct {p0, v0}, Lcom/termux/app/XoDosWizard;->listArchiveFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 521
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/termux/app/XoDosWizard;->driverSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v2, v1, p2}, Lcom/termux/app/XoDosWizard;->updateSpinner(Landroid/widget/Spinner;Ljava/util/List;Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method private loadDxvkListForWine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "wineType"    # Ljava/lang/String;
    .param p2, "selectIfFound"    # Ljava/lang/String;

    .line 508
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/glibc/opt/libs/d3d"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v0, "dxvkDir":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/termux/app/XoDosWizard;->listArchiveFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 510
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/termux/app/XoDosWizard;->dxvkSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v2, v1, p2}, Lcom/termux/app/XoDosWizard;->updateSpinner(Landroid/widget/Spinner;Ljava/util/List;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method private loadWinePathConf()V
    .locals 8

    .line 487
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/glibc/opt/conf/wine_path.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 490
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .local v2, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 493
    const-string v3, "export WINEPREFIX="

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 494
    const-string v3, "="

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, "parts":[Ljava/lang/String;
    array-length v6, v3

    if-ne v6, v5, :cond_2

    .line 496
    aget-object v5, v3, v1

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/termux/app/XoDosWizard;->winePrefixFromConf:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 500
    .end local v4    # "line":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 504
    .end local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 490
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "confFile":Ljava/io/File;
    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 500
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "confFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 501
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    .line 502
    const v5, 0x7f120118

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 501
    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 503
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 505
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 107
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    .line 111
    const v3, 0x7f120082

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private performRestartSequence()V
    .locals 5

    .line 414
    const-string v0, "echo \' stopping wine execution\'"

    invoke-direct {p0, v0}, Lcom/termux/app/XoDosWizard;->execShell(Ljava/lang/String;)V

    .line 417
    const-string v0, "/data/data/com.termux/files/usr/bin/box64 /data/data/com.termux/files/usr/opt/wine/bin/wineserver -k"

    const-string v1, "pkill -f \"termux.x11\""

    const-string v2, "/data/data/com.termux/files/usr/glibc/bin/box64 /data/data/com.termux/files/usr/glibc/bin/wineserver -k"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "commands":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 424
    .local v4, "cmd":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/termux/app/XoDosWizard;->execShell(Ljava/lang/String;)V

    .line 423
    .end local v4    # "cmd":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    const v3, 0x7f12039c

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 427
    return-void
.end method

.method private requiresDriverRestart(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "oldDriver"    # Ljava/lang/String;
    .param p2, "newDriver"    # Ljava/lang/String;

    .line 341
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "turnip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 343
    .local v1, "oldIsTurnip":Z
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 344
    .local v2, "newIsTurnip":Z
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "virgl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 345
    .local v3, "oldIsVirgl":Z
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 346
    .local v4, "newIsVirgl":Z
    if-eqz v1, :cond_1

    if-nez v4, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    .line 341
    .end local v1    # "oldIsTurnip":Z
    .end local v2    # "newIsTurnip":Z
    .end local v3    # "oldIsVirgl":Z
    .end local v4    # "newIsVirgl":Z
    :cond_4
    :goto_0
    return v0
.end method

.method private saveConfigFile()V
    .locals 10

    .line 433
    const-string v0, "glibc"

    const-string v1, "\n"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/com.termux/files/usr/glibc/opt/libs/d3d/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/app/XoDosWizard;->dxvkChoice:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "dxvkSrc":Ljava/lang/String;
    iget-object v3, p0, Lcom/termux/app/XoDosWizard;->wineChoice:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "/drive_c/windows"

    if-eqz v3, :cond_1

    .line 440
    :try_start_1
    iget-object v3, p0, Lcom/termux/app/XoDosWizard;->winePrefixFromConf:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/termux/app/XoDosWizard;->winePrefixFromConf:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, "$WINEPREFIX"

    .line 441
    .local v3, "winePrefix":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "dxvkExtractPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.termux/files/usr/glibc/opt/libs/mesa/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/termux/app/XoDosWizard;->driverChoice:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 443
    .local v5, "driverSrc":Ljava/lang/String;
    const-string v6, "/data/data/com.termux/files/usr/glibc"

    .local v6, "driverExtractPath":Ljava/lang/String;
    goto :goto_1

    .line 445
    .end local v3    # "winePrefix":Ljava/lang/String;
    .end local v4    # "dxvkExtractPath":Ljava/lang/String;
    .end local v5    # "driverSrc":Ljava/lang/String;
    .end local v6    # "driverExtractPath":Ljava/lang/String;
    :cond_1
    const-string v3, "/data/data/com.termux/files/home/.wine"

    .line 446
    .restart local v3    # "winePrefix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 447
    .restart local v4    # "dxvkExtractPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.termux/files/usr/drivers/25/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/termux/app/XoDosWizard;->driverChoice:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 448
    .restart local v5    # "driverSrc":Ljava/lang/String;
    const-string v6, "/data/data/com.termux/files/usr/drivers/mesa-242"

    .line 451
    .restart local v6    # "driverExtractPath":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/io/FileWriter;

    const-string v8, "/data/data/com.termux/files/home/xodwine.cfg"

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 452
    .local v7, "w":Ljava/io/FileWriter;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ANDROID_VERSION="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/termux/app/XoDosWizard;->androidChoice:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 453
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CPU="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/termux/app/XoDosWizard;->cpuChoice:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 454
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WINE_TYPE="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/termux/app/XoDosWizard;->wineChoice:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 455
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DXVK_FILE="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/termux/app/XoDosWizard;->dxvkChoice:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 456
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DXVK_SRC="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 457
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DXVK_EXTRACT_PATH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 458
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DRIVER_FILE="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/termux/app/XoDosWizard;->driverChoice:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 459
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DRIVER_SRC="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 460
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DRIVER_EXTRACT_PATH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 461
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WINEPREFIX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 463
    iget-object v8, p0, Lcom/termux/app/XoDosWizard;->primaryCores:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/termux/app/XoDosWizard;->secondaryCores:Ljava/lang/String;

    if-nez v8, :cond_2

    goto :goto_2

    .line 467
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PRIMARY_CORES="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/termux/app/XoDosWizard;->primaryCores:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 468
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SECONDARY_CORES="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/termux/app/XoDosWizard;->secondaryCores:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 464
    :cond_3
    :goto_2
    const-string v1, "unset PRIMARY_CORES\n"

    invoke-virtual {v7, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 465
    const-string v1, "unset SECONDARY_CORES\n"

    invoke-virtual {v7, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 471
    :goto_3
    iget-object v1, p0, Lcom/termux/app/XoDosWizard;->wineChoice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 472
    const-string v0, "SOURCE_CONFIG=1\n"

    invoke-virtual {v7, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 473
    const-string v0, "CONFIG_SCRIPT=/data/data/com.termux/files/usr/glibc/opt/scripts/configs\n"

    invoke-virtual {v7, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 475
    :cond_4
    const-string v0, "SOURCE_CONFIG=0\n"

    invoke-virtual {v7, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 478
    :goto_4
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 483
    .end local v2    # "dxvkSrc":Ljava/lang/String;
    .end local v3    # "winePrefix":Ljava/lang/String;
    .end local v4    # "dxvkExtractPath":Ljava/lang/String;
    .end local v5    # "driverSrc":Ljava/lang/String;
    .end local v6    # "driverExtractPath":Ljava/lang/String;
    .end local v7    # "w":Ljava/io/FileWriter;
    goto :goto_5

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    .line 481
    const v3, 0x7f12011e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 482
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 484
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    return-void
.end method

.method private setSpinnerSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 318
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 319
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 320
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 322
    return-void

    .line 319
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private showUnifiedDialog()V
    .locals 14

    .line 164
    invoke-direct {p0}, Lcom/termux/app/XoDosWizard;->detectCpu()V

    .line 165
    iget-object v0, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 166
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0c00db

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, "dialogView":Landroid/view/View;
    const v3, 0x7f090108

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 169
    .local v3, "androidVersionLabel":Landroid/widget/TextView;
    invoke-direct {p0, v3}, Lcom/termux/app/XoDosWizard;->detectAndroidVersion(Landroid/widget/TextView;)V

    .line 170
    const v4, 0x7f090157

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 171
    .local v4, "cpuLabel":Landroid/widget/TextView;
    const v5, 0x7f090339

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/termux/app/XoDosWizard;->wineSpinner:Landroid/widget/Spinner;

    .line 172
    const v5, 0x7f090184

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/termux/app/XoDosWizard;->dxvkSpinner:Landroid/widget/Spinner;

    .line 173
    const v5, 0x7f090182

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/termux/app/XoDosWizard;->driverSpinner:Landroid/widget/Spinner;

    .line 174
    const v5, 0x7f090154

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/termux/app/XoDosWizard;->coresSpinner:Landroid/widget/Spinner;

    .line 179
    iget-object v5, p0, Lcom/termux/app/XoDosWizard;->cpuChoice:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v5, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    const-string v6, "com.termux_preferences"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 184
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "WINE_TYPE"

    const-string v7, "glibc"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/termux/app/XoDosWizard;->wineChoice:Ljava/lang/String;

    .line 185
    const-string v6, "DXVK_FILE"

    const-string v8, "<none>"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/termux/app/XoDosWizard;->dxvkChoice:Ljava/lang/String;

    .line 186
    const-string v6, "DRIVER_FILE"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/termux/app/XoDosWizard;->driverChoice:Ljava/lang/String;

    .line 187
    const-string v6, "PRIMARY_CORES"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/termux/app/XoDosWizard;->primaryCores:Ljava/lang/String;

    .line 188
    const-string v6, "SECONDARY_CORES"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/termux/app/XoDosWizard;->secondaryCores:Ljava/lang/String;

    .line 191
    iget-object v6, p0, Lcom/termux/app/XoDosWizard;->wineChoice:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/termux/app/XoDosWizard;->loadWinePathConf()V

    .line 196
    :cond_0
    iget-object v6, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f03001d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, "wineOptions":[Ljava/lang/String;
    new-instance v7, Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0c0039

    invoke-direct {v7, v8, v9, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 199
    .local v7, "wineAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x7f0c0038

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 200
    iget-object v10, p0, Lcom/termux/app/XoDosWizard;->wineSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 201
    iget-object v10, p0, Lcom/termux/app/XoDosWizard;->wineSpinner:Landroid/widget/Spinner;

    iget-object v11, p0, Lcom/termux/app/XoDosWizard;->wineChoice:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/termux/app/XoDosWizard;->setSpinnerSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 204
    iget-object v10, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f030004

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 205
    .local v10, "coreOptions":[Ljava/lang/String;
    new-instance v11, Landroid/widget/ArrayAdapter;

    iget-object v12, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v12, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object v9, v11

    .line 207
    .local v9, "coresAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v9, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 208
    iget-object v8, p0, Lcom/termux/app/XoDosWizard;->coresSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 209
    iget-object v8, p0, Lcom/termux/app/XoDosWizard;->primaryCores:Ljava/lang/String;

    iget-object v11, p0, Lcom/termux/app/XoDosWizard;->secondaryCores:Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Lcom/termux/app/XoDosWizard;->getCoreSelectionIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 210
    .local v8, "coreSelection":I
    iget-object v11, p0, Lcom/termux/app/XoDosWizard;->coresSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 213
    new-instance v11, Lcom/termux/app/XoDosWizard$1;

    invoke-direct {v11, p0}, Lcom/termux/app/XoDosWizard$1;-><init>(Lcom/termux/app/XoDosWizard;)V

    invoke-virtual {v1, v11}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 221
    iget-object v11, p0, Lcom/termux/app/XoDosWizard;->wineSpinner:Landroid/widget/Spinner;

    new-instance v12, Lcom/termux/app/XoDosWizard$2;

    invoke-direct {v12, p0, v6}, Lcom/termux/app/XoDosWizard$2;-><init>(Lcom/termux/app/XoDosWizard;[Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 237
    new-instance v11, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    const v12, 0x7f1203a4

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 239
    invoke-virtual {v11, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    new-instance v12, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda5;

    invoke-direct {v12, p0, v5}, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda5;-><init>(Lcom/termux/app/XoDosWizard;Landroid/content/SharedPreferences;)V

    .line 240
    const v13, 0x7f120243

    invoke-virtual {v11, v13, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 312
    const v12, 0x7f12008e

    invoke-virtual {v11, v12, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 313
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 314
    return-void
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

    .line 538
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0039

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 540
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 541
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 544
    new-instance v1, Lcom/termux/app/XoDosWizard$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/termux/app/XoDosWizard$3;-><init>(Lcom/termux/app/XoDosWizard;Landroid/widget/Spinner;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 550
    return-void
.end method


# virtual methods
.method synthetic lambda$ShowPhantomKillerWarning$0$com-termux-app-XoDosWizard(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 88
    const-string v0, "https://github.com/xodiosx/XoDos"

    invoke-direct {p0, v0}, Lcom/termux/app/XoDosWizard;->openUrl(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method synthetic lambda$ShowPhantomKillerWarning$1$com-termux-app-XoDosWizard(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 91
    const-string v0, "https://t.me/xodemulatorr/3331"

    invoke-direct {p0, v0}, Lcom/termux/app/XoDosWizard;->openUrl(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method synthetic lambda$ShowPhantomKillerWarning$2$com-termux-app-XoDosWizard(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 94
    const-string v0, "https://youtube.com/shorts/5vOUHn_qvis?si=uMjNpyOVPC6PmPP7"

    invoke-direct {p0, v0}, Lcom/termux/app/XoDosWizard;->openUrl(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method synthetic lambda$showUnifiedDialog$3$com-termux-app-XoDosWizard(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 299
    invoke-direct {p0}, Lcom/termux/app/XoDosWizard;->extractArchives()V

    .line 300
    invoke-direct {p0}, Lcom/termux/app/XoDosWizard;->performRestartSequence()V

    .line 301
    return-void
.end method

.method synthetic lambda$showUnifiedDialog$4$com-termux-app-XoDosWizard(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 303
    invoke-direct {p0}, Lcom/termux/app/XoDosWizard;->extractArchives()V

    .line 304
    return-void
.end method

.method synthetic lambda$showUnifiedDialog$5$com-termux-app-XoDosWizard(Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 241
    iget-object v0, p0, Lcom/termux/app/XoDosWizard;->wineSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/XoDosWizard;->wineChoice:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/termux/app/XoDosWizard;->dxvkSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/XoDosWizard;->dxvkChoice:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/termux/app/XoDosWizard;->driverSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/XoDosWizard;->driverChoice:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/termux/app/XoDosWizard;->coresSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 245
    .local v0, "chosenCoresIndex":I
    const-string v1, "<none>"

    const-string v2, "DRIVER_FILE"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "previousDriver":Ljava/lang/String;
    const-string v3, "0-1"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 278
    :pswitch_0
    const-string v4, "0-7"

    iput-object v4, p0, Lcom/termux/app/XoDosWizard;->primaryCores:Ljava/lang/String;

    .line 279
    iput-object v3, p0, Lcom/termux/app/XoDosWizard;->secondaryCores:Ljava/lang/String;

    goto :goto_0

    .line 274
    :pswitch_1
    const-string v4, "1-7"

    iput-object v4, p0, Lcom/termux/app/XoDosWizard;->primaryCores:Ljava/lang/String;

    .line 275
    iput-object v3, p0, Lcom/termux/app/XoDosWizard;->secondaryCores:Ljava/lang/String;

    .line 276
    goto :goto_0

    .line 270
    :pswitch_2
    const-string v4, "2-7"

    iput-object v4, p0, Lcom/termux/app/XoDosWizard;->primaryCores:Ljava/lang/String;

    .line 271
    iput-object v3, p0, Lcom/termux/app/XoDosWizard;->secondaryCores:Ljava/lang/String;

    .line 272
    goto :goto_0

    .line 266
    :pswitch_3
    const-string v3, "3-7"

    iput-object v3, p0, Lcom/termux/app/XoDosWizard;->primaryCores:Ljava/lang/String;

    .line 267
    const-string v3, "0-2"

    iput-object v3, p0, Lcom/termux/app/XoDosWizard;->secondaryCores:Ljava/lang/String;

    .line 268
    goto :goto_0

    .line 262
    :pswitch_4
    const-string v3, "4-7"

    iput-object v3, p0, Lcom/termux/app/XoDosWizard;->primaryCores:Ljava/lang/String;

    .line 263
    const-string v3, "0-3"

    iput-object v3, p0, Lcom/termux/app/XoDosWizard;->secondaryCores:Ljava/lang/String;

    .line 264
    goto :goto_0

    .line 258
    :pswitch_5
    const-string v3, "5-7"

    iput-object v3, p0, Lcom/termux/app/XoDosWizard;->primaryCores:Ljava/lang/String;

    .line 259
    const-string v3, "0-4"

    iput-object v3, p0, Lcom/termux/app/XoDosWizard;->secondaryCores:Ljava/lang/String;

    .line 260
    goto :goto_0

    .line 254
    :pswitch_6
    const-string v3, "6-7"

    iput-object v3, p0, Lcom/termux/app/XoDosWizard;->primaryCores:Ljava/lang/String;

    .line 255
    const-string v3, "0-5"

    iput-object v3, p0, Lcom/termux/app/XoDosWizard;->secondaryCores:Ljava/lang/String;

    .line 256
    goto :goto_0

    .line 250
    :pswitch_7
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/termux/app/XoDosWizard;->primaryCores:Ljava/lang/String;

    .line 251
    iput-object v3, p0, Lcom/termux/app/XoDosWizard;->secondaryCores:Ljava/lang/String;

    .line 252
    nop

    .line 284
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 285
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "WINE_TYPE"

    iget-object v5, p0, Lcom/termux/app/XoDosWizard;->wineChoice:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    const-string v4, "DXVK_FILE"

    iget-object v5, p0, Lcom/termux/app/XoDosWizard;->dxvkChoice:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    iget-object v4, p0, Lcom/termux/app/XoDosWizard;->driverChoice:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    const-string v2, "PRIMARY_CORES"

    iget-object v4, p0, Lcom/termux/app/XoDosWizard;->primaryCores:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    const-string v2, "SECONDARY_CORES"

    iget-object v4, p0, Lcom/termux/app/XoDosWizard;->secondaryCores:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 292
    invoke-direct {p0}, Lcom/termux/app/XoDosWizard;->saveConfigFile()V

    .line 294
    iget-object v2, p0, Lcom/termux/app/XoDosWizard;->driverChoice:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/termux/app/XoDosWizard;->requiresDriverRestart(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 296
    const v4, 0x7f1202d9

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 297
    const v4, 0x7f1202d8

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda3;-><init>(Lcom/termux/app/XoDosWizard;)V

    .line 298
    const v5, 0x7f120243

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/termux/app/XoDosWizard$$ExternalSyntheticLambda4;-><init>(Lcom/termux/app/XoDosWizard;)V

    .line 302
    const v5, 0x7f12008e

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 305
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/termux/app/XoDosWizard;->extractArchives()V

    .line 310
    :goto_1
    iget-object v2, p0, Lcom/termux/app/XoDosWizard;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1202fb

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 311
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
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

    .line 60
    invoke-direct {p0}, Lcom/termux/app/XoDosWizard;->showUnifiedDialog()V

    .line 61
    return-void
.end method

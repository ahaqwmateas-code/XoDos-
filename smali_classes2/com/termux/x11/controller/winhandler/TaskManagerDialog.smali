.class public Lcom/termux/x11/controller/winhandler/TaskManagerDialog;
.super Lcom/termux/x11/controller/contentdialog/ContentDialog;
.source "TaskManagerDialog.java"

# interfaces
.implements Lcom/termux/x11/controller/winhandler/OnGetProcessInfoListener;


# instance fields
.field private final activity:Lcom/termux/x11/MainActivity;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final lock:Ljava/lang/Object;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/termux/x11/MainActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/termux/x11/MainActivity;

    .line 34
    sget v0, Lcom/termux/x11/R$layout;->task_manager_dialog:I

    invoke-direct {p0, p1, v0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->lock:Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->activity:Lcom/termux/x11/MainActivity;

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->setCancelable(Z)V

    .line 37
    sget v0, Lcom/termux/x11/R$string;->task_manager:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->setTitle(I)V

    .line 38
    sget v0, Lcom/termux/x11/R$drawable;->icon_task_manager:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->setIcon(I)V

    .line 40
    sget v0, Lcom/termux/x11/R$id;->BTCancel:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 41
    .local v0, "cancelButton":Landroid/widget/Button;
    sget v1, Lcom/termux/x11/R$string;->new_task:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 42
    new-instance v1, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;Lcom/termux/x11/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance v1, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda5;-><init>(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;Lcom/termux/x11/MainActivity;)V

    invoke-virtual {p0, v1}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->inflater:Landroid/view/LayoutInflater;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;)Lcom/termux/x11/MainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

    .line 27
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->activity:Lcom/termux/x11/MainActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

    .line 27
    invoke-direct {p0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->update()V

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/termux/x11/MainActivity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Lcom/termux/x11/MainActivity;
    .param p1, "command"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getWinHandler()Lcom/termux/x11/controller/winhandler/WinHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/x11/controller/winhandler/WinHandler;->exec(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showListItemMenu$3(Lcom/termux/x11/controller/winhandler/WinHandler;Lcom/termux/x11/controller/winhandler/ProcessInfo;)V
    .locals 1
    .param p0, "winHandler"    # Lcom/termux/x11/controller/winhandler/WinHandler;
    .param p1, "processInfo"    # Lcom/termux/x11/controller/winhandler/ProcessInfo;

    .line 113
    iget-object v0, p1, Lcom/termux/x11/controller/winhandler/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->killProcess(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private listAndroidProcess()V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->activity:Lcom/termux/x11/MainActivity;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/termux/x11/MainActivity;->getTermuxProcessorInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "processInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/termux/x11/controller/winhandler/ProcessInfo;>;"
    if-nez v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x0

    .line 84
    .local v1, "idx":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/termux/x11/controller/winhandler/ProcessInfo;

    .line 85
    .local v3, "processInfo":Lcom/termux/x11/controller/winhandler/ProcessInfo;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v1, v4, v3}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->onGetProcessInfo(IILcom/termux/x11/controller/winhandler/ProcessInfo;)V

    .line 86
    nop

    .end local v3    # "processInfo":Lcom/termux/x11/controller/winhandler/ProcessInfo;
    add-int/lit8 v1, v1, 0x1

    .line 87
    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method private showListItemMenu(Landroid/view/View;Lcom/termux/x11/controller/winhandler/ProcessInfo;)V
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "processInfo"    # Lcom/termux/x11/controller/winhandler/ProcessInfo;

    .line 99
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->activity:Lcom/termux/x11/MainActivity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 100
    .local v0, "listItemMenu":Landroid/widget/PopupMenu;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setForceShowIcon(Z)V

    .line 102
    :cond_0
    sget v1, Lcom/termux/x11/R$menu;->process_popup_menu:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 103
    new-instance v1, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;Lcom/termux/x11/controller/winhandler/ProcessInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 118
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 119
    return-void
.end method

.method private showProcessorAffinityDialog(Lcom/termux/x11/controller/winhandler/ProcessInfo;)V
    .locals 3
    .param p1, "processInfo"    # Lcom/termux/x11/controller/winhandler/ProcessInfo;

    .line 122
    new-instance v0, Lcom/termux/x11/controller/contentdialog/ContentDialog;

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->activity:Lcom/termux/x11/MainActivity;

    sget v2, Lcom/termux/x11/R$layout;->cpu_list_dialog:I

    invoke-direct {v0, v1, v2}, Lcom/termux/x11/controller/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 123
    .local v0, "dialog":Lcom/termux/x11/controller/contentdialog/ContentDialog;
    iget-object v1, p1, Lcom/termux/x11/controller/winhandler/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 124
    sget v1, Lcom/termux/x11/R$drawable;->icon_cpu:I

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->setIcon(I)V

    .line 125
    sget v1, Lcom/termux/x11/R$id;->CPUListView:I

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/widget/CPUListView;

    .line 126
    .local v1, "cpuListView":Lcom/termux/x11/controller/widget/CPUListView;
    invoke-virtual {p1}, Lcom/termux/x11/controller/winhandler/ProcessInfo;->getCPUList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/termux/x11/controller/widget/CPUListView;->setCheckedCPUList(Ljava/lang/String;)V

    .line 127
    new-instance v2, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;Lcom/termux/x11/controller/winhandler/ProcessInfo;Lcom/termux/x11/controller/widget/CPUListView;)V

    invoke-virtual {v0, v2}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->show()V

    .line 133
    return-void
.end method

.method private update()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->activity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->getWinHandler()Lcom/termux/x11/controller/winhandler/WinHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/controller/winhandler/WinHandler;->listProcesses()V

    .line 64
    sget v1, Lcom/termux/x11/R$id;->LLProcessList:I

    invoke-virtual {p0, v1}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 65
    .local v1, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->listAndroidProcess()V

    .line 67
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 68
    sget v2, Lcom/termux/x11/R$id;->TVEmptyText:I

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .end local v1    # "container":Landroid/widget/LinearLayout;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-direct {p0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->updateCPUInfoView()V

    .line 75
    invoke-direct {p0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->updateMemoryInfoView()V

    .line 76
    return-void

    .line 72
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateCPUInfoView()V
    .locals 9

    .line 186
    sget v0, Lcom/termux/x11/R$id;->LLCPUInfo:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 187
    .local v0, "llCPUInfo":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 188
    invoke-static {}, Lcom/termux/x11/controller/core/CPUStatus;->getCurrentClockSpeeds()[S

    move-result-object v1

    .line 189
    .local v1, "clockSpeeds":[S
    const/4 v2, 0x0

    .line 190
    .local v2, "totalClockSpeed":I
    const/4 v3, 0x0

    .line 192
    .local v3, "maxClockSpeed":S
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 193
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->activity:Lcom/termux/x11/MainActivity;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 194
    .local v5, "textView":Landroid/widget/TextView;
    const/high16 v6, 0x41600000    # 14.0f

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 195
    invoke-static {v4}, Lcom/termux/x11/controller/core/CPUStatus;->getMaxClockSpeed(I)S

    move-result v6

    .line 196
    .local v6, "clockSpeed":S
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-short v8, v1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MHz"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    aget-short v7, v1, v4

    add-int/2addr v2, v7

    .line 199
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-short v3, v7

    .line 192
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "clockSpeed":S
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    .end local v4    # "i":I
    :cond_0
    array-length v4, v1

    div-int v4, v2, v4

    .line 203
    .local v4, "avgClockSpeed":I
    sget v5, Lcom/termux/x11/R$id;->TVCPUTitle:I

    invoke-virtual {p0, v5}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 204
    .local v5, "tvCPUTitle":Landroid/widget/TextView;
    int-to-float v6, v4

    int-to-float v7, v3

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    int-to-byte v6, v6

    .line 205
    .local v6, "cpuUsagePercent":B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CPU ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method private updateMemoryInfoView()V
    .locals 10

    .line 209
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->activity:Lcom/termux/x11/MainActivity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/termux/x11/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 210
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 211
    .local v1, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 212
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v2, v4

    .line 213
    .local v2, "usedMem":J
    long-to-double v4, v2

    iget-wide v6, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v6

    double-to-int v4, v4

    int-to-byte v4, v4

    .line 215
    .local v4, "memUsagePercent":B
    sget v5, Lcom/termux/x11/R$id;->TVMemoryTitle:I

    invoke-virtual {p0, v5}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 216
    .local v5, "tvMemoryTitle":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->activity:Lcom/termux/x11/MainActivity;

    sget v8, Lcom/termux/x11/R$string;->memory:I

    invoke-virtual {v7, v8}, Lcom/termux/x11/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    sget v6, Lcom/termux/x11/R$id;->TVMemoryInfo:I

    invoke-virtual {p0, v6}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 219
    .local v6, "tvMemoryInfo":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-static {v2, v3, v8}, Lcom/termux/x11/controller/core/StringUtils;->formatBytes(JZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v8, v9}, Lcom/termux/x11/controller/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method


# virtual methods
.method synthetic lambda$new$1$com-termux-x11-controller-winhandler-TaskManagerDialog(Lcom/termux/x11/MainActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Lcom/termux/x11/MainActivity;
    .param p2, "v"    # Landroid/view/View;

    .line 43
    invoke-virtual {p0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->dismiss()V

    .line 44
    sget v0, Lcom/termux/x11/R$string;->new_task:I

    new-instance v1, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;-><init>(Lcom/termux/x11/MainActivity;)V

    const-string v2, "taskmgr.exe"

    invoke-static {p1, v0, v2, v1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->prompt(Landroid/content/Context;ILjava/lang/String;Lcom/termux/x11/controller/core/Callback;)V

    .line 45
    return-void
.end method

.method synthetic lambda$new$2$com-termux-x11-controller-winhandler-TaskManagerDialog(Lcom/termux/x11/MainActivity;Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "activity"    # Lcom/termux/x11/MainActivity;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .line 48
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->timer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 50
    iput-object v1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->timer:Ljava/util/Timer;

    .line 52
    :cond_0
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/termux/x11/MainActivity;->getTermuxProcessorInfo(Ljava/lang/String;)Ljava/util/List;

    .line 53
    sget v0, Lcom/termux/x11/R$id;->LLProcessList:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 54
    .local v0, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 55
    invoke-virtual {p1}, Lcom/termux/x11/MainActivity;->getWinHandler()Lcom/termux/x11/controller/winhandler/WinHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/termux/x11/controller/winhandler/WinHandler;->setOnGetProcessInfoListener(Lcom/termux/x11/controller/winhandler/OnGetProcessInfoListener;)V

    .line 56
    return-void
.end method

.method synthetic lambda$onGetProcessInfo$6$com-termux-x11-controller-winhandler-TaskManagerDialog(Lcom/termux/x11/controller/winhandler/ProcessInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "processInfo"    # Lcom/termux/x11/controller/winhandler/ProcessInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 170
    invoke-direct {p0, p2, p1}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->showListItemMenu(Landroid/view/View;Lcom/termux/x11/controller/winhandler/ProcessInfo;)V

    return-void
.end method

.method synthetic lambda$onGetProcessInfo$7$com-termux-x11-controller-winhandler-TaskManagerDialog(IILcom/termux/x11/controller/winhandler/ProcessInfo;)V
    .locals 7
    .param p1, "numProcesses"    # I
    .param p2, "index"    # I
    .param p3, "processInfo"    # Lcom/termux/x11/controller/winhandler/ProcessInfo;

    .line 153
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    sget v1, Lcom/termux/x11/R$id;->LLProcessList:I

    invoke-virtual {p0, v1}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 155
    .local v1, "container":Landroid/widget/LinearLayout;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->activity:Lcom/termux/x11/MainActivity;

    sget v4, Lcom/termux/x11/R$string;->processes:I

    invoke-virtual {v3, v4}, Lcom/termux/x11/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->setBottomBarText(Ljava/lang/String;)V

    .line 157
    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 158
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 159
    sget v3, Lcom/termux/x11/R$id;->TVEmptyText:I

    invoke-virtual {p0, v3}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    monitor-exit v0

    return-void

    .line 163
    :cond_0
    sget v3, Lcom/termux/x11/R$id;->TVEmptyText:I

    invoke-virtual {p0, v3}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 165
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 166
    .local v3, "childCount":I
    if-ge p2, v3, :cond_1

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->inflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/termux/x11/R$layout;->process_info_list_item:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 167
    .local v2, "itemView":Landroid/view/View;
    :goto_0
    sget v4, Lcom/termux/x11/R$id;->TVName:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p3, Lcom/termux/x11/controller/winhandler/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p3, Lcom/termux/x11/controller/winhandler/ProcessInfo;->wow64Process:Z

    if-eqz v6, :cond_2

    const-string v6, " *32"

    goto :goto_1

    :cond_2
    const-string v6, ""

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    sget v4, Lcom/termux/x11/R$id;->TVPID:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p3, Lcom/termux/x11/controller/winhandler/ProcessInfo;->pid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    sget v4, Lcom/termux/x11/R$id;->TVMemoryUsage:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/termux/x11/controller/winhandler/ProcessInfo;->getFormattedMemoryUsage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    sget v4, Lcom/termux/x11/R$id;->BTMenu:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, p3}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda6;-><init>(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;Lcom/termux/x11/controller/winhandler/ProcessInfo;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    sget v4, Lcom/termux/x11/R$id;->IVIcon:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 173
    .local v4, "ivIcon":Landroid/widget/ImageView;
    if-eqz v4, :cond_3

    .line 174
    sget v5, Lcom/termux/x11/R$drawable;->taskmgr_process:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    :cond_3
    if-lt p2, v3, :cond_4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    :cond_4
    add-int/lit8 v5, p1, -0x1

    if-ne p2, v5, :cond_5

    if-le v3, p1, :cond_5

    .line 179
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_2
    if-lt v5, p1, :cond_5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 181
    .end local v1    # "container":Landroid/widget/LinearLayout;
    .end local v2    # "itemView":Landroid/view/View;
    .end local v3    # "childCount":I
    .end local v4    # "ivIcon":Landroid/widget/ImageView;
    .end local v5    # "i":I
    :cond_5
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$showListItemMenu$4$com-termux-x11-controller-winhandler-TaskManagerDialog(Lcom/termux/x11/controller/winhandler/ProcessInfo;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "processInfo"    # Lcom/termux/x11/controller/winhandler/ProcessInfo;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 104
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 105
    .local v0, "itemId":I
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->activity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->getWinHandler()Lcom/termux/x11/controller/winhandler/WinHandler;

    move-result-object v1

    .line 106
    .local v1, "winHandler":Lcom/termux/x11/controller/winhandler/WinHandler;
    sget v2, Lcom/termux/x11/R$id;->process_affinity:I

    if-ne v0, v2, :cond_0

    .line 107
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->showProcessorAffinityDialog(Lcom/termux/x11/controller/winhandler/ProcessInfo;)V

    goto :goto_0

    .line 108
    :cond_0
    sget v2, Lcom/termux/x11/R$id;->bring_to_front:I

    if-ne v0, v2, :cond_1

    .line 109
    iget-object v2, p1, Lcom/termux/x11/controller/winhandler/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/termux/x11/controller/winhandler/WinHandler;->bringToFront(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->dismiss()V

    goto :goto_0

    .line 111
    :cond_1
    sget v2, Lcom/termux/x11/R$id;->process_end:I

    if-ne v0, v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->activity:Lcom/termux/x11/MainActivity;

    sget v3, Lcom/termux/x11/R$string;->do_you_want_to_end_this_process:I

    new-instance v4, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, p1}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;-><init>(Lcom/termux/x11/controller/winhandler/WinHandler;Lcom/termux/x11/controller/winhandler/ProcessInfo;)V

    invoke-static {v2, v3, v4}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 116
    :cond_2
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method synthetic lambda$showProcessorAffinityDialog$5$com-termux-x11-controller-winhandler-TaskManagerDialog(Lcom/termux/x11/controller/winhandler/ProcessInfo;Lcom/termux/x11/controller/widget/CPUListView;)V
    .locals 3
    .param p1, "processInfo"    # Lcom/termux/x11/controller/winhandler/ProcessInfo;
    .param p2, "cpuListView"    # Lcom/termux/x11/controller/widget/CPUListView;

    .line 128
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->activity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getWinHandler()Lcom/termux/x11/controller/winhandler/WinHandler;

    move-result-object v0

    .line 129
    .local v0, "winHandler":Lcom/termux/x11/controller/winhandler/WinHandler;
    iget v1, p1, Lcom/termux/x11/controller/winhandler/ProcessInfo;->pid:I

    invoke-virtual {p2}, Lcom/termux/x11/controller/widget/CPUListView;->getCheckedCPUList()[Z

    move-result-object v2

    invoke-static {v2}, Lcom/termux/x11/controller/core/ProcessHelper;->getAffinityMask([Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/termux/x11/controller/winhandler/WinHandler;->setProcessAffinity(II)V

    .line 130
    invoke-direct {p0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->update()V

    .line 131
    return-void
.end method

.method public onGetProcessInfo(IILcom/termux/x11/controller/winhandler/ProcessInfo;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "numProcesses"    # I
    .param p3, "processInfo"    # Lcom/termux/x11/controller/winhandler/ProcessInfo;

    .line 152
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->activity:Lcom/termux/x11/MainActivity;

    new-instance v1, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$$ExternalSyntheticLambda1;-><init>(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;IILcom/termux/x11/controller/winhandler/ProcessInfo;)V

    invoke-virtual {v0, v1}, Lcom/termux/x11/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method public show()V
    .locals 7

    .line 137
    invoke-direct {p0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->update()V

    .line 138
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->activity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getWinHandler()Lcom/termux/x11/controller/winhandler/WinHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/termux/x11/controller/winhandler/WinHandler;->setOnGetProcessInfoListener(Lcom/termux/x11/controller/winhandler/OnGetProcessInfoListener;)V

    .line 140
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->timer:Ljava/util/Timer;

    .line 141
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$1;

    invoke-direct {v2, p0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog$1;-><init>(Lcom/termux/x11/controller/winhandler/TaskManagerDialog;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 147
    invoke-super {p0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->show()V

    .line 148
    return-void
.end method
